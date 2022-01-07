
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef int location_t ;
typedef int c_parser ;
struct TYPE_4__ {int value; } ;
struct TYPE_3__ {int location; } ;


 int CPP_CLOSE_PAREN ;
 int CPP_OPEN_PAREN ;
 int RID_AT_SYNCHRONIZED ;
 int c_parser_consume_token (int *) ;
 TYPE_2__ c_parser_expression (int *) ;
 int c_parser_next_token_is_keyword (int *,int ) ;
 int c_parser_objc_synch_compound_statement (int *) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 scalar_t__ c_parser_require (int *,int ,char*) ;
 int c_parser_skip_until_found (int *,int ,char*) ;
 int error_mark_node ;
 int gcc_assert (int ) ;
 int objc_build_synchronized (int ,int ,int ) ;

__attribute__((used)) static void
c_parser_objc_synchronized_statement (c_parser *parser)
{
  location_t loc;
  tree expr, stmt;
  gcc_assert (c_parser_next_token_is_keyword (parser, RID_AT_SYNCHRONIZED));
  c_parser_consume_token (parser);
  loc = c_parser_peek_token (parser)->location;
  if (c_parser_require (parser, CPP_OPEN_PAREN, "expected %<(%>"))
    {
      expr = c_parser_expression (parser).value;
      c_parser_skip_until_found (parser, CPP_CLOSE_PAREN, "expected %<)%>");
    }
  else
    expr = error_mark_node;

  stmt = c_parser_objc_synch_compound_statement (parser);
  objc_build_synchronized (loc, expr, stmt);
}
