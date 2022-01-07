
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int building_stmt_tree () ;
 int finish_compound_stmt (int ) ;
 int finish_stmt_expr (int ,int) ;
 int gcc_assert (int) ;

__attribute__((used)) static tree
finish_init_stmts (bool is_global, tree stmt_expr, tree compound_stmt)
{
  finish_compound_stmt (compound_stmt);

  stmt_expr = finish_stmt_expr (stmt_expr, 1);

  gcc_assert (!building_stmt_tree () == is_global);

  return stmt_expr;
}
