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
typedef  int /*<<< orphan*/  tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 scalar_t__ INTEGER_CST ; 
 int MINUS_EXPR ; 
 int /*<<< orphan*/  NEGATE_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int PLUS_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool 
FUNC5 (tree offset, tree *invariant, tree *constant)
{
  tree op0, op1, constant_0, constant_1, invariant_0, invariant_1;
  enum tree_code code = FUNC0 (offset);

  *invariant = NULL_TREE;
  *constant = NULL_TREE;

  /* Not PLUS/MINUS expression - recursion stop condition.  */
  if (code != PLUS_EXPR && code != MINUS_EXPR)
    {
      if (FUNC0 (offset) == INTEGER_CST)
	*constant = offset;
      else
	*invariant = offset;
      return true;
    }

  op0 = FUNC1 (offset, 0);
  op1 = FUNC1 (offset, 1);

  /* Recursive call with the operands.  */
  if (!FUNC5 (op0, &invariant_0, &constant_0)
      || !FUNC5 (op1, &invariant_1, &constant_1))
    return false;

  /* Combine the results. Add negation to the subtrahend in case of
     subtraction.  */
  if (constant_0 && constant_1)
    return false;
  *constant = constant_0 ? constant_0 : constant_1;
  if (code == MINUS_EXPR && constant_1)
    *constant = FUNC3 (NEGATE_EXPR, FUNC2 (*constant), *constant);

  if (invariant_0 && invariant_1)
    *invariant = 
      FUNC4 (code, FUNC2 (invariant_0), invariant_0, invariant_1);
  else
    {
      *invariant = invariant_0 ? invariant_0 : invariant_1;
      if (code == MINUS_EXPR && invariant_1)
        *invariant = 
           FUNC3 (NEGATE_EXPR, FUNC2 (*invariant), *invariant);
    }
  return true;
}