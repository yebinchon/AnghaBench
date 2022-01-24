#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 scalar_t__ COND_EXPR ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int,scalar_t__) ; 
 scalar_t__ FUNC6 (int,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static tree
FUNC9 (enum tree_code code,
				     tree type, tree op0, tree op1,
				     tree cond, tree arg, int cond_first_p)
{
  tree cond_type = cond_first_p ? FUNC3 (op0) : FUNC3 (op1);
  tree arg_type = cond_first_p ? FUNC3 (op1) : FUNC3 (op0);
  tree test, true_value, false_value;
  tree lhs = NULL_TREE;
  tree rhs = NULL_TREE;

  /* This transformation is only worthwhile if we don't have to wrap
     arg in a SAVE_EXPR, and the operation can be simplified on at least
     one of the branches once its pushed inside the COND_EXPR.  */
  if (!FUNC1 (arg))
    return NULL_TREE;

  if (FUNC0 (cond) == COND_EXPR)
    {
      test = FUNC2 (cond, 0);
      true_value = FUNC2 (cond, 1);
      false_value = FUNC2 (cond, 2);
      /* If this operand throws an expression, then it does not make
	 sense to try to perform a logical or arithmetic operation
	 involving it.  */
      if (FUNC4 (FUNC3 (true_value)))
	lhs = true_value;
      if (FUNC4 (FUNC3 (false_value)))
	rhs = false_value;
    }
  else
    {
      tree testtype = FUNC3 (cond);
      test = cond;
      true_value = FUNC5 (true, testtype);
      false_value = FUNC5 (false, testtype);
    }

  arg = FUNC8 (arg_type, arg);
  if (lhs == 0)
    {
      true_value = FUNC8 (cond_type, true_value);
      if (cond_first_p)
	lhs = FUNC6 (code, type, true_value, arg);
      else
	lhs = FUNC6 (code, type, arg, true_value);
    }
  if (rhs == 0)
    {
      false_value = FUNC8 (cond_type, false_value);
      if (cond_first_p)
	rhs = FUNC6 (code, type, false_value, arg);
      else
	rhs = FUNC6 (code, type, arg, false_value);
    }

  test = FUNC7 (COND_EXPR, type, test, lhs, rhs);
  return FUNC8 (type, test);
}