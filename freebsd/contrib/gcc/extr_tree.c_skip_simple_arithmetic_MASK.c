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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NON_LVALUE_EXPR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

tree
FUNC5 (tree expr)
{
  tree inner;

  /* We don't care about whether this can be used as an lvalue in this
     context.  */
  while (FUNC1 (expr) == NON_LVALUE_EXPR)
    expr = FUNC3 (expr, 0);

  /* If we have simple operations applied to a SAVE_EXPR or to a SAVE_EXPR and
     a constant, it will be more efficient to not make another SAVE_EXPR since
     it will allow better simplification and GCSE will be able to merge the
     computations if they actually occur.  */
  inner = expr;
  while (1)
    {
      if (FUNC4 (inner))
	inner = FUNC3 (inner, 0);
      else if (FUNC0 (inner))
	{
	  if (FUNC2 (FUNC3 (inner, 1)))
	    inner = FUNC3 (inner, 0);
	  else if (FUNC2 (FUNC3 (inner, 0)))
	    inner = FUNC3 (inner, 1);
	  else
	    break;
	}
      else
	break;
    }

  return inner;
}