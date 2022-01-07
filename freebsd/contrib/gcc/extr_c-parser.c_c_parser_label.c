
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int location_t ;
typedef int c_parser ;
struct TYPE_4__ {scalar_t__ value; } ;
struct TYPE_3__ {int location; scalar_t__ value; } ;


 int CPP_COLON ;
 int CPP_ELLIPSIS ;
 int CPP_NAME ;
 int LABEL_EXPR ;
 scalar_t__ NULL_TREE ;
 int RID_CASE ;
 int RID_DEFAULT ;
 int SET_EXPR_LOCATION (scalar_t__,int ) ;
 scalar_t__ add_stmt (int ) ;
 int build_stmt (int ,scalar_t__) ;
 scalar_t__ c_parser_attributes (int *) ;
 int c_parser_consume_token (int *) ;
 int c_parser_error (int *,char*) ;
 TYPE_2__ c_parser_expr_no_commas (int *,int *) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 scalar_t__ c_parser_next_token_is_keyword (int *,int ) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 scalar_t__ c_parser_require (int *,int ,char*) ;
 int decl_attributes (scalar_t__*,scalar_t__,int ) ;
 scalar_t__ define_label (int ,scalar_t__) ;
 scalar_t__ do_case (scalar_t__,scalar_t__) ;
 int gcc_assert (scalar_t__) ;

__attribute__((used)) static void
c_parser_label (c_parser *parser)
{
  location_t loc1 = c_parser_peek_token (parser)->location;
  tree label = NULL_TREE;
  if (c_parser_next_token_is_keyword (parser, RID_CASE))
    {
      tree exp1, exp2;
      c_parser_consume_token (parser);
      exp1 = c_parser_expr_no_commas (parser, ((void*)0)).value;
      if (c_parser_next_token_is (parser, CPP_COLON))
 {
   c_parser_consume_token (parser);
   label = do_case (exp1, NULL_TREE);
 }
      else if (c_parser_next_token_is (parser, CPP_ELLIPSIS))
 {
   c_parser_consume_token (parser);
   exp2 = c_parser_expr_no_commas (parser, ((void*)0)).value;
   if (c_parser_require (parser, CPP_COLON, "expected %<:%>"))
     label = do_case (exp1, exp2);
 }
      else
 c_parser_error (parser, "expected %<:%> or %<...%>");
    }
  else if (c_parser_next_token_is_keyword (parser, RID_DEFAULT))
    {
      c_parser_consume_token (parser);
      if (c_parser_require (parser, CPP_COLON, "expected %<:%>"))
 label = do_case (NULL_TREE, NULL_TREE);
    }
  else
    {
      tree name = c_parser_peek_token (parser)->value;
      tree tlab;
      location_t loc2;
      tree attrs;
      gcc_assert (c_parser_next_token_is (parser, CPP_NAME));
      c_parser_consume_token (parser);
      gcc_assert (c_parser_next_token_is (parser, CPP_COLON));
      loc2 = c_parser_peek_token (parser)->location;
      c_parser_consume_token (parser);
      attrs = c_parser_attributes (parser);
      tlab = define_label (loc2, name);
      if (tlab)
 {
   decl_attributes (&tlab, attrs, 0);
   label = add_stmt (build_stmt (LABEL_EXPR, tlab));
 }
    }
  if (label)
    SET_EXPR_LOCATION (label, loc1);
}
