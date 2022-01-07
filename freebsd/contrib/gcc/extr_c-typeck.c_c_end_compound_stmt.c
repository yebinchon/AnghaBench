
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
typedef int TREE_SIDE_EFFECTS ;


 scalar_t__ BIND_EXPR ;
 scalar_t__ STATEMENT_LIST_STMT_EXPR (scalar_t__) ;
 scalar_t__ TREE_CODE (int *) ;
 int * build3 (scalar_t__,int ,int *,int *,int *) ;
 int * c_build_bind_expr (int *,int *) ;
 scalar_t__ c_dialect_objc () ;
 scalar_t__ cur_stmt_list ;
 int objc_clear_super_receiver () ;
 int * pop_scope () ;
 int * pop_stmt_list (int *) ;
 int void_type_node ;

tree
c_end_compound_stmt (tree stmt, bool do_scope)
{
  tree block = ((void*)0);

  if (do_scope)
    {
      if (c_dialect_objc ())
 objc_clear_super_receiver ();
      block = pop_scope ();
    }

  stmt = pop_stmt_list (stmt);
  stmt = c_build_bind_expr (block, stmt);






  if (cur_stmt_list
      && STATEMENT_LIST_STMT_EXPR (cur_stmt_list)
      && TREE_CODE (stmt) != BIND_EXPR)
    {
      stmt = build3 (BIND_EXPR, void_type_node, ((void*)0), stmt, ((void*)0));
      TREE_SIDE_EFFECTS (stmt) = 1;
    }

  return stmt;
}
