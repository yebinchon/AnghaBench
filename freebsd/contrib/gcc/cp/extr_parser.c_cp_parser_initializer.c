
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tree ;
struct TYPE_8__ {scalar_t__ type; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_9__ {int lexer; } ;
typedef TYPE_2__ cp_parser ;


 scalar_t__ CPP_EQ ;
 scalar_t__ CPP_OPEN_PAREN ;
 int cp_lexer_consume_token (int ) ;
 TYPE_1__* cp_lexer_peek_token (int ) ;
 int cp_parser_error (TYPE_2__*,char*) ;
 int cp_parser_initializer_clause (TYPE_2__*,int*) ;
 int cp_parser_parenthesized_expression_list (TYPE_2__*,int,int,int*) ;
 int error_mark_node ;

__attribute__((used)) static tree
cp_parser_initializer (cp_parser* parser, bool* is_parenthesized_init,
         bool* non_constant_p)
{
  cp_token *token;
  tree init;


  token = cp_lexer_peek_token (parser->lexer);



  *is_parenthesized_init = (token->type == CPP_OPEN_PAREN);

  *non_constant_p = 0;

  if (token->type == CPP_EQ)
    {

      cp_lexer_consume_token (parser->lexer);

      init = cp_parser_initializer_clause (parser, non_constant_p);
    }
  else if (token->type == CPP_OPEN_PAREN)
    init = cp_parser_parenthesized_expression_list (parser, 0,
                     0,
          non_constant_p);
  else
    {

      cp_parser_error (parser, "expected initializer");
      init = error_mark_node;
    }

  return init;
}
