
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef scalar_t__ (* gimple_predicate ) (scalar_t__) ;
typedef enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;
struct TYPE_2__ {scalar_t__ temps; int into_ssa; } ;


 int GS_ERROR ;
 int MODIFY_EXPR ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 int add_referenced_var (scalar_t__) ;
 scalar_t__ build2 (int ,int ,scalar_t__,scalar_t__) ;
 int fb_rvalue ;
 int gcc_assert (int) ;
 TYPE_1__* gimplify_ctxp ;
 int gimplify_expr (scalar_t__*,scalar_t__*,int *,scalar_t__ (*) (scalar_t__),int ) ;
 int in_ssa_p ;
 scalar_t__ is_gimple_reg_rhs (scalar_t__) ;
 scalar_t__ is_gimple_val (scalar_t__) ;
 int pop_gimplify_context (int *) ;
 int push_gimplify_context () ;
 scalar_t__ referenced_vars ;

tree
force_gimple_operand (tree expr, tree *stmts, bool simple, tree var)
{
  tree t;
  enum gimplify_status ret;
  gimple_predicate gimple_test_f;

  *stmts = NULL_TREE;

  if (is_gimple_val (expr))
    return expr;

  gimple_test_f = simple ? is_gimple_val : is_gimple_reg_rhs;

  push_gimplify_context ();
  gimplify_ctxp->into_ssa = in_ssa_p;

  if (var)
    expr = build2 (MODIFY_EXPR, TREE_TYPE (var), var, expr);

  ret = gimplify_expr (&expr, stmts, ((void*)0),
         gimple_test_f, fb_rvalue);
  gcc_assert (ret != GS_ERROR);

  if (referenced_vars)
    {
      for (t = gimplify_ctxp->temps; t ; t = TREE_CHAIN (t))
 add_referenced_var (t);
    }

  pop_gimplify_context (((void*)0));

  return expr;
}
