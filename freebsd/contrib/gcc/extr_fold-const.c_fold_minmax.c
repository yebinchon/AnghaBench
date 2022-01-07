
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int MAX_EXPR ;
 int MIN_EXPR ;
 int NULL_TREE ;
 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int gcc_unreachable () ;
 int omit_one_operand (int ,int ,int ) ;
 scalar_t__ operand_equal_p (int ,int ,int ) ;
 scalar_t__ reorder_operands_p (int ,int ) ;

__attribute__((used)) static tree
fold_minmax (enum tree_code code, tree type, tree op0, tree op1)
{
  enum tree_code compl_code;

  if (code == MIN_EXPR)
    compl_code = MAX_EXPR;
  else if (code == MAX_EXPR)
    compl_code = MIN_EXPR;
  else
    gcc_unreachable ();


  if (TREE_CODE (op0) == compl_code
      && operand_equal_p (TREE_OPERAND (op0, 1), op1, 0))
    return omit_one_operand (type, op1, TREE_OPERAND (op0, 0));


  if (TREE_CODE (op0) == compl_code
      && operand_equal_p (TREE_OPERAND (op0, 0), op1, 0)
      && reorder_operands_p (TREE_OPERAND (op0, 1), op1))
    return omit_one_operand (type, op1, TREE_OPERAND (op0, 1));


  if (TREE_CODE (op1) == compl_code
      && operand_equal_p (op0, TREE_OPERAND (op1, 0), 0)
      && reorder_operands_p (op0, TREE_OPERAND (op1, 1)))
    return omit_one_operand (type, op0, TREE_OPERAND (op1, 1));


  if (TREE_CODE (op1) == compl_code
      && operand_equal_p (op0, TREE_OPERAND (op1, 1), 0)
      && reorder_operands_p (op0, TREE_OPERAND (op1, 0)))
    return omit_one_operand (type, op0, TREE_OPERAND (op1, 0));

  return NULL_TREE;
}
