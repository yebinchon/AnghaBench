
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 scalar_t__ BIT_AND_EXPR ;
 scalar_t__ BIT_IOR_EXPR ;
 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int fold_build2 (int,int ,int ,int ) ;
 scalar_t__ operand_equal_p (int ,int ,int ) ;

__attribute__((used)) static tree
distribute_bit_expr (enum tree_code code, tree type, tree arg0, tree arg1)
{
  tree common;
  tree left, right;

  if (TREE_CODE (arg0) != TREE_CODE (arg1)
      || TREE_CODE (arg0) == code
      || (TREE_CODE (arg0) != BIT_AND_EXPR
   && TREE_CODE (arg0) != BIT_IOR_EXPR))
    return 0;

  if (operand_equal_p (TREE_OPERAND (arg0, 0), TREE_OPERAND (arg1, 0), 0))
    {
      common = TREE_OPERAND (arg0, 0);
      left = TREE_OPERAND (arg0, 1);
      right = TREE_OPERAND (arg1, 1);
    }
  else if (operand_equal_p (TREE_OPERAND (arg0, 0), TREE_OPERAND (arg1, 1), 0))
    {
      common = TREE_OPERAND (arg0, 0);
      left = TREE_OPERAND (arg0, 1);
      right = TREE_OPERAND (arg1, 0);
    }
  else if (operand_equal_p (TREE_OPERAND (arg0, 1), TREE_OPERAND (arg1, 0), 0))
    {
      common = TREE_OPERAND (arg0, 1);
      left = TREE_OPERAND (arg0, 0);
      right = TREE_OPERAND (arg1, 1);
    }
  else if (operand_equal_p (TREE_OPERAND (arg0, 1), TREE_OPERAND (arg1, 1), 0))
    {
      common = TREE_OPERAND (arg0, 1);
      left = TREE_OPERAND (arg0, 0);
      right = TREE_OPERAND (arg1, 0);
    }
  else
    return 0;

  return fold_build2 (TREE_CODE (arg0), type, common,
        fold_build2 (code, type, left, right));
}
