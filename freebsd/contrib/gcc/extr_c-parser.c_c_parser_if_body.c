
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef int c_parser ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ CPP_COLON ;
 int CPP_NAME ;
 int CPP_SEMICOLON ;
 int RID_CASE ;
 int RID_DEFAULT ;
 int RID_IF ;
 int add_stmt (int ) ;
 int build_empty_stmt () ;
 int c_begin_compound_stmt (int ) ;
 int c_end_compound_stmt (int ,int ) ;
 int c_parser_label (int *) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 int c_parser_next_token_is_keyword (int *,int ) ;
 TYPE_1__* c_parser_peek_2nd_token (int *) ;
 int c_parser_statement_after_labels (int *) ;
 scalar_t__ extra_warnings ;
 int flag_isoc99 ;

__attribute__((used)) static tree
c_parser_if_body (c_parser *parser, bool *if_p)
{
  tree block = c_begin_compound_stmt (flag_isoc99);
  while (c_parser_next_token_is_keyword (parser, RID_CASE)
  || c_parser_next_token_is_keyword (parser, RID_DEFAULT)
  || (c_parser_next_token_is (parser, CPP_NAME)
      && c_parser_peek_2nd_token (parser)->type == CPP_COLON))
    c_parser_label (parser);
  *if_p = c_parser_next_token_is_keyword (parser, RID_IF);
  if (extra_warnings && c_parser_next_token_is (parser, CPP_SEMICOLON))
    add_stmt (build_empty_stmt ());
  c_parser_statement_after_labels (parser);
  return c_end_compound_stmt (block, flag_isoc99);
}
