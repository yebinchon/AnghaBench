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
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
 scalar_t__ COMPLEX_CST ; 
#define  EQ_EXPR 141 
#define  GE_EXPR 140 
#define  GT_EXPR 139 
 scalar_t__ INTEGER_CST ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  LE_EXPR 138 
#define  LTGT_EXPR 137 
#define  LT_EXPR 136 
#define  NE_EXPR 135 
 int /*<<< orphan*/  NULL_TREE ; 
#define  ORDERED_EXPR 134 
 scalar_t__ REAL_CST ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUTH_ANDIF_EXPR ; 
 int /*<<< orphan*/  TRUTH_ORIF_EXPR ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
#define  UNEQ_EXPR 133 
#define  UNGE_EXPR 132 
#define  UNGT_EXPR 131 
#define  UNLE_EXPR 130 
#define  UNLT_EXPR 129 
#define  UNORDERED_EXPR 128 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flag_trapping_math ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (int,int) ; 
 int FUNC12 (int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/  const*) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC16 (enum tree_code code, tree type, tree op0, tree op1)
{
  int result, invert;

  /* From here on, the only cases we handle are when the result is
     known to be a constant.  */

  if (FUNC2 (op0) == REAL_CST && FUNC2 (op1) == REAL_CST)
    {
      const REAL_VALUE_TYPE *c0 = FUNC5 (op0);
      const REAL_VALUE_TYPE *c1 = FUNC5 (op1);

      /* Handle the cases where either operand is a NaN.  */
      if (FUNC13 (c0) || FUNC13 (c1))
	{
	  switch (code)
	    {
	    case EQ_EXPR:
	    case ORDERED_EXPR:
	      result = 0;
	      break;

	    case NE_EXPR:
	    case UNORDERED_EXPR:
	    case UNLT_EXPR:
	    case UNLE_EXPR:
	    case UNGT_EXPR:
	    case UNGE_EXPR:
	    case UNEQ_EXPR:
              result = 1;
	      break;

	    case LT_EXPR:
	    case LE_EXPR:
	    case GT_EXPR:
	    case GE_EXPR:
	    case LTGT_EXPR:
	      if (flag_trapping_math)
		return NULL_TREE;
	      result = 0;
	      break;

	    default:
	      FUNC10 ();
	    }

	  return FUNC8 (result, type);
	}

      return FUNC8 (FUNC12 (code, c0, c1), type);
    }

  /* Handle equality/inequality of complex constants.  */
  if (FUNC2 (op0) == COMPLEX_CST && FUNC2 (op1) == COMPLEX_CST)
    {
      tree rcond = FUNC16 (code, type,
					  FUNC4 (op0),
					  FUNC4 (op1));
      tree icond = FUNC16 (code, type,
					  FUNC3 (op0),
					  FUNC3 (op1));
      if (code == EQ_EXPR)
	return FUNC9 (TRUTH_ANDIF_EXPR, type, rcond, icond);
      else if (code == NE_EXPR)
	return FUNC9 (TRUTH_ORIF_EXPR, type, rcond, icond);
      else
	return NULL_TREE;
    }

  /* From here on we only handle LT, LE, GT, GE, EQ and NE.

     To compute GT, swap the arguments and do LT.
     To compute GE, do LT and invert the result.
     To compute LE, swap the arguments, do LT and invert the result.
     To compute NE, do EQ and invert the result.

     Therefore, the code below must handle only EQ and LT.  */

  if (code == LE_EXPR || code == GT_EXPR)
    {
      tree tem = op0;
      op0 = op1;
      op1 = tem;
      code = FUNC14 (code);
    }

  /* Note that it is safe to invert for real values here because we
     have already handled the one case that it matters.  */

  invert = 0;
  if (code == NE_EXPR || code == GE_EXPR)
    {
      invert = 1;
      code = FUNC11 (code, false);
    }

  /* Compute a result for LT or EQ if args permit;
     Otherwise return T.  */
  if (FUNC2 (op0) == INTEGER_CST && FUNC2 (op1) == INTEGER_CST)
    {
      if (code == EQ_EXPR)
	result = FUNC15 (op0, op1);
      else if (FUNC7 (FUNC6 (op0)))
	result = FUNC1 (op0, op1);
      else
	result = FUNC0 (op0, op1);
    }
  else
    return NULL_TREE;

  if (invert)
    result ^= 1;
  return FUNC8 (result, type);
}