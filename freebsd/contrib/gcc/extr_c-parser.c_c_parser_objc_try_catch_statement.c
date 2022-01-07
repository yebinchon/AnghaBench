
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct c_parm {int dummy; } ;
typedef int location_t ;
typedef int c_parser ;
struct TYPE_2__ {int location; } ;


 int CPP_CLOSE_PAREN ;
 int CPP_ELLIPSIS ;
 int CPP_OPEN_BRACE ;
 int CPP_OPEN_PAREN ;
 int NULL_TREE ;
 int RID_AT_CATCH ;
 int RID_AT_FINALLY ;
 int RID_AT_TRY ;
 int c_parser_compound_statement (int *) ;
 int c_parser_compound_statement_nostart (int *) ;
 int c_parser_consume_token (int *) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 scalar_t__ c_parser_next_token_is_keyword (int *,int ) ;
 struct c_parm* c_parser_parameter_declaration (int *,int ) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 scalar_t__ c_parser_require (int *,int ,char*) ;
 int c_parser_skip_until_found (int *,int ,char*) ;
 int gcc_assert (scalar_t__) ;
 int grokparm (struct c_parm*) ;
 int objc_begin_catch_clause (int ) ;
 int objc_begin_try_stmt (int ,int ) ;
 int objc_build_finally_clause (int ,int ) ;
 int objc_finish_catch_clause () ;
 int objc_finish_try_stmt () ;

__attribute__((used)) static void
c_parser_objc_try_catch_statement (c_parser *parser)
{
  location_t loc;
  tree stmt;
  gcc_assert (c_parser_next_token_is_keyword (parser, RID_AT_TRY));
  c_parser_consume_token (parser);
  loc = c_parser_peek_token (parser)->location;
  stmt = c_parser_compound_statement (parser);
  objc_begin_try_stmt (loc, stmt);
  while (c_parser_next_token_is_keyword (parser, RID_AT_CATCH))
    {
      struct c_parm *parm;
      c_parser_consume_token (parser);
      if (!c_parser_require (parser, CPP_OPEN_PAREN, "expected %<(%>"))
 break;

      if (c_parser_next_token_is (parser, CPP_ELLIPSIS))
 {

   c_parser_consume_token (parser);
    c_parser_skip_until_found (parser, CPP_CLOSE_PAREN, "expected %<)%>");
    objc_begin_catch_clause (NULL_TREE);
 }
      else
 {
    parm = c_parser_parameter_declaration (parser, NULL_TREE);
    if (parm == ((void*)0))
     {
       c_parser_skip_until_found (parser, CPP_CLOSE_PAREN, ((void*)0));
       break;
     }
    c_parser_skip_until_found (parser, CPP_CLOSE_PAREN, "expected %<)%>");
    objc_begin_catch_clause (grokparm (parm));
 }

      if (c_parser_require (parser, CPP_OPEN_BRACE, "expected %<{%>"))
 c_parser_compound_statement_nostart (parser);
      objc_finish_catch_clause ();
    }
  if (c_parser_next_token_is_keyword (parser, RID_AT_FINALLY))
    {
      location_t finloc;
      tree finstmt;
      c_parser_consume_token (parser);
      finloc = c_parser_peek_token (parser)->location;
      finstmt = c_parser_compound_statement (parser);
      objc_build_finally_clause (finloc, finstmt);
    }
  objc_finish_try_stmt ();
}
