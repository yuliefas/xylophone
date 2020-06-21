import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int numb) {
    final player = AudioCache();
    player.play('note$numb.wav');
  }

  Expanded buildKey({Color color, int numb}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(numb);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, numb: 1),
              buildKey(color: Colors.orange, numb: 2),
              buildKey(color: Colors.yellowAccent, numb: 3),
              buildKey(color: Colors.green, numb: 4),
              buildKey(color: Colors.teal, numb: 5),
              buildKey(color: Colors.blue, numb: 6),
              buildKey(color: Colors.purple, numb: 7),
            ],
          ),
        ),
      ),
    );
  }
}
