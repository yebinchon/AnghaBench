
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int c_parser ;
struct TYPE_2__ {scalar_t__ value; } ;


 int CPP_CLOSE_PAREN ;
 int CPP_OPEN_PAREN ;
 int LABEL_EXPR ;
 scalar_t__ NULL_TREE ;
 int RID_SWITCH ;
 int add_stmt (int ) ;
 int build1 (int ,int ,scalar_t__) ;
 scalar_t__ c_begin_compound_stmt (int ) ;
 scalar_t__ c_break_label ;
 int c_end_compound_stmt (scalar_t__,int ) ;
 int c_finish_case (scalar_t__) ;
 scalar_t__ c_parser_c99_block_statement (int *) ;
 int c_parser_consume_token (int *) ;
 TYPE_1__ c_parser_expression (int *) ;
 int c_parser_next_token_is_keyword (int *,int ) ;
 scalar_t__ c_parser_require (int *,int ,char*) ;
 int c_parser_skip_until_found (int *,int ,char*) ;
 int c_start_case (scalar_t__) ;
 scalar_t__ error_mark_node ;
 int flag_isoc99 ;
 int gcc_assert (int ) ;
 int void_type_node ;

__attribute__((used)) static void
c_parser_switch_statement (c_parser *parser)
{
  tree block, expr, body, save_break;
  gcc_assert (c_parser_next_token_is_keyword (parser, RID_SWITCH));
  c_parser_consume_token (parser);
  block = c_begin_compound_stmt (flag_isoc99);
  if (c_parser_require (parser, CPP_OPEN_PAREN, "expected %<(%>"))
    {
      expr = c_parser_expression (parser).value;
      c_parser_skip_until_found (parser, CPP_CLOSE_PAREN, "expected %<)%>");
    }
  else
    expr = error_mark_node;
  c_start_case (expr);
  save_break = c_break_label;
  c_break_label = NULL_TREE;
  body = c_parser_c99_block_statement (parser);
  c_finish_case (body);
  if (c_break_label)
    add_stmt (build1 (LABEL_EXPR, void_type_node, c_break_label));
  c_break_label = save_break;
  add_stmt (c_end_compound_stmt (block, flag_isoc99));
}
