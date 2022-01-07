
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_5__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;


 int CPP_CLOSE_BRACE ;
 int CPP_SEMICOLON ;
 scalar_t__ NULL_TREE ;
 scalar_t__ cp_lexer_next_token_is (int ,int ) ;
 scalar_t__ cp_lexer_next_token_is_not (int ,int ) ;
 int cp_parser_consume_semicolon_at_end_of_statement (TYPE_1__*) ;
 scalar_t__ cp_parser_expression (TYPE_1__*,int) ;
 scalar_t__ finish_expr_stmt (scalar_t__) ;
 int finish_stmt () ;
 scalar_t__ finish_stmt_expr_expr (scalar_t__,scalar_t__) ;

__attribute__((used)) static tree
cp_parser_expression_statement (cp_parser* parser, tree in_statement_expr)
{
  tree statement = NULL_TREE;



  if (cp_lexer_next_token_is_not (parser->lexer, CPP_SEMICOLON))
    statement = cp_parser_expression (parser, 0);


  cp_parser_consume_semicolon_at_end_of_statement (parser);

  if (in_statement_expr
      && cp_lexer_next_token_is (parser->lexer, CPP_CLOSE_BRACE))


    statement = finish_stmt_expr_expr (statement, in_statement_expr);
  else if (statement)
    statement = finish_expr_stmt (statement);
  else
    finish_stmt ();

  return statement;
}
