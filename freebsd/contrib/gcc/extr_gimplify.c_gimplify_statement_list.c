
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_stmt_iterator ;
typedef int * tree ;
typedef enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;


 int GS_ALL_DONE ;
 int GS_OK ;
 scalar_t__ STATEMENT_LIST ;
 scalar_t__ TREE_CODE (int *) ;
 int TSI_SAME_STMT ;
 int append_to_statement_list (int *,int **) ;
 int gimplify_stmt (int ) ;
 int tsi_delink (int *) ;
 int tsi_end_p (int ) ;
 int tsi_link_before (int *,int *,int ) ;
 int tsi_next (int *) ;
 int tsi_start (int *) ;
 int * tsi_stmt (int ) ;
 int tsi_stmt_ptr (int ) ;
 int * voidify_wrapper_expr (int *,int *) ;

__attribute__((used)) static enum gimplify_status
gimplify_statement_list (tree *expr_p, tree *pre_p)
{
  tree temp = voidify_wrapper_expr (*expr_p, ((void*)0));

  tree_stmt_iterator i = tsi_start (*expr_p);

  while (!tsi_end_p (i))
    {
      tree t;

      gimplify_stmt (tsi_stmt_ptr (i));

      t = tsi_stmt (i);
      if (t == ((void*)0))
 tsi_delink (&i);
      else if (TREE_CODE (t) == STATEMENT_LIST)
 {
   tsi_link_before (&i, t, TSI_SAME_STMT);
   tsi_delink (&i);
 }
      else
 tsi_next (&i);
    }

  if (temp)
    {
      append_to_statement_list (*expr_p, pre_p);
      *expr_p = temp;
      return GS_OK;
    }

  return GS_ALL_DONE;
}
