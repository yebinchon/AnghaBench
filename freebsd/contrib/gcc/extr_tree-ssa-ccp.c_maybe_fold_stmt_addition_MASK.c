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

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ ARRAY_REF ; 
 scalar_t__ INTEGER_CST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ MINUS_EXPR ; 
 scalar_t__ MULT_EXPR ; 
 int /*<<< orphan*/  NEGATE_EXPR ; 
 int /*<<< orphan*/ * NULL_TREE ; 
 scalar_t__ PLUS_EXPR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * sizetype ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static tree
FUNC17 (tree expr)
{
  tree op0 = FUNC3 (expr, 0);
  tree op1 = FUNC3 (expr, 1);
  tree ptr_type = FUNC4 (expr);
  tree ptd_type;
  tree t;
  bool subtract = (FUNC2 (expr) == MINUS_EXPR);

  /* We're only interested in pointer arithmetic.  */
  if (!FUNC1 (ptr_type))
    return NULL_TREE;
  /* Canonicalize the integral operand to op1.  */
  if (FUNC0 (FUNC4 (op0)))
    {
      if (subtract)
	return NULL_TREE;
      t = op0, op0 = op1, op1 = t;
    }
  /* It had better be a constant.  */
  if (FUNC2 (op1) != INTEGER_CST)
    return NULL_TREE;
  /* The first operand should be an ADDR_EXPR.  */
  if (FUNC2 (op0) != ADDR_EXPR)
    return NULL_TREE;
  op0 = FUNC3 (op0, 0);

  /* If the first operand is an ARRAY_REF, expand it so that we can fold
     the offset into it.  */
  while (FUNC2 (op0) == ARRAY_REF)
    {
      tree array_obj = FUNC3 (op0, 0);
      tree array_idx = FUNC3 (op0, 1);
      tree elt_type = FUNC4 (op0);
      tree elt_size = FUNC7 (elt_type);
      tree min_idx;

      if (FUNC2 (array_idx) != INTEGER_CST)
	break;
      if (FUNC2 (elt_size) != INTEGER_CST)
	break;

      /* Un-bias the index by the min index of the array type.  */
      min_idx = FUNC5 (FUNC4 (array_obj));
      if (min_idx)
	{
	  min_idx = FUNC6 (min_idx);
	  if (min_idx)
	    {
	      if (FUNC2 (min_idx) != INTEGER_CST)
		break;

	      array_idx = FUNC10 (FUNC4 (min_idx), array_idx);
	      if (!FUNC13 (min_idx))
		array_idx = FUNC12 (MINUS_EXPR, array_idx,
					     min_idx, 0);
	    }
	}

      /* Convert the index to a byte offset.  */
      array_idx = FUNC10 (sizetype, array_idx);
      array_idx = FUNC12 (MULT_EXPR, array_idx, elt_size, 0);

      /* Update the operands for the next round, or for folding.  */
      /* If we're manipulating unsigned types, then folding into negative
	 values can produce incorrect results.  Particularly if the type
	 is smaller than the width of the pointer.  */
      if (subtract
	  && FUNC8 (FUNC4 (op1))
	  && FUNC16 (array_idx, op1))
	return NULL;
      op1 = FUNC12 (subtract ? MINUS_EXPR : PLUS_EXPR,
			     array_idx, op1, 0);
      subtract = false;
      op0 = array_obj;
    }

  /* If we weren't able to fold the subtraction into another array reference,
     canonicalize the integer for passing to the array and component ref
     simplification functions.  */
  if (subtract)
    {
      if (FUNC8 (FUNC4 (op1)))
	return NULL;
      op1 = FUNC11 (NEGATE_EXPR, FUNC4 (op1), op1);
      /* ??? In theory fold should always produce another integer.  */
      if (op1 == NULL || FUNC2 (op1) != INTEGER_CST)
	return NULL;
    }

  ptd_type = FUNC4 (ptr_type);

  /* At which point we can try some of the same things as for indirects.  */
  t = FUNC14 (op0, op1, ptd_type);
  if (!t)
    t = FUNC15 (FUNC4 (op0), op0, op1,
					    ptd_type, false);
  if (t)
    t = FUNC9 (ADDR_EXPR, ptr_type, t);

  return t;
}