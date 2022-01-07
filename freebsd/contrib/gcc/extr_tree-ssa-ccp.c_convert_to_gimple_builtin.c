
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_stmt_iterator ;
typedef int * tree ;
typedef int block_stmt_iterator ;


 int BSI_NEW_STMT ;
 scalar_t__ EXPR_HAS_LOCATION (int *) ;
 int EXPR_LOCATION (int *) ;
 int annotate_all_with_locus (int **,int ) ;
 int bsi_insert_before (int *,int *,int ) ;
 int bsi_next (int *) ;
 int * bsi_stmt (int ) ;
 int find_new_referenced_vars (int ) ;
 int * get_initialized_tmp_var (int *,int **,int *) ;
 int mark_new_vars_to_rename (int *) ;
 int pop_gimplify_context (int *) ;
 int push_gimplify_context () ;
 int tsi_end_p (int ) ;
 int tsi_next (int *) ;
 int tsi_start (int *) ;
 int * tsi_stmt (int ) ;
 int tsi_stmt_ptr (int ) ;

__attribute__((used)) static tree
convert_to_gimple_builtin (block_stmt_iterator *si_p, tree expr)
{
  tree_stmt_iterator ti;
  tree stmt = bsi_stmt (*si_p);
  tree tmp, stmts = ((void*)0);

  push_gimplify_context ();
  tmp = get_initialized_tmp_var (expr, &stmts, ((void*)0));
  pop_gimplify_context (((void*)0));

  if (EXPR_HAS_LOCATION (stmt))
    annotate_all_with_locus (&stmts, EXPR_LOCATION (stmt));


  for (ti = tsi_start (stmts); !tsi_end_p (ti); tsi_next (&ti))
    {
      tree new_stmt = tsi_stmt (ti);
      find_new_referenced_vars (tsi_stmt_ptr (ti));
      bsi_insert_before (si_p, new_stmt, BSI_NEW_STMT);
      mark_new_vars_to_rename (bsi_stmt (*si_p));
      bsi_next (si_p);
    }

  return tmp;
}
