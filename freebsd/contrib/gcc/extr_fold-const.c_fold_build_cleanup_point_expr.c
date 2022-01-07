
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int CLEANUP_POINT_EXPR ;
 scalar_t__ RETURN_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_SIDE_EFFECTS (scalar_t__) ;
 scalar_t__ build1 (int ,scalar_t__,scalar_t__) ;

tree
fold_build_cleanup_point_expr (tree type, tree expr)
{


  if (!TREE_SIDE_EFFECTS (expr))
    return expr;






  if (TREE_CODE (expr) == RETURN_EXPR)
    {
      tree op = TREE_OPERAND (expr, 0);
      if (!op || !TREE_SIDE_EFFECTS (op))
        return expr;
      op = TREE_OPERAND (op, 1);
      if (!TREE_SIDE_EFFECTS (op))
        return expr;
    }

  return build1 (CLEANUP_POINT_EXPR, type, expr);
}
