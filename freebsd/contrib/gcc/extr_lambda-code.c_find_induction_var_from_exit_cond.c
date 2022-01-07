
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct loop {int dummy; } ;


 int COMPARISON_CLASS_P (scalar_t__) ;
 scalar_t__ COND_EXPR ;
 scalar_t__ NULL_TREE ;
 scalar_t__ SSA_NAME ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ expr_invariant_in_loop_p (struct loop*,scalar_t__) ;
 scalar_t__ get_loop_exit_condition (struct loop*) ;

__attribute__((used)) static tree
find_induction_var_from_exit_cond (struct loop *loop)
{
  tree expr = get_loop_exit_condition (loop);
  tree ivarop;
  tree test;
  if (expr == NULL_TREE)
    return NULL_TREE;
  if (TREE_CODE (expr) != COND_EXPR)
    return NULL_TREE;
  test = TREE_OPERAND (expr, 0);
  if (!COMPARISON_CLASS_P (test))
    return NULL_TREE;




  if (expr_invariant_in_loop_p (loop, TREE_OPERAND (test, 0)))
      ivarop = TREE_OPERAND (test, 1);
  else if (expr_invariant_in_loop_p (loop, TREE_OPERAND (test, 1)))
      ivarop = TREE_OPERAND (test, 0);
  else
    return NULL_TREE;

  if (TREE_CODE (ivarop) != SSA_NAME)
    return NULL_TREE;
  return ivarop;
}
