
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
struct walk_stmt_info {int tsi; scalar_t__ val_only; scalar_t__ is_lhs; } ;
typedef enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;


 int GS_ALL_DONE ;
 int TSI_SAME_STMT ;
 int fb_lvalue ;
 int fb_rvalue ;
 int gcc_assert (int) ;
 int gimplify_expr (int **,int **,int *,int ,int ) ;
 int is_gimple_formal_tmp_var ;
 int is_gimple_lvalue ;
 int is_gimple_val ;
 int tsi_link_before (int *,int *,int ) ;

__attribute__((used)) static void
lower_regimplify (tree *tp, struct walk_stmt_info *wi)
{
  enum gimplify_status gs;
  tree pre = ((void*)0);

  if (wi->is_lhs)
    gs = gimplify_expr (tp, &pre, ((void*)0), is_gimple_lvalue, fb_lvalue);
  else if (wi->val_only)
    gs = gimplify_expr (tp, &pre, ((void*)0), is_gimple_val, fb_rvalue);
  else
    gs = gimplify_expr (tp, &pre, ((void*)0), is_gimple_formal_tmp_var, fb_rvalue);
  gcc_assert (gs == GS_ALL_DONE);

  if (pre)
    tsi_link_before (&wi->tsi, pre, TSI_SAME_STMT);
}
