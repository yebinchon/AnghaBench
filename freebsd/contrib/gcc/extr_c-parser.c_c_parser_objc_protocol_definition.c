
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef int c_parser ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {int value; } ;


 scalar_t__ CPP_COMMA ;
 scalar_t__ CPP_LESS ;
 int CPP_NAME ;
 scalar_t__ CPP_SEMICOLON ;
 int NULL_TREE ;
 int RID_AT_END ;
 int RID_AT_PROTOCOL ;
 int build_tree_list (int ,int ) ;
 int c_parser_consume_token (int *) ;
 int c_parser_error (int *,char*) ;
 scalar_t__ c_parser_next_token_is (int *,scalar_t__) ;
 int c_parser_next_token_is_keyword (int *,int ) ;
 scalar_t__ c_parser_next_token_is_not (int *,int ) ;
 int c_parser_objc_interfacedecllist (int *) ;
 int c_parser_objc_protocol_refs (int *) ;
 TYPE_2__* c_parser_peek_2nd_token (int *) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 int c_parser_require_keyword (int *,int ,char*) ;
 int c_parser_skip_until_found (int *,scalar_t__,char*) ;
 int chainon (int ,int ) ;
 int gcc_assert (int ) ;
 int objc_declare_protocols (int ,int ) ;
 int objc_finish_interface () ;
 int objc_pq_context ;
 int objc_start_protocol (int ,int ,int ) ;

__attribute__((used)) static void

c_parser_objc_protocol_definition (c_parser *parser, tree attributes)
{
  gcc_assert (c_parser_next_token_is_keyword (parser, RID_AT_PROTOCOL));
  c_parser_consume_token (parser);
  if (c_parser_next_token_is_not (parser, CPP_NAME))
    {
      c_parser_error (parser, "expected identifier");
      return;
    }
  if (c_parser_peek_2nd_token (parser)->type == CPP_COMMA
      || c_parser_peek_2nd_token (parser)->type == CPP_SEMICOLON)
    {
      tree list = NULL_TREE;


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

      objc_declare_protocols (list, attributes);
    }
  else
    {
      tree id = c_parser_peek_token (parser)->value;
      tree proto = NULL_TREE;
      c_parser_consume_token (parser);
      if (c_parser_next_token_is (parser, CPP_LESS))
 proto = c_parser_objc_protocol_refs (parser);
      objc_pq_context = 1;

      objc_start_protocol (id, proto, attributes);

      c_parser_objc_interfacedecllist (parser);
      c_parser_require_keyword (parser, RID_AT_END, "expected %<@end%>");
      objc_pq_context = 0;
      objc_finish_interface ();
    }
}
