
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef int location_t ;
typedef int c_parser ;
struct TYPE_2__ {int location; } ;


 int NULL_TREE ;
 int RID_ELSE ;
 int RID_IF ;
 int add_stmt (int ) ;
 int c_begin_compound_stmt (int ) ;
 int c_end_compound_stmt (int ,int ) ;
 int c_finish_if_stmt (int ,int ,int ,int ,int) ;
 int c_parser_consume_token (int *) ;
 int c_parser_if_body (int *,int*) ;
 scalar_t__ c_parser_next_token_is_keyword (int *,int ) ;
 int c_parser_paren_condition (int *) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 int flag_isoc99 ;
 int gcc_assert (scalar_t__) ;

__attribute__((used)) static void
c_parser_if_statement (c_parser *parser)
{
  tree block;
  location_t loc;
  tree cond;
  bool first_if = 0, second_if = 0;
  tree first_body, second_body;
  gcc_assert (c_parser_next_token_is_keyword (parser, RID_IF));
  c_parser_consume_token (parser);
  block = c_begin_compound_stmt (flag_isoc99);
  loc = c_parser_peek_token (parser)->location;
  cond = c_parser_paren_condition (parser);
  first_body = c_parser_if_body (parser, &first_if);
  if (c_parser_next_token_is_keyword (parser, RID_ELSE))
    {
      c_parser_consume_token (parser);
      second_body = c_parser_if_body (parser, &second_if);
    }
  else
    second_body = NULL_TREE;
  c_finish_if_stmt (loc, cond, first_body, second_body, first_if);
  add_stmt (c_end_compound_stmt (block, flag_isoc99));
}
