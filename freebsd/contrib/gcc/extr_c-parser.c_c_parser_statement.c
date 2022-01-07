
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int c_parser ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ CPP_COLON ;
 int CPP_NAME ;
 int RID_CASE ;
 int RID_DEFAULT ;
 int c_parser_label (int *) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 scalar_t__ c_parser_next_token_is_keyword (int *,int ) ;
 TYPE_1__* c_parser_peek_2nd_token (int *) ;
 int c_parser_statement_after_labels (int *) ;

__attribute__((used)) static void
c_parser_statement (c_parser *parser)
{
  while (c_parser_next_token_is_keyword (parser, RID_CASE)
  || c_parser_next_token_is_keyword (parser, RID_DEFAULT)
  || (c_parser_next_token_is (parser, CPP_NAME)
      && c_parser_peek_2nd_token (parser)->type == CPP_COLON))
    c_parser_label (parser);
  c_parser_statement_after_labels (parser);
}
