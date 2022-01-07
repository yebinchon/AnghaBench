
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ ERROR_MARK ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 int TRUTH_NOT_EXPR ;
 scalar_t__ build1 (int ,int ,scalar_t__) ;
 scalar_t__ fold_truth_not_expr (scalar_t__) ;

tree
invert_truthvalue (tree arg)
{
  tree tem;

  if (TREE_CODE (arg) == ERROR_MARK)
    return arg;

  tem = fold_truth_not_expr (arg);
  if (!tem)
    tem = build1 (TRUTH_NOT_EXPR, TREE_TYPE (arg), arg);

  return tem;
}
