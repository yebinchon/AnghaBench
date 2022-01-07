
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int c_parser ;
struct TYPE_2__ {scalar_t__ value; } ;


 int CPP_CLOSE_PAREN ;
 int CPP_COLON ;
 int CPP_LESS ;
 int CPP_NAME ;
 int CPP_OPEN_BRACE ;
 scalar_t__ NULL_TREE ;
 int RID_AT_END ;
 int RID_AT_IMPLEMENTATION ;
 int RID_AT_INTERFACE ;
 int c_parser_consume_token (int *) ;
 int c_parser_error (int *,char*) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 scalar_t__ c_parser_next_token_is_keyword (int *,int ) ;
 scalar_t__ c_parser_next_token_is_not (int *,int ) ;
 int c_parser_objc_class_instance_variables (int *) ;
 int c_parser_objc_interfacedecllist (int *) ;
 scalar_t__ c_parser_objc_protocol_refs (int *) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 int c_parser_require_keyword (int *,int ,char*) ;
 int c_parser_skip_until_found (int *,int ,char*) ;
 int error (char*) ;
 int gcc_unreachable () ;
 int objc_continue_implementation () ;
 int objc_continue_interface () ;
 int objc_finish_interface () ;
 int objc_start_category_implementation (scalar_t__,scalar_t__) ;
 int objc_start_category_interface (scalar_t__,scalar_t__,scalar_t__) ;
 int objc_start_class_implementation (scalar_t__,scalar_t__) ;
 int objc_start_class_interface (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void

c_parser_objc_class_definition (c_parser *parser, tree prefix_attrs)
{
  bool iface_p;
  tree id1;
  tree superclass;
  if (c_parser_next_token_is_keyword (parser, RID_AT_INTERFACE))
    iface_p = 1;
  else if (c_parser_next_token_is_keyword (parser, RID_AT_IMPLEMENTATION))

    {
      if (prefix_attrs)
 {
   error ("attributes may not be specified on an implementation");
   prefix_attrs = NULL_TREE;
 }
      iface_p = 0;
    }

  else
    gcc_unreachable ();
  c_parser_consume_token (parser);
  if (c_parser_next_token_is_not (parser, CPP_NAME))
    {

      tree id2 = NULL_TREE;
      tree proto = NULL_TREE;
      c_parser_consume_token (parser);

      if (c_parser_next_token_is_not (parser, CPP_CLOSE_PAREN))
 {
    if (c_parser_next_token_is_not (parser, CPP_NAME))
     {
       c_parser_error (parser, "expected identifier");
       c_parser_skip_until_found (parser, CPP_CLOSE_PAREN, ((void*)0));
       return;
     }
    id2 = c_parser_peek_token (parser)->value;
    c_parser_consume_token (parser);
 }

      c_parser_skip_until_found (parser, CPP_CLOSE_PAREN, "expected %<)%>");
      if (!iface_p)
 {

   if (id2 == NULL_TREE)
     {
       error ("cannot implement anonymous category");
       return;
     }

   objc_start_category_implementation (id1, id2);
   return;
 }
      if (c_parser_next_token_is (parser, CPP_LESS))
 proto = c_parser_objc_protocol_refs (parser);

      if (prefix_attrs)
 error ("attributes may not be specified on a category");

      objc_start_category_interface (id1, id2, proto);

      c_parser_objc_interfacedecllist (parser);
      c_parser_require_keyword (parser, RID_AT_END, "expected %<@end%>");
      objc_finish_interface ();
      return;
    }
  if (c_parser_next_token_is (parser, CPP_COLON))
    {
      c_parser_consume_token (parser);
      if (c_parser_next_token_is_not (parser, CPP_NAME))
 {
   c_parser_error (parser, "expected identifier");
   return;
 }
      superclass = c_parser_peek_token (parser)->value;
      c_parser_consume_token (parser);
    }
  else
    superclass = NULL_TREE;
  if (iface_p)
    {
      tree proto = NULL_TREE;
      if (c_parser_next_token_is (parser, CPP_LESS))
 proto = c_parser_objc_protocol_refs (parser);

      objc_start_class_interface (id1, superclass, proto, prefix_attrs);
    }
  else
    objc_start_class_implementation (id1, superclass);
  if (c_parser_next_token_is (parser, CPP_OPEN_BRACE))
    c_parser_objc_class_instance_variables (parser);
  if (iface_p)
    {
      objc_continue_interface ();

      c_parser_objc_interfacedecllist (parser);
      c_parser_require_keyword (parser, RID_AT_END, "expected %<@end%>");
      objc_finish_interface ();
    }
  else
    {
      objc_continue_implementation ();
      return;
    }
}
