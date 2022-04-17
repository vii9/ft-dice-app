import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Diceep'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: DiceepPage(),
    ),
  ));
}

class DiceepPage extends StatefulWidget {
  const DiceepPage({Key? key}) : super(key: key);

  @override
  State<DiceepPage> createState() => _DiceepPageState();
}

class _DiceepPageState extends State<DiceepPage> {
  int leftDiceNumber = 3;
  @override
  Widget build(BuildContext context) {
    int rightDiceNumber = 5;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = 4;
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                print('right button got pressed!');
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          )
        ],
      ),
    );
  }
}

/*
  //#stateFull => data change
  //#stateLess => static layout

class DiceepPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    int leftDiceNumber = 3;
    int rightDiceNumber = 5;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                print('left button got pressed!');
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                print('right button got pressed!');
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          )
        ],
      ),
    );
  }
}
*/
