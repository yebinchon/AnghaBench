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
typedef  int /*<<< orphan*/ * tree ;
typedef  int /*<<< orphan*/  bitmap ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ BUILT_IN_EXPECT ; 
 scalar_t__ BUILT_IN_NORMAL ; 
 scalar_t__ CALL_EXPR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ MODIFY_EXPR ; 
 int /*<<< orphan*/ * NULL_TREE ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ PHI_NODE ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC18 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static tree
FUNC22 (tree expr, bitmap visited)
{
  if (FUNC11 (expr))
    return expr;
  else if (FUNC10 (expr) == SSA_NAME)
    {
      tree def = FUNC7 (expr);

      /* If we were already here, break the infinite cycle.  */
      if (FUNC16 (visited, FUNC8 (expr)))
	return NULL;
      FUNC17 (visited, FUNC8 (expr));

      if (FUNC10 (def) == PHI_NODE)
	{
	  /* All the arguments of the PHI node must have the same constant
	     length.  */
	  int i;
	  tree val = NULL, new_val;

	  for (i = 0; i < FUNC5 (def); i++)
	    {
	      tree arg = FUNC4 (def, i);

	      /* If this PHI has itself as an argument, we cannot
		 determine the string length of this argument.  However,
		 if we can find an expected constant value for the other
		 PHI args then we can still be sure that this is
		 likely a constant.  So be optimistic and just
		 continue with the next argument.  */
	      if (arg == FUNC6 (def))
		continue;

	      new_val = FUNC22 (arg, visited);
	      if (!new_val)
		return NULL;
	      if (!val)
		val = new_val;
	      else if (!FUNC21 (val, new_val, false))
		return NULL;
	    }
	  return val;
	}
      if (FUNC10 (def) != MODIFY_EXPR || FUNC12 (def, 0) != expr)
	return NULL;
      return FUNC22 (FUNC12 (def, 1), visited);
    }
  else if (FUNC10 (expr) == CALL_EXPR)
    {
      tree decl = FUNC20 (expr);
      if (!decl)
	return NULL;
      if (FUNC2 (decl) == BUILT_IN_NORMAL
	  && FUNC3 (decl) == BUILT_IN_EXPECT)
	{
	  tree arglist = FUNC12 (expr, 1);
	  tree val;

	  if (arglist == NULL_TREE
	      || FUNC9 (arglist) == NULL_TREE)
	    return NULL; 
	  val = FUNC14 (FUNC9 (FUNC12 (expr, 1)));
	  if (FUNC11 (val))
	    return val;
	  return FUNC14 (FUNC9 (FUNC12 (expr, 1)));
	}
    }
  if (FUNC0 (expr) || FUNC1 (expr))
    {
      tree op0, op1, res;
      op0 = FUNC22 (FUNC12 (expr, 0), visited);
      if (!op0)
	return NULL;
      op1 = FUNC22 (FUNC12 (expr, 1), visited);
      if (!op1)
	return NULL;
      res = FUNC19 (FUNC10 (expr), FUNC13 (expr), op0, op1);
      if (FUNC11 (res))
	return res;
      return NULL;
    }
  if (FUNC15 (expr))
    {
      tree op0, res;
      op0 = FUNC22 (FUNC12 (expr, 0), visited);
      if (!op0)
	return NULL;
      res = FUNC18 (FUNC10 (expr), FUNC13 (expr), op0);
      if (FUNC11 (res))
	return res;
      return NULL;
    }
  return NULL;
}