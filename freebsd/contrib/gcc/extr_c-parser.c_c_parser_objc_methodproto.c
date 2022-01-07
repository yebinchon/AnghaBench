
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int c_parser ;


 int CPP_SEMICOLON ;
 int NULL_TREE ;
 int RID_AT_OPTIONAL ;
 int RID_AT_REQUIRED ;
 int c_parser_consume_token (int *) ;
 scalar_t__ c_parser_next_token_is_keyword (int *,int ) ;
 int c_parser_objc_method_decl (int *) ;
 int c_parser_objc_method_type (int *) ;
 int c_parser_skip_until_found (int *,int ,char*) ;
 int objc_add_method_declaration (int ,int ) ;
 int objc_method_attributes ;
 int objc_pq_context ;
 int objc_set_method_opt (int) ;
 int objc_set_method_type (int) ;

__attribute__((used)) static void
c_parser_objc_methodproto (c_parser *parser)
{

  enum tree_code type;
  tree decl;

  if (c_parser_next_token_is_keyword (parser, RID_AT_REQUIRED))
    {
      objc_set_method_opt (0);
      c_parser_consume_token (parser);
      return;
    }
  if (c_parser_next_token_is_keyword (parser, RID_AT_OPTIONAL))
    {
      objc_set_method_opt (1);
      c_parser_consume_token (parser);
      return;
    }


  type = c_parser_objc_method_type (parser);
  objc_set_method_type (type);

  objc_pq_context = 1;
  decl = c_parser_objc_method_decl (parser);

  objc_pq_context = 0;

  objc_add_method_declaration (decl, objc_method_attributes);
  objc_method_attributes = NULL_TREE;

  c_parser_skip_until_found (parser, CPP_SEMICOLON, "expected %<;%>");
}
