
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ CONVERT_EXPR ;
 scalar_t__ NON_LVALUE_EXPR ;
 scalar_t__ NOP_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_CONSTANT (int ) ;
 int TREE_OPERAND (int ,int ) ;

int
really_constant_p (tree exp)
{

  while (TREE_CODE (exp) == NOP_EXPR
  || TREE_CODE (exp) == CONVERT_EXPR
  || TREE_CODE (exp) == NON_LVALUE_EXPR)
    exp = TREE_OPERAND (exp, 0);
  return TREE_CONSTANT (exp);
}
