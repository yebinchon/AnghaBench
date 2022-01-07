
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int location_t ;
typedef int c_parser ;
struct TYPE_11__ {scalar_t__ value; } ;
struct TYPE_10__ {scalar_t__ value; } ;
struct TYPE_9__ {int value; } ;
struct TYPE_8__ {int location; } ;
struct TYPE_7__ {scalar_t__ type; scalar_t__ keyword; } ;


 int CPP_CLOSE_PAREN ;
 scalar_t__ CPP_KEYWORD ;
 int CPP_OPEN_PAREN ;
 int CPP_SEMICOLON ;
 scalar_t__ EXPR_P (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ RID_EXTENSION ;
 scalar_t__ RID_FOR ;
 scalar_t__ RID_IN ;
 int SET_EXPR_LOCATION (scalar_t__,int ) ;
 int add_stmt (int ) ;
 scalar_t__ build_tree_list (scalar_t__,int ) ;
 scalar_t__ c_begin_compound_stmt (int ) ;
 scalar_t__ c_break_label ;
 scalar_t__ c_cont_label ;
 int c_end_compound_stmt (scalar_t__,int ) ;
 int c_finish_expr_stmt (scalar_t__) ;
 int c_finish_loop (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 scalar_t__ c_objc_common_truthvalue_conversion (scalar_t__) ;
 scalar_t__ c_parser_attributes (int *) ;
 scalar_t__ c_parser_c99_block_statement (int *) ;
 int c_parser_consume_token (int *) ;
 int c_parser_declaration_or_fndef (int *,int,int,int,int,scalar_t__*) ;
 TYPE_6__ c_parser_expression (int *) ;
 TYPE_5__ c_parser_expression_conv (int *) ;
 TYPE_4__ c_parser_initializer (int *) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 scalar_t__ c_parser_next_token_is_keyword (int *,scalar_t__) ;
 scalar_t__ c_parser_next_token_starts_declspecs (int *) ;
 TYPE_1__* c_parser_peek_2nd_token (int *) ;
 TYPE_2__* c_parser_peek_token (int *) ;
 scalar_t__ c_parser_require (int *,int ,char*) ;
 int c_parser_skip_until_found (int *,int ,char*) ;
 scalar_t__ c_process_expr_stmt (scalar_t__) ;
 scalar_t__ c_token_starts_declspecs (TYPE_1__*) ;
 int check_for_loop_decls () ;
 int disable_extension_diagnostics () ;
 scalar_t__ error_mark_node ;
 scalar_t__ finish_parse_foreach_header (int *,scalar_t__) ;
 int flag_isoc99 ;
 int gcc_assert (scalar_t__) ;
 scalar_t__ objc_foreach_context ;
 int restore_extension_diagnostics (int) ;

__attribute__((used)) static void
c_parser_for_statement (c_parser *parser)
{

  tree block, cond, incr, save_break, save_cont, body, attrs;

  location_t loc;

  bool foreach_p = 0;
  gcc_assert (c_parser_next_token_is_keyword (parser, RID_FOR));
  loc = c_parser_peek_token (parser)->location;
  c_parser_consume_token (parser);

  attrs = c_parser_attributes (parser);

  block = c_begin_compound_stmt (flag_isoc99);
  if (c_parser_require (parser, CPP_OPEN_PAREN, "expected %<(%>"))
    {

      if (c_parser_next_token_is (parser, CPP_SEMICOLON))
 {
   c_parser_consume_token (parser);
   c_finish_expr_stmt (NULL_TREE);
 }
      else if (c_parser_next_token_starts_declspecs (parser))
 {

   cond = NULL_TREE;
   c_parser_declaration_or_fndef (parser, 1, 1, 1, 1, &cond);

   if (c_parser_next_token_is_keyword (parser, RID_IN) && cond)
     {
       cond = finish_parse_foreach_header (parser, cond);
       foreach_p = 1;
     }
   else
     check_for_loop_decls ();

 }
      else if (c_parser_next_token_is_keyword (parser, RID_EXTENSION))
 {




   while (c_parser_peek_2nd_token (parser)->type == CPP_KEYWORD
   && (c_parser_peek_2nd_token (parser)->keyword
       == RID_EXTENSION))
     c_parser_consume_token (parser);
   if (c_token_starts_declspecs (c_parser_peek_2nd_token (parser)))
     {
       int ext;
       ext = disable_extension_diagnostics ();
       c_parser_consume_token (parser);

       cond = NULL_TREE;
       c_parser_declaration_or_fndef (parser, 1, 1, 1, 1, &cond);
       restore_extension_diagnostics (ext);

       if (c_parser_next_token_is_keyword (parser, RID_IN) && cond)
         {
    cond = finish_parse_foreach_header (parser, cond);
           foreach_p = 1;
         }
       else
  check_for_loop_decls ();

     }
   else
     goto init_expr;
 }
      else
 {
 init_expr:

   cond = c_parser_expression (parser).value;
   if (c_parser_next_token_is_keyword (parser, RID_IN))
     {
       c_parser_consume_token (parser);
       cond = build_tree_list (cond, c_parser_initializer (parser).value);
       foreach_p = 1;
     }
   else
     {
       c_finish_expr_stmt (cond);
       c_parser_skip_until_found (parser, CPP_SEMICOLON, "expected %<;%>");
     }
 }
 objc_foreach_context = 0;


      loc = c_parser_peek_token (parser)->location;
      if (c_parser_next_token_is (parser, CPP_SEMICOLON))
 {
   c_parser_consume_token (parser);
   cond = NULL_TREE;
 }

      else if (foreach_p)
 ;

      else
 {
   tree ocond = c_parser_expression_conv (parser).value;
   cond = c_objc_common_truthvalue_conversion (ocond);
   if (EXPR_P (cond))
     SET_EXPR_LOCATION (cond, loc);
   c_parser_skip_until_found (parser, CPP_SEMICOLON, "expected %<;%>");
 }

      if (c_parser_next_token_is (parser, CPP_CLOSE_PAREN))
 incr = c_process_expr_stmt (NULL_TREE);
      else
 incr = c_process_expr_stmt (c_parser_expression (parser).value);
      c_parser_skip_until_found (parser, CPP_CLOSE_PAREN, "expected %<)%>");
    }
  else
    {
      cond = error_mark_node;
      incr = error_mark_node;
    }
  save_break = c_break_label;
  c_break_label = NULL_TREE;
  save_cont = c_cont_label;
  c_cont_label = NULL_TREE;
  body = c_parser_c99_block_statement (parser);

    c_finish_loop (loc, cond, incr, body, c_break_label, c_cont_label, attrs,
     1);

  add_stmt (c_end_compound_stmt (block, flag_isoc99));
  c_break_label = save_break;
  c_cont_label = save_cont;
}
