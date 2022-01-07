
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;


 int CPP_COLON ;
 scalar_t__ DECL_CONSTRUCTOR_P (int ) ;
 int NULL_TREE ;
 int cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is_not (int ,int ) ;
 int cp_parser_mem_initializer_list (TYPE_1__*) ;
 int current_function_decl ;
 int finish_mem_initializers (int ) ;

__attribute__((used)) static bool
cp_parser_ctor_initializer_opt (cp_parser* parser)
{


  if (cp_lexer_next_token_is_not (parser->lexer, CPP_COLON))
    {

      if (DECL_CONSTRUCTOR_P (current_function_decl))
 finish_mem_initializers (NULL_TREE);

      return 0;
    }


  cp_lexer_consume_token (parser->lexer);

  cp_parser_mem_initializer_list (parser);

  return 1;
}
