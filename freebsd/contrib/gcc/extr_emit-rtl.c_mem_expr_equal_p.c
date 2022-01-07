
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ COMPONENT_REF ;
 int DECL_P (scalar_t__) ;
 scalar_t__ INDIRECT_REF_P (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int gcc_assert (int ) ;

int
mem_expr_equal_p (tree expr1, tree expr2)
{
  if (expr1 == expr2)
    return 1;

  if (! expr1 || ! expr2)
    return 0;

  if (TREE_CODE (expr1) != TREE_CODE (expr2))
    return 0;

  if (TREE_CODE (expr1) == COMPONENT_REF)
    return
      mem_expr_equal_p (TREE_OPERAND (expr1, 0),
   TREE_OPERAND (expr2, 0))
      && mem_expr_equal_p (TREE_OPERAND (expr1, 1),
      TREE_OPERAND (expr2, 1));

  if (INDIRECT_REF_P (expr1))
    return mem_expr_equal_p (TREE_OPERAND (expr1, 0),
        TREE_OPERAND (expr2, 0));



  gcc_assert (DECL_P (expr1));


  return 0;
}
