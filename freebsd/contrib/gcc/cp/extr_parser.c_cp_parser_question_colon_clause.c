
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int tree ;
struct TYPE_7__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;


 int CPP_COLON ;
 int NULL_TREE ;
 int build_x_conditional_expr (int ,int ,int ) ;
 int cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is (int ,int ) ;
 scalar_t__ cp_parser_allow_gnu_extensions_p (TYPE_1__*) ;
 int cp_parser_assignment_expression (TYPE_1__*,int) ;
 int cp_parser_expression (TYPE_1__*,int) ;
 int cp_parser_require (TYPE_1__*,int ,char*) ;

__attribute__((used)) static tree
cp_parser_question_colon_clause (cp_parser* parser, tree logical_or_expr)
{
  tree expr;
  tree assignment_expr;


  cp_lexer_consume_token (parser->lexer);
  if (cp_parser_allow_gnu_extensions_p (parser)
      && cp_lexer_next_token_is (parser->lexer, CPP_COLON))

    expr = NULL_TREE;
  else

    expr = cp_parser_expression (parser, 0);


  cp_parser_require (parser, CPP_COLON, "`:'");

  assignment_expr = cp_parser_assignment_expression (parser, 0);


  return build_x_conditional_expr (logical_or_expr,
       expr,
       assignment_expr);
}
