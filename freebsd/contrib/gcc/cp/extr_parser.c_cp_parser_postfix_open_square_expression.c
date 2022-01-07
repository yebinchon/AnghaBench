
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int tree ;
struct TYPE_7__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;


 int CPP_CLOSE_SQUARE ;
 int cp_lexer_consume_token (int ) ;
 int cp_parser_constant_expression (TYPE_1__*,int,int *) ;
 int cp_parser_expression (TYPE_1__*,int) ;
 scalar_t__ cp_parser_non_integral_constant_expression (TYPE_1__*,char*) ;
 int cp_parser_require (TYPE_1__*,int ,char*) ;
 int error_mark_node ;
 int grok_array_decl (int ,int ) ;

__attribute__((used)) static tree
cp_parser_postfix_open_square_expression (cp_parser *parser,
       tree postfix_expression,
       bool for_offsetof)
{
  tree index;


  cp_lexer_consume_token (parser->lexer);
  if (for_offsetof)
    index = cp_parser_constant_expression (parser, 0, ((void*)0));
  else
    index = cp_parser_expression (parser, 0);


  cp_parser_require (parser, CPP_CLOSE_SQUARE, "`]'");


  postfix_expression = grok_array_decl (postfix_expression, index);



  if (!for_offsetof
      && (cp_parser_non_integral_constant_expression
   (parser, "an array reference")))
    postfix_expression = error_mark_node;

  return postfix_expression;
}
