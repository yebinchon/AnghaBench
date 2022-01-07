
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int c_parser ;


 int c_parser_statement (int *) ;
 int pop_stmt_list (int ) ;
 int push_stmt_list () ;

__attribute__((used)) static tree
c_parser_omp_structured_block (c_parser *parser)
{
  tree stmt = push_stmt_list ();
  c_parser_statement (parser);
  return pop_stmt_list (stmt);
}
