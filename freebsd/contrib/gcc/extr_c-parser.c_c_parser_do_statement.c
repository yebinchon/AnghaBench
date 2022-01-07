
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* tree ;
typedef int location_t ;
typedef int c_parser ;
struct TYPE_2__ {int location; } ;


 int CPP_SEMICOLON ;
 void* NULL_TREE ;
 int RID_DO ;
 int RID_WHILE ;
 int add_stmt (int ) ;
 void* c_begin_compound_stmt (int ) ;
 void* c_break_label ;
 void* c_cont_label ;
 int c_end_compound_stmt (void*,int ) ;
 int c_finish_loop (int ,void*,int *,void*,void*,void*,void*,int) ;
 void* c_parser_attributes (int *) ;
 void* c_parser_c99_block_statement (int *) ;
 int c_parser_consume_token (int *) ;
 int c_parser_next_token_is_keyword (int *,int ) ;
 void* c_parser_paren_condition (int *) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 int c_parser_require (int *,int ,char*) ;
 int c_parser_require_keyword (int *,int ,char*) ;
 int c_parser_skip_to_end_of_block_or_statement (int *) ;
 int flag_isoc99 ;
 int gcc_assert (int ) ;

__attribute__((used)) static void
c_parser_do_statement (c_parser *parser)
{

  tree block, cond, body, save_break, save_cont, new_break, new_cont, attrs;

  location_t loc;
  gcc_assert (c_parser_next_token_is_keyword (parser, RID_DO));
  c_parser_consume_token (parser);

  attrs = c_parser_attributes (parser);

  block = c_begin_compound_stmt (flag_isoc99);
  loc = c_parser_peek_token (parser)->location;
  save_break = c_break_label;
  c_break_label = NULL_TREE;
  save_cont = c_cont_label;
  c_cont_label = NULL_TREE;
  body = c_parser_c99_block_statement (parser);
  c_parser_require_keyword (parser, RID_WHILE, "expected %<while%>");
  new_break = c_break_label;
  c_break_label = save_break;
  new_cont = c_cont_label;
  c_cont_label = save_cont;
  cond = c_parser_paren_condition (parser);
  if (!c_parser_require (parser, CPP_SEMICOLON, "expected %<;%>"))
    c_parser_skip_to_end_of_block_or_statement (parser);

  c_finish_loop (loc, cond, ((void*)0), body, new_break, new_cont, attrs, 0);

  add_stmt (c_end_compound_stmt (block, flag_isoc99));
}
