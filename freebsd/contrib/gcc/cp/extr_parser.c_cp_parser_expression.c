
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
struct TYPE_5__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;


 int CPP_COMMA ;
 int NULL_TREE ;
 int build_x_compound_expr (int ,int ) ;
 int cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is_not (int ,int ) ;
 int cp_parser_assignment_expression (TYPE_1__*,int) ;
 scalar_t__ cp_parser_non_integral_constant_expression (TYPE_1__*,char*) ;
 int error_mark_node ;

__attribute__((used)) static tree
cp_parser_expression (cp_parser* parser, bool cast_p)
{
  tree expression = NULL_TREE;

  while (1)
    {
      tree assignment_expression;


      assignment_expression
 = cp_parser_assignment_expression (parser, cast_p);


      if (!expression)
 expression = assignment_expression;
      else
 expression = build_x_compound_expr (expression,
         assignment_expression);


      if (cp_lexer_next_token_is_not (parser->lexer, CPP_COMMA))
 break;

      cp_lexer_consume_token (parser->lexer);

      if (cp_parser_non_integral_constant_expression (parser,
            "a comma operator"))
 expression = error_mark_node;
    }

  return expression;
}
