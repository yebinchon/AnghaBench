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
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ ARRAY_REF ; 
 scalar_t__ ARRAY_TYPE ; 
 scalar_t__ MULT_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ PLUS_EXPR ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC7 (tree expr, tree *base, tree *offset)
{
  /* One canonical form is a PLUS_EXPR with the first
     argument being an ADDR_EXPR with a possible NOP_EXPR
     attached.  */
  if (FUNC2 (expr) == PLUS_EXPR)
    {
      tree op0 = FUNC3 (expr, 0);
      tree inner_base, dummy1;
      /* Strip NOP_EXPRs here because the C frontends and/or
	 folders present us (int *)&x.a + 4B possibly.  */
      FUNC1 (op0);
      if (FUNC7 (op0, &inner_base, &dummy1))
	{
	  *base = inner_base;
	  if (dummy1 == NULL_TREE)
	    *offset = FUNC3 (expr, 1);
	  else
	    *offset = FUNC6 (PLUS_EXPR, FUNC4 (expr),
				   dummy1, FUNC3 (expr, 1));
	  return true;
	}
    }
  /* Other canonical form is an ADDR_EXPR of an ARRAY_REF,
     which we transform into an ADDR_EXPR with appropriate
     offset.  For other arguments to the ADDR_EXPR we assume
     zero offset and as such do not care about the ADDR_EXPR
     type and strip possible nops from it.  */
  else if (FUNC2 (expr) == ADDR_EXPR)
    {
      tree op0 = FUNC3 (expr, 0);
      if (FUNC2 (op0) == ARRAY_REF)
	{
	  tree idx = FUNC3 (op0, 1);
	  *base = FUNC3 (op0, 0);
	  *offset = FUNC6 (MULT_EXPR, FUNC4 (idx), idx,
				 FUNC5 (op0)); 
	}
      else
	{
	  /* Handle array-to-pointer decay as &a.  */
	  if (FUNC2 (FUNC4 (op0)) == ARRAY_TYPE)
	    *base = FUNC3 (expr, 0);
	  else
	    *base = expr;
	  *offset = NULL_TREE;
	}
      return true;
    }
  /* The next canonical form is a VAR_DECL with POINTER_TYPE.  */
  else if (FUNC0 (expr)
	   && FUNC2 (FUNC4 (expr)) == POINTER_TYPE)
    {
      *base = expr;
      *offset = NULL_TREE;
      return true;
    }

  return false;
}