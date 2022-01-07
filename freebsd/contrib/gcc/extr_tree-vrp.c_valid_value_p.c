
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ INTEGER_CST ;
 scalar_t__ MINUS_EXPR ;
 scalar_t__ PLUS_EXPR ;
 scalar_t__ SSA_NAME ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int is_gimple_min_invariant (int ) ;

__attribute__((used)) static bool
valid_value_p (tree expr)
{
  if (TREE_CODE (expr) == SSA_NAME)
    return 1;

  if (TREE_CODE (expr) == PLUS_EXPR
      || TREE_CODE (expr) == MINUS_EXPR)
    return (TREE_CODE (TREE_OPERAND (expr, 0)) == SSA_NAME
     && TREE_CODE (TREE_OPERAND (expr, 1)) == INTEGER_CST);

  return is_gimple_min_invariant (expr);
}
