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
 int /*<<< orphan*/  GT_EXPR ; 
 int /*<<< orphan*/  LT_EXPR ; 
 scalar_t__ MINUS_EXPR ; 
 int /*<<< orphan*/  NEGATE_EXPR ; 
 int /*<<< orphan*/  NE_EXPR ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ PLUS_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ boolean_true_node ; 
 int /*<<< orphan*/  boolean_type_node ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC15 (scalar_t__,scalar_t__) ; 
 int FUNC16 (scalar_t__) ; 

__attribute__((used)) static int
FUNC17 (tree val1, tree val2, bool *strict_overflow_p)
{
  if (val1 == val2)
    return 0;

  /* Below we rely on the fact that VAL1 and VAL2 are both pointers or
     both integers.  */
  FUNC9 (FUNC0 (FUNC5 (val1))
	      == FUNC0 (FUNC5 (val2)));

  if ((FUNC1 (val1) == SSA_NAME
       || FUNC1 (val1) == PLUS_EXPR
       || FUNC1 (val1) == MINUS_EXPR)
      && (FUNC1 (val2) == SSA_NAME
	  || FUNC1 (val2) == PLUS_EXPR
	  || FUNC1 (val2) == MINUS_EXPR))
    {
      tree n1, c1, n2, c2;
      enum tree_code code1, code2;
  
      /* If VAL1 and VAL2 are of the form 'NAME [+-] CST' or 'NAME',
	 return -1 or +1 accordingly.  If VAL1 and VAL2 don't use the
	 same name, return -2.  */
      if (FUNC1 (val1) == SSA_NAME)
	{
	  code1 = SSA_NAME;
	  n1 = val1;
	  c1 = NULL_TREE;
	}
      else
	{
	  code1 = FUNC1 (val1);
	  n1 = FUNC3 (val1, 0);
	  c1 = FUNC3 (val1, 1);
	  if (FUNC16 (c1) == -1)
	    {
	      if (FUNC12 (c1))
		return -2;
	      c1 = FUNC8 (NEGATE_EXPR, FUNC5 (c1), c1);
	      if (!c1)
		return -2;
	      code1 = code1 == MINUS_EXPR ? PLUS_EXPR : MINUS_EXPR;
	    }
	}

      if (FUNC1 (val2) == SSA_NAME)
	{
	  code2 = SSA_NAME;
	  n2 = val2;
	  c2 = NULL_TREE;
	}
      else
	{
	  code2 = FUNC1 (val2);
	  n2 = FUNC3 (val2, 0);
	  c2 = FUNC3 (val2, 1);
	  if (FUNC16 (c2) == -1)
	    {
	      if (FUNC12 (c2))
		return -2;
	      c2 = FUNC8 (NEGATE_EXPR, FUNC5 (c2), c2);
	      if (!c2)
		return -2;
	      code2 = code2 == MINUS_EXPR ? PLUS_EXPR : MINUS_EXPR;
	    }
	}

      /* Both values must use the same name.  */
      if (n1 != n2)
	return -2;

      if (code1 == SSA_NAME
	  && code2 == SSA_NAME)
	/* NAME == NAME  */
	return 0;

      /* If overflow is defined we cannot simplify more.  */
      if (!FUNC6 (FUNC5 (val1)))
	return -2;

      if (strict_overflow_p != NULL
	  && (code1 == SSA_NAME || !FUNC2 (val1))
	  && (code2 == SSA_NAME || !FUNC2 (val2)))
	*strict_overflow_p = true;

      if (code1 == SSA_NAME)
	{
	  if (code2 == PLUS_EXPR)
	    /* NAME < NAME + CST  */
	    return -1;
	  else if (code2 == MINUS_EXPR)
	    /* NAME > NAME - CST  */
	    return 1;
	}
      else if (code1 == PLUS_EXPR)
	{
	  if (code2 == SSA_NAME)
	    /* NAME + CST > NAME  */
	    return 1;
	  else if (code2 == PLUS_EXPR)
	    /* NAME + CST1 > NAME + CST2, if CST1 > CST2  */
	    return FUNC17 (c1, c2, strict_overflow_p);
	  else if (code2 == MINUS_EXPR)
	    /* NAME + CST1 > NAME - CST2  */
	    return 1;
	}
      else if (code1 == MINUS_EXPR)
	{
	  if (code2 == SSA_NAME)
	    /* NAME - CST < NAME  */
	    return -1;
	  else if (code2 == PLUS_EXPR)
	    /* NAME - CST1 < NAME + CST2  */
	    return -1;
	  else if (code2 == MINUS_EXPR)
	    /* NAME - CST1 > NAME - CST2, if CST1 < CST2.  Notice that
	       C1 and C2 are swapped in the call to compare_values.  */
	    return FUNC17 (c2, c1, strict_overflow_p);
	}

      FUNC10 ();
    }

  /* We cannot compare non-constants.  */
  if (!FUNC11 (val1) || !FUNC11 (val2))
    return -2;

  if (!FUNC0 (FUNC5 (val1)))
    {
      /* We cannot compare overflowed values, except for overflow
	 infinities.  */
      if (FUNC4 (val1) || FUNC4 (val2))
	{
	  if (strict_overflow_p != NULL)
	    *strict_overflow_p = true;
	  if (FUNC12 (val1))
	    return FUNC12 (val2) ? 0 : -1;
	  else if (FUNC12 (val2))
	    return 1;
	  else if (FUNC13 (val1))
	    return FUNC13 (val2) ? 0 : 1;
	  else if (FUNC13 (val2))
	    return -1;
	  return -2;
	}

      return FUNC15 (val1, val2);
    }
  else
    {
      tree t;

      /* First see if VAL1 and VAL2 are not the same.  */
      if (val1 == val2 || FUNC14 (val1, val2, 0))
	return 0;
      
      /* If VAL1 is a lower address than VAL2, return -1.  */
      t = FUNC7 (LT_EXPR, boolean_type_node, val1, val2);
      if (t == boolean_true_node)
	return -1;

      /* If VAL1 is a higher address than VAL2, return +1.  */
      t = FUNC7 (GT_EXPR, boolean_type_node, val1, val2);
      if (t == boolean_true_node)
	return 1;

      /* If VAL1 is different than VAL2, return +2.  */
      t = FUNC7 (NE_EXPR, boolean_type_node, val1, val2);
      if (t == boolean_true_node)
	return 2;

      return -2;
    }
}