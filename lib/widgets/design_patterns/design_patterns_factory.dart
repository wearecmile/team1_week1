import 'package:flutter/widgets.dart';

import 'design_patterns.dart';

class DesignPatternsFactoryException implements Exception {
  final String message;

  const DesignPatternsFactoryException(this.message);
}

class DesignPatternsFactory {
  const DesignPatternsFactory._();

  static Widget create(String id) => switch (id) {
        'abstract-factory' => const AbstractFactoryExample(),
        'interpreter' => const InterpreterExample(),
        'state' => const StateExample(),
        _ => throw DesignPatternsFactoryException(
            "Design pattern example with id '$id' could not be created.",
          ),
      };
}
