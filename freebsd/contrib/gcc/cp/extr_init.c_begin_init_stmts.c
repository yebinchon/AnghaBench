
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int BCS_NO_SCOPE ;
 int begin_compound_stmt (int ) ;
 int begin_stmt_expr () ;
 int building_stmt_tree () ;

__attribute__((used)) static bool
begin_init_stmts (tree *stmt_expr_p, tree *compound_stmt_p)
{
  bool is_global = !building_stmt_tree ();

  *stmt_expr_p = begin_stmt_expr ();
  *compound_stmt_p = begin_compound_stmt (BCS_NO_SCOPE);

  return is_global;
}
