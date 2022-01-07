
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int c_parser ;


 int CPP_OPEN_BRACE ;
 int c_begin_compound_stmt (int) ;
 int c_end_compound_stmt (int ,int) ;
 int c_parser_compound_statement_nostart (int *) ;
 int c_parser_require (int *,int ,char*) ;
 int error_mark_node ;

__attribute__((used)) static tree
c_parser_compound_statement (c_parser *parser)
{
  tree stmt;
  if (!c_parser_require (parser, CPP_OPEN_BRACE, "expected %<{%>"))
    return error_mark_node;
  stmt = c_begin_compound_stmt (1);
  c_parser_compound_statement_nostart (parser);
  return c_end_compound_stmt (stmt, 1);
}
