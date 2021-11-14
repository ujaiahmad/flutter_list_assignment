import 'package:flutter/material.dart';

void main() {
  runApp(fruit());
}

class fruit extends StatelessWidget {
  const fruit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Of Fruits',
      home: fruitList(),
    );
  }
}

class Fruits {
  var fruitlist1 = ['Apple', 'Orange', 'Rambutan', 'Durian'];
}

class fruitList extends StatefulWidget {
  const fruitList({Key? key}) : super(key: key);

  @override
  _fruitListState createState() => _fruitListState();
}

class _fruitListState extends State<fruitList> {
  var user_fruit = '';
  bool check = true;
  var fruit_image = 'web/pictures/apple.png';
  Fruits fruit = Fruits();

  fruit_choose(fruit1) {
    setState(() {
      user_fruit = fruit1;
      if (fruit1 == 'Apple') {
        fruit_image = 'web/pictures/apple.png';
      } else if (fruit1 == 'Orange') {
        fruit_image = 'web/pictures/orange.png';
      } else if (fruit1 == 'Rambutan') {
        fruit_image = 'web/pictures/rambutan.png';
      } else if (fruit1 == 'Durian') {
        fruit_image = 'web/pictures/durian.png';
      }
      check = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Fruits',
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: const Text(
                'Choose your Fruits',
                style: TextStyle(fontSize: 35),
              ),
              margin: EdgeInsets.all(10),
            ),
            ElevatedButton(
              onPressed: () {
                fruit_choose(fruit.fruitlist1[0]);
              },
              child: Text('Fruit 1'),
            ),
            ElevatedButton(
                onPressed: () {
                  fruit_choose(fruit.fruitlist1[1]);
                },
                child: Text('Fruit 2')),
            ElevatedButton(
                onPressed: () {
                  fruit_choose(fruit.fruitlist1[2]);
                },
                child: Text('Fruit 3')),
            ElevatedButton(
                onPressed: () {
                  fruit_choose(fruit.fruitlist1[3]);
                },
                child: Text('Fruit 4')),
            Text('You Choose :'),
            Text(user_fruit),
            SizedBox(
              height: 10,
            ),
            check
                ? Text('Your Fruit will be displayed here')
                : Image(
                    image: AssetImage(fruit_image),
                    width: 100.0,
                    height: 100.0,
                  )
          ],
        ),
      ),
    );
  }
}
