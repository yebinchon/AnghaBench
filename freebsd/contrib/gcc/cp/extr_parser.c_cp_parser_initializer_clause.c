
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tree ;
struct TYPE_6__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;
typedef int CONSTRUCTOR_ELTS ;


 int CONSTRUCTOR ;
 int CPP_CLOSE_BRACE ;
 int CPP_COMMA ;
 int CPP_OPEN_BRACE ;
 int cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is (int ,int ) ;
 scalar_t__ cp_lexer_next_token_is_not (int ,int ) ;
 int cp_parser_constant_expression (TYPE_1__*,int,int*) ;
 int cp_parser_initializer_list (TYPE_1__*,int*) ;
 int cp_parser_require (TYPE_1__*,int ,char*) ;
 int fold_non_dependent_expr (int ) ;
 int make_node (int ) ;

__attribute__((used)) static tree
cp_parser_initializer_clause (cp_parser* parser, bool* non_constant_p)
{
  tree initializer;


  *non_constant_p = 0;



  if (cp_lexer_next_token_is_not (parser->lexer, CPP_OPEN_BRACE))
    {
      initializer
 = cp_parser_constant_expression (parser,
                              1,
     non_constant_p);
      if (!*non_constant_p)
 initializer = fold_non_dependent_expr (initializer);
    }
  else
    {

      cp_lexer_consume_token (parser->lexer);

      initializer = make_node (CONSTRUCTOR);

      if (cp_lexer_next_token_is_not (parser->lexer, CPP_CLOSE_BRACE))
 {

   CONSTRUCTOR_ELTS (initializer)
     = cp_parser_initializer_list (parser, non_constant_p);

   if (cp_lexer_next_token_is (parser->lexer, CPP_COMMA))
     cp_lexer_consume_token (parser->lexer);
 }

      cp_parser_require (parser, CPP_CLOSE_BRACE, "`}'");
    }

  return initializer;
}
