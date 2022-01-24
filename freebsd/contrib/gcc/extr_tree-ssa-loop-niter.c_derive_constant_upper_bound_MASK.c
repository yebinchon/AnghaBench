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
typedef  int /*<<< orphan*/  double_int ;

/* Variables and functions */
#define  CONVERT_EXPR 134 
#define  EXACT_DIV_EXPR 133 
#define  FLOOR_DIV_EXPR 132 
#define  INTEGER_CST 131 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
#define  MINUS_EXPR 130 
#define  NOP_EXPR 129 
#define  PLUS_EXPR 128 
 int const FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static double_int
FUNC19 (tree val, tree additional)
{
  tree type = FUNC3 (val);
  tree op0, op1, subtype, maxt;
  double_int bnd, max, mmax, cst;

  if (FUNC0 (type))
    maxt = FUNC4 (type);
  else
    maxt = FUNC18 (type, type);

  max = FUNC17 (maxt);

  switch (FUNC1 (val))
    {
    case INTEGER_CST:
      return FUNC17 (val);

    case NOP_EXPR:
    case CONVERT_EXPR:
      op0 = FUNC2 (val, 0);
      subtype = FUNC3 (op0);
      if (!FUNC6 (subtype)
	  /* If TYPE is also signed, the fact that VAL is nonnegative implies
	     that OP0 is nonnegative.  */
	  && FUNC6 (type)
	  && !FUNC15 (additional, op0))
	{
	  /* If we cannot prove that the casted expression is nonnegative,
	     we cannot establish more useful upper bound than the precision
	     of the type gives us.  */
	  return max;
	}

      /* We now know that op0 is an nonnegative value.  Try deriving an upper
	 bound for it.  */
      bnd = FUNC19 (op0, additional);

      /* If the bound does not fit in TYPE, max. value of TYPE could be
	 attained.  */
      if (FUNC12 (max, bnd) < 0)
	return max;

      return bnd;

    case PLUS_EXPR:
    case MINUS_EXPR:
      op0 = FUNC2 (val, 0);
      op1 = FUNC2 (val, 1);

      if (FUNC1 (op1) != INTEGER_CST
	  || !FUNC15 (additional, op0))
	return max;

      /* Canonicalize to OP0 - CST.  Consider CST to be signed, in order to
	 choose the most logical way how to treat this constant regardless
	 of the signedness of the type.  */
      cst = FUNC17 (op1);
      cst = FUNC10 (cst, FUNC5 (type));
      if (FUNC1 (val) == PLUS_EXPR)
	cst = FUNC8 (cst);

      bnd = FUNC19 (op0, additional);

      if (FUNC9 (cst))
	{
	  cst = FUNC8 (cst);
	  /* Avoid CST == 0x80000...  */
	  if (FUNC9 (cst))
	    return max;;

	  /* OP0 + CST.  We need to check that
	     BND <= MAX (type) - CST.  */

	  mmax = FUNC7 (max, FUNC8 (cst));
	  if (FUNC12 (bnd, mmax) > 0)
	    return max;

	  return FUNC7 (bnd, cst);
	}
      else
	{
	  /* OP0 - CST, where CST >= 0.

	     If TYPE is signed, we have already verified that OP0 >= 0, and we
	     know that the result is nonnegative.  This implies that
	     VAL <= BND - CST.

	     If TYPE is unsigned, we must additionally know that OP0 >= CST,
	     otherwise the operation underflows.
	   */

	  /* This should only happen if the type is unsigned; however, for
	     programs that use overflowing signed arithmetics even with
	     -fno-wrapv, this condition may also be true for signed values.  */
	  if (FUNC12 (bnd, cst) < 0)
	    return max;

	  if (FUNC6 (type)
	      && !FUNC14 (additional,
				op0, FUNC11 (type, cst)))
	    return max;

	  bnd = FUNC7 (bnd, FUNC8 (cst));
	}

      return bnd;

    case FLOOR_DIV_EXPR:
    case EXACT_DIV_EXPR:
      op0 = FUNC2 (val, 0);
      op1 = FUNC2 (val, 1);
      if (FUNC1 (op1) != INTEGER_CST
	  || FUNC16 (op1))
	return max;

      bnd = FUNC19 (op0, additional);
      return FUNC13 (bnd, FUNC17 (op1), FLOOR_DIV_EXPR);

    default: 
      return max;
    }
}