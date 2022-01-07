
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_4__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;
typedef scalar_t__ TREE_CHAIN ;


 int CPP_COMMA ;
 scalar_t__ DECL_CONSTRUCTOR_P (int ) ;
 scalar_t__ NULL_TREE ;
 int cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is_not (int ,int ) ;
 scalar_t__ cp_parser_mem_initializer (TYPE_1__*) ;
 int current_function_decl ;
 int error (char*) ;
 scalar_t__ error_mark_node ;
 int finish_mem_initializers (scalar_t__) ;

__attribute__((used)) static void
cp_parser_mem_initializer_list (cp_parser* parser)
{
  tree mem_initializer_list = NULL_TREE;



  if (!DECL_CONSTRUCTOR_P (current_function_decl))
    error ("only constructors take base initializers");


  while (1)
    {
      tree mem_initializer;


      mem_initializer = cp_parser_mem_initializer (parser);

      if (mem_initializer != error_mark_node)
 {
   TREE_CHAIN (mem_initializer) = mem_initializer_list;
   mem_initializer_list = mem_initializer;
 }

      if (cp_lexer_next_token_is_not (parser->lexer, CPP_COMMA))
 break;

      cp_lexer_consume_token (parser->lexer);
    }


  if (DECL_CONSTRUCTOR_P (current_function_decl))
    finish_mem_initializers (mem_initializer_list);
}
