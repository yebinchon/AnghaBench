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

/* Variables and functions */
 int /*<<< orphan*/  BIT_AND_EXPR ; 
 int /*<<< orphan*/  CEIL_DIV_EXPR ; 
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  MULT_EXPR ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

tree
FUNC6 (tree value, int divisor)
{
  tree div = NULL_TREE;

  FUNC3 (divisor > 0);
  if (divisor == 1)
    return value;

  /* See if VALUE is already a multiple of DIVISOR.  If so, we don't
     have to do anything.  Only do this when we are not given a const,
     because in that case, this check is more expensive than just
     doing it.  */
  if (FUNC0 (value) != INTEGER_CST)
    {
      div = FUNC2 (FUNC1 (value), divisor);

      if (FUNC4 (FUNC1 (value), value, div))
	return value;
    }

  /* If divisor is a power of two, simplify this to bit manipulation.  */
  if (divisor == (divisor & -divisor))
    {
      tree t;

      t = FUNC2 (FUNC1 (value), divisor - 1);
      value = FUNC5 (PLUS_EXPR, value, t);
      t = FUNC2 (FUNC1 (value), -divisor);
      value = FUNC5 (BIT_AND_EXPR, value, t);
    }
  else
    {
      if (!div)
	div = FUNC2 (FUNC1 (value), divisor);
      value = FUNC5 (CEIL_DIV_EXPR, value, div);
      value = FUNC5 (MULT_EXPR, value, div);
    }

  return value;
}