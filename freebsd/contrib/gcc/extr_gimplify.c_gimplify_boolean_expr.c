
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;


 int COND_EXPR ;
 int GS_OK ;
 int TREE_TYPE (int ) ;
 int boolean_false_node ;
 int boolean_true_node ;
 int build3 (int ,int ,int ,int ,int ) ;
 int fold_convert (int ,int ) ;

__attribute__((used)) static enum gimplify_status
gimplify_boolean_expr (tree *expr_p)
{

  tree type = TREE_TYPE (*expr_p);

  *expr_p = build3 (COND_EXPR, type, *expr_p,
      fold_convert (type, boolean_true_node),
      fold_convert (type, boolean_false_node));

  return GS_OK;
}
