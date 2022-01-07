
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * tree ;
struct c_parm {int dummy; } ;
typedef int c_parser ;
struct TYPE_2__ {int * value; } ;


 int CPP_CLOSE_PAREN ;
 int CPP_COLON ;
 int CPP_COMMA ;
 int CPP_ELLIPSIS ;
 int CPP_NAME ;
 int CPP_OPEN_PAREN ;
 scalar_t__ NULL_TREE ;
 int RID_ATTRIBUTE ;
 int TREE_LIST ;
 int * build_tree_list (scalar_t__,int ) ;
 scalar_t__ c_parser_attributes (int *) ;
 int c_parser_consume_token (int *) ;
 int c_parser_error (int *,char*) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 scalar_t__ c_parser_next_token_is_keyword (int *,int ) ;
 scalar_t__ c_parser_next_token_is_not (int *,int ) ;
 int * c_parser_objc_selector (int *) ;
 int * c_parser_objc_type_name (int *) ;
 struct c_parm* c_parser_parameter_declaration (int *,scalar_t__) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 int c_parser_require (int *,int ,char*) ;
 int c_parser_skip_until_found (int *,int ,char*) ;
 int * chainon (int *,int *) ;
 int error (char*) ;
 int * error_mark_node ;
 int gcc_assert (int) ;
 int grokparm (struct c_parm*) ;
 int * make_node (int ) ;
 int * objc_build_keyword_decl (int *,int *,int *,int *) ;
 int * objc_build_method_signature (int *,int *,int *,int) ;
 scalar_t__ objc_method_attributes ;

__attribute__((used)) static tree
c_parser_objc_method_decl (c_parser *parser)
{
  tree type = NULL_TREE;
  tree sel;
  tree parms = NULL_TREE;
  bool ellipsis = 0;

  if (c_parser_next_token_is (parser, CPP_OPEN_PAREN))
    {
      c_parser_consume_token (parser);
      type = c_parser_objc_type_name (parser);
      c_parser_skip_until_found (parser, CPP_CLOSE_PAREN, "expected %<)%>");
    }
  sel = c_parser_objc_selector (parser);



  if (!sel || c_parser_next_token_is (parser, CPP_COLON))
    {
      tree tsel = sel;
      tree list = NULL_TREE;
      while (1)
 {

   tree attr = NULL_TREE;
   tree atype = NULL_TREE, id, keyworddecl;
   if (!c_parser_require (parser, CPP_COLON, "expected %<:%>"))
     break;
   if (c_parser_next_token_is (parser, CPP_OPEN_PAREN))
     {
       c_parser_consume_token (parser);
       atype = c_parser_objc_type_name (parser);
       c_parser_skip_until_found (parser, CPP_CLOSE_PAREN,
      "expected %<)%>");
     }

   if (c_parser_next_token_is_keyword (parser, RID_ATTRIBUTE))
     attr = c_parser_attributes (parser);

   if (c_parser_next_token_is_not (parser, CPP_NAME))
     {
       c_parser_error (parser, "expected identifier");
       return error_mark_node;
     }
   id = c_parser_peek_token (parser)->value;
   c_parser_consume_token (parser);

   keyworddecl = objc_build_keyword_decl (tsel, atype, id, attr);
   list = chainon (list, keyworddecl);
   tsel = c_parser_objc_selector (parser);
   if (!tsel && c_parser_next_token_is_not (parser, CPP_COLON))
     break;
 }

      if (c_parser_next_token_is_keyword (parser, RID_ATTRIBUTE))
 objc_method_attributes = c_parser_attributes (parser);




      parms = make_node (TREE_LIST);
      while (c_parser_next_token_is (parser, CPP_COMMA))
 {
   struct c_parm *parm;
   c_parser_consume_token (parser);
   if (c_parser_next_token_is (parser, CPP_ELLIPSIS))
     {
       ellipsis = 1;
       c_parser_consume_token (parser);

       if (objc_method_attributes)
  error ("method attributes must be specified at the end only");
       if (c_parser_next_token_is_keyword (parser, RID_ATTRIBUTE))
  objc_method_attributes = c_parser_attributes (parser);

       break;
     }
   parm = c_parser_parameter_declaration (parser, NULL_TREE);
   if (parm == ((void*)0))
     break;
   parms = chainon (parms,
      build_tree_list (NULL_TREE, grokparm (parm)));
 }
      sel = list;
    }

  else
    {
      gcc_assert (objc_method_attributes == NULL_TREE);
      if (c_parser_next_token_is_keyword (parser, RID_ATTRIBUTE))
 objc_method_attributes = c_parser_attributes (parser);
    }


  if (sel == ((void*)0))
    {
      c_parser_error (parser, "objective-c method declaration is expected");
      return error_mark_node;
    }

  return objc_build_method_signature (type, sel, parms, ellipsis);
}
