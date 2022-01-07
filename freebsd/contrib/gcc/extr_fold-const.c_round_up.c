
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int BIT_AND_EXPR ;
 int CEIL_DIV_EXPR ;
 scalar_t__ INTEGER_CST ;
 int MULT_EXPR ;
 scalar_t__ NULL_TREE ;
 int PLUS_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ build_int_cst (int ,int) ;
 int gcc_assert (int) ;
 scalar_t__ multiple_of_p (int ,scalar_t__,scalar_t__) ;
 scalar_t__ size_binop (int ,scalar_t__,scalar_t__) ;

tree
round_up (tree value, int divisor)
{
  tree div = NULL_TREE;

  gcc_assert (divisor > 0);
  if (divisor == 1)
    return value;





  if (TREE_CODE (value) != INTEGER_CST)
    {
      div = build_int_cst (TREE_TYPE (value), divisor);

      if (multiple_of_p (TREE_TYPE (value), value, div))
 return value;
    }


  if (divisor == (divisor & -divisor))
    {
      tree t;

      t = build_int_cst (TREE_TYPE (value), divisor - 1);
      value = size_binop (PLUS_EXPR, value, t);
      t = build_int_cst (TREE_TYPE (value), -divisor);
      value = size_binop (BIT_AND_EXPR, value, t);
    }
  else
    {
      if (!div)
 div = build_int_cst (TREE_TYPE (value), divisor);
      value = size_binop (CEIL_DIV_EXPR, value, div);
      value = size_binop (MULT_EXPR, value, div);
    }

  return value;
}
