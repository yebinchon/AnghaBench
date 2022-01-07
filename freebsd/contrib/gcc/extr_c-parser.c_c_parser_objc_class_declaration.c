
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef int c_parser ;
struct TYPE_2__ {int value; } ;


 int CPP_COMMA ;
 int CPP_NAME ;
 int CPP_SEMICOLON ;
 int NULL_TREE ;
 int RID_AT_CLASS ;
 int build_tree_list (int ,int ) ;
 int c_parser_consume_token (int *) ;
 int c_parser_error (int *,char*) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 int c_parser_next_token_is_keyword (int *,int ) ;
 scalar_t__ c_parser_next_token_is_not (int *,int ) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 int c_parser_skip_until_found (int *,int ,char*) ;
 int chainon (int ,int ) ;
 int gcc_assert (int ) ;
 int objc_declare_class (int ) ;

__attribute__((used)) static void
c_parser_objc_class_declaration (c_parser *parser)
{
  tree list = NULL_TREE;
  gcc_assert (c_parser_next_token_is_keyword (parser, RID_AT_CLASS));
  c_parser_consume_token (parser);


  while (1)
    {
      tree id;
      if (c_parser_next_token_is_not (parser, CPP_NAME))
 {
   c_parser_error (parser, "expected identifier");
   break;
 }
      id = c_parser_peek_token (parser)->value;
      list = chainon (list, build_tree_list (NULL_TREE, id));
      c_parser_consume_token (parser);
      if (c_parser_next_token_is (parser, CPP_COMMA))
 c_parser_consume_token (parser);
      else
 break;
    }
  c_parser_skip_until_found (parser, CPP_SEMICOLON, "expected %<;%>");
  objc_declare_class (list);
}
