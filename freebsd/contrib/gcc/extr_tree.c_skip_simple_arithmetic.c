
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ BINARY_CLASS_P (int ) ;
 scalar_t__ NON_LVALUE_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_INVARIANT (int ) ;
 int TREE_OPERAND (int ,int) ;
 scalar_t__ UNARY_CLASS_P (int ) ;

tree
skip_simple_arithmetic (tree expr)
{
  tree inner;



  while (TREE_CODE (expr) == NON_LVALUE_EXPR)
    expr = TREE_OPERAND (expr, 0);





  inner = expr;
  while (1)
    {
      if (UNARY_CLASS_P (inner))
 inner = TREE_OPERAND (inner, 0);
      else if (BINARY_CLASS_P (inner))
 {
   if (TREE_INVARIANT (TREE_OPERAND (inner, 1)))
     inner = TREE_OPERAND (inner, 0);
   else if (TREE_INVARIANT (TREE_OPERAND (inner, 0)))
     inner = TREE_OPERAND (inner, 1);
   else
     break;
 }
      else
 break;
    }

  return inner;
}
