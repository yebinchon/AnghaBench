
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int c_parser ;


 int CPP_OPEN_BRACE ;
 int CPP_SEMICOLON ;
 int NULL_TREE ;
 int add_stmt (int ) ;
 int c_parser_compound_statement (int *) ;
 int c_parser_consume_token (int *) ;
 int c_parser_error (int *,char*) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 int c_parser_objc_method_decl (int *) ;
 int c_parser_objc_method_type (int *) ;
 int current_function_decl ;
 int objc_finish_method_definition (int ) ;
 int objc_method_attributes ;
 int objc_pq_context ;
 int objc_set_method_type (int) ;
 int objc_start_method_definition (int ,int ) ;
 scalar_t__ pedantic ;
 int pedwarn (char*) ;

__attribute__((used)) static void
c_parser_objc_method_definition (c_parser *parser)
{
  enum tree_code type = c_parser_objc_method_type (parser);
  tree decl;
  objc_set_method_type (type);
  objc_pq_context = 1;
  decl = c_parser_objc_method_decl (parser);
  if (c_parser_next_token_is (parser, CPP_SEMICOLON))
    {
      c_parser_consume_token (parser);
      if (pedantic)
 pedwarn ("extra semicolon in method definition specified");
    }
  if (!c_parser_next_token_is (parser, CPP_OPEN_BRACE))
    {
      c_parser_error (parser, "expected %<{%>");
      return;
    }
  objc_pq_context = 0;

  objc_start_method_definition (decl, objc_method_attributes);
  objc_method_attributes = NULL_TREE;

  add_stmt (c_parser_compound_statement (parser));
  objc_finish_method_definition (current_function_decl);
}
