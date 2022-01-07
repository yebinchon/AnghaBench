
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;
struct TYPE_2__ {int exit_label; } ;


 int COND_EXPR ;
 int GS_OK ;
 int NULL_TREE ;
 int TREE_OPERAND (int ,int ) ;
 int build3 (int ,int ,int ,int ,int ) ;
 int build_and_jump (int *) ;
 TYPE_1__* gimplify_ctxp ;
 int void_type_node ;

__attribute__((used)) static enum gimplify_status
gimplify_exit_expr (tree *expr_p)
{
  tree cond = TREE_OPERAND (*expr_p, 0);
  tree expr;

  expr = build_and_jump (&gimplify_ctxp->exit_label);
  expr = build3 (COND_EXPR, void_type_node, cond, expr, NULL_TREE);
  *expr_p = expr;

  return GS_OK;
}
