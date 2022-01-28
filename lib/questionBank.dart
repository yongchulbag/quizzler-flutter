import 'questions.dart';

class QuizBank {
  int _questionNumber = 0;

  List<QuestionForm> _questionBank = [
    QuestionForm(t: 'Some cats are actually allergic to humans', a: true),
    QuestionForm(
        t: 'You can lead a cow down stairs but not up stairs.', a: false),
    QuestionForm(
        t: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    QuestionForm(t: 'A slug\'s blood is green.', a: true),
    QuestionForm(
        t: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', a: true),
    QuestionForm(t: 'It is illegal to pee in the Ocean in Portugal.', a: true),
    QuestionForm(
        t: 'No piece of square dry paper can be folded in half more than 7 times.',
        a: false),
    QuestionForm(
        t: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        a: true),
    QuestionForm(
        t: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        a: false),
    QuestionForm(
        t: 'The total surface area of two human lungs is approximately 70 square metres.',
        a: true),
    QuestionForm(t: 'Google was originally called \"Backrub\".', a: true),
    QuestionForm(
        t: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        a: true),
    QuestionForm(
        t: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < (_questionBank.length - 1)) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].qText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].qAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
