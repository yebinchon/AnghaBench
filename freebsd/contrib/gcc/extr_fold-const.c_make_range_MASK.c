#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_3__ {scalar_t__ (* type_for_mode ) (int /*<<< orphan*/ ,int) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;

/* Variables and functions */
#define  BIT_NOT_EXPR 141 
#define  CONVERT_EXPR 140 
#define  EQ_EXPR 139 
#define  GE_EXPR 138 
#define  GT_EXPR 137 
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
#define  LE_EXPR 136 
#define  LT_EXPR 135 
#define  MINUS_EXPR 134 
#define  NEGATE_EXPR 133 
#define  NE_EXPR 132 
#define  NON_LVALUE_EXPR 131 
#define  NOP_EXPR 130 
 scalar_t__ NULL_TREE ; 
#define  PLUS_EXPR 129 
 int /*<<< orphan*/  RSHIFT_EXPR ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
#define  TRUTH_NOT_EXPR 128 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (int,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__) ; 
 scalar_t__ integer_one_node ; 
 scalar_t__ FUNC19 (scalar_t__) ; 
 scalar_t__ integer_type_node ; 
 scalar_t__ integer_zero_node ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 TYPE_2__ lang_hooks ; 
 int /*<<< orphan*/  FUNC21 (int*,scalar_t__*,scalar_t__*,int,scalar_t__,scalar_t__,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__) ; 
 scalar_t__ FUNC23 (int const,scalar_t__,scalar_t__,int,scalar_t__,int) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ tcc_binary ; 
 scalar_t__ tcc_comparison ; 
 scalar_t__ tcc_expression ; 
 scalar_t__ tcc_unary ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static tree
FUNC27 (tree exp, int *pin_p, tree *plow, tree *phigh,
	    bool *strict_overflow_p)
{
  enum tree_code code;
  tree arg0 = NULL_TREE, arg1 = NULL_TREE;
  tree exp_type = NULL_TREE, arg0_type = NULL_TREE;
  int in_p, n_in_p;
  tree low, high, n_low, n_high;

  /* Start with simply saying "EXP != 0" and then look at the code of EXP
     and see if we can refine the range.  Some of the cases below may not
     happen, but it doesn't seem worth worrying about this.  We "continue"
     the outer loop when we've changed something; otherwise we "break"
     the switch, which will "break" the while.  */

  in_p = 0;
  low = high = FUNC14 (FUNC7 (exp), 0);

  while (1)
    {
      code = FUNC2 (exp);
      exp_type = FUNC7 (exp);

      if (FUNC1 (FUNC3 (code)))
	{
	  if (FUNC4 (code) > 0)
	    arg0 = FUNC5 (exp, 0);
	  if (FUNC3 (code) == tcc_comparison
	      || FUNC3 (code) == tcc_unary
	      || FUNC3 (code) == tcc_binary)
	    arg0_type = FUNC7 (arg0);
	  if (FUNC3 (code) == tcc_binary
	      || FUNC3 (code) == tcc_comparison
	      || (FUNC3 (code) == tcc_expression
		  && FUNC4 (code) > 1))
	    arg1 = FUNC5 (exp, 1);
	}

      switch (code)
	{
	case TRUTH_NOT_EXPR:
	  in_p = ! in_p, exp = arg0;
	  continue;

	case EQ_EXPR: case NE_EXPR:
	case LT_EXPR: case LE_EXPR: case GE_EXPR: case GT_EXPR:
	  /* We can only do something if the range is testing for zero
	     and if the second operand is an integer constant.  Note that
	     saying something is "in" the range we make is done by
	     complementing IN_P since it will set in the initial case of
	     being not equal to zero; "out" is leaving it alone.  */
	  if (low == 0 || high == 0
	      || ! FUNC20 (low) || ! FUNC20 (high)
	      || FUNC2 (arg1) != INTEGER_CST)
	    break;

	  switch (code)
	    {
	    case NE_EXPR:  /* - [c, c]  */
	      low = high = arg1;
	      break;
	    case EQ_EXPR:  /* + [c, c]  */
	      in_p = ! in_p, low = high = arg1;
	      break;
	    case GT_EXPR:  /* - [-, c] */
	      low = 0, high = arg1;
	      break;
	    case GE_EXPR:  /* + [c, -] */
	      in_p = ! in_p, low = arg1, high = 0;
	      break;
	    case LT_EXPR:  /* - [c, -] */
	      low = arg1, high = 0;
	      break;
	    case LE_EXPR:  /* + [-, c] */
	      in_p = ! in_p, low = 0, high = arg1;
	      break;
	    default:
	      FUNC17 ();
	    }

	  /* If this is an unsigned comparison, we also know that EXP is
	     greater than or equal to zero.  We base the range tests we make
	     on that fact, so we record it here so we can parse existing
	     range tests.  We test arg0_type since often the return type
	     of, e.g. EQ_EXPR, is boolean.  */
	  if (FUNC12 (arg0_type) && (low == 0 || high == 0))
	    {
	      if (! FUNC21 (&n_in_p, &n_low, &n_high,
				  in_p, low, high, 1,
				  FUNC14 (arg0_type, 0),
				  NULL_TREE))
		break;

	      in_p = n_in_p, low = n_low, high = n_high;

	      /* If the high bound is missing, but we have a nonzero low
		 bound, reverse the range so it goes from zero to the low bound
		 minus 1.  */
	      if (high == 0 && low && ! FUNC20 (low))
		{
		  in_p = ! in_p;
		  high = FUNC23 (MINUS_EXPR, NULL_TREE, low, 0,
				      integer_one_node, 0);
		  low = FUNC14 (arg0_type, 0);
		}
	    }

	  exp = arg0;
	  continue;

	case NEGATE_EXPR:
	  /* (-x) IN [a,b] -> x in [-b, -a]  */
	  n_low = FUNC23 (MINUS_EXPR, exp_type,
			       FUNC14 (exp_type, 0),
			       0, high, 1);
	  n_high = FUNC23 (MINUS_EXPR, exp_type,
				FUNC14 (exp_type, 0),
				0, low, 0);
	  low = n_low, high = n_high;
	  exp = arg0;
	  continue;

	case BIT_NOT_EXPR:
	  /* ~ X -> -X - 1  */
	  exp = FUNC13 (MINUS_EXPR, exp_type, FUNC22 (arg0),
			FUNC14 (exp_type, 1));
	  continue;

	case PLUS_EXPR:  case MINUS_EXPR:
	  if (FUNC2 (arg1) != INTEGER_CST)
	    break;

	  /* If flag_wrapv and ARG0_TYPE is signed, then we cannot
	     move a constant to the other side.  */
	  if (!FUNC12 (arg0_type)
	      && !FUNC10 (arg0_type))
	    break;

	  /* If EXP is signed, any overflow in the computation is undefined,
	     so we don't worry about it so long as our computations on
	     the bounds don't overflow.  For unsigned, overflow is defined
	     and this is exactly the right thing.  */
	  n_low = FUNC23 (code == MINUS_EXPR ? PLUS_EXPR : MINUS_EXPR,
			       arg0_type, low, 0, arg1, 0);
	  n_high = FUNC23 (code == MINUS_EXPR ? PLUS_EXPR : MINUS_EXPR,
				arg0_type, high, 1, arg1, 0);
	  if ((n_low != 0 && FUNC6 (n_low))
	      || (n_high != 0 && FUNC6 (n_high)))
	    break;

	  if (FUNC10 (arg0_type))
	    *strict_overflow_p = true;

	  /* Check for an unsigned range which has wrapped around the maximum
	     value thus making n_high < n_low, and normalize it.  */
	  if (n_low && n_high && FUNC26 (n_high, n_low))
	    {
	      low = FUNC23 (PLUS_EXPR, arg0_type, n_high, 0,
				 integer_one_node, 0);
	      high = FUNC23 (MINUS_EXPR, arg0_type, n_low, 0,
				  integer_one_node, 0);

	      /* If the range is of the form +/- [ x+1, x ], we won't
		 be able to normalize it.  But then, it represents the
		 whole range or the empty set, so make it
		 +/- [ -, - ].  */
	      if (FUNC25 (n_low, low)
		  && FUNC25 (n_high, high))
		low = high = 0;
	      else
		in_p = ! in_p;
	    }
	  else
	    low = n_low, high = n_high;

	  exp = arg0;
	  continue;

	case NOP_EXPR:  case NON_LVALUE_EXPR:  case CONVERT_EXPR:
	  if (FUNC11 (arg0_type) > FUNC11 (exp_type))
	    break;

	  if (! FUNC0 (arg0_type)
	      || (low != 0 && ! FUNC18 (low, arg0_type))
	      || (high != 0 && ! FUNC18 (high, arg0_type)))
	    break;

	  n_low = low, n_high = high;

	  if (n_low != 0)
	    n_low = FUNC16 (arg0_type, n_low);

	  if (n_high != 0)
	    n_high = FUNC16 (arg0_type, n_high);


	  /* If we're converting arg0 from an unsigned type, to exp,
	     a signed type,  we will be doing the comparison as unsigned.
	     The tests above have already verified that LOW and HIGH
	     are both positive.

	     So we have to ensure that we will handle large unsigned
	     values the same way that the current signed bounds treat
	     negative values.  */

	  if (!FUNC12 (exp_type) && FUNC12 (arg0_type))
	    {
	      tree high_positive;
	      tree equiv_type = lang_hooks.types.type_for_mode
		(FUNC9 (arg0_type), 1);

	      /* A range without an upper bound is, naturally, unbounded.
		 Since convert would have cropped a very large value, use
		 the max value for the destination type.  */
	      high_positive
		= FUNC8 (equiv_type) ? FUNC8 (equiv_type)
		: FUNC8 (arg0_type);

	      if (FUNC11 (exp_type) == FUNC11 (arg0_type))
		high_positive = FUNC15 (RSHIFT_EXPR, arg0_type,
					     FUNC16 (arg0_type,
							   high_positive),
					     FUNC16 (arg0_type,
							   integer_one_node));

	      /* If the low bound is specified, "and" the range with the
		 range for which the original unsigned value will be
		 positive.  */
	      if (low != 0)
		{
		  if (! FUNC21 (&n_in_p, &n_low, &n_high,
				      1, n_low, n_high, 1,
				      FUNC16 (arg0_type,
						    integer_zero_node),
				      high_positive))
		    break;

		  in_p = (n_in_p == in_p);
		}
	      else
		{
		  /* Otherwise, "or" the range with the range of the input
		     that will be interpreted as negative.  */
		  if (! FUNC21 (&n_in_p, &n_low, &n_high,
				      0, n_low, n_high, 1,
				      FUNC16 (arg0_type,
						    integer_zero_node),
				      high_positive))
		    break;

		  in_p = (in_p != n_in_p);
		}
	    }

	  exp = arg0;
	  low = n_low, high = n_high;
	  continue;

	default:
	  break;
	}

      break;
    }

  /* If EXP is a constant, we can evaluate whether this is true or false.  */
  if (FUNC2 (exp) == INTEGER_CST)
    {
      in_p = in_p == (FUNC19 (FUNC23 (GE_EXPR, integer_type_node,
						 exp, 0, low, 0))
		      && FUNC19 (FUNC23 (LE_EXPR, integer_type_node,
						    exp, 1, high, 1)));
      low = high = 0;
      exp = 0;
    }

  *pin_p = in_p, *plow = low, *phigh = high;
  return exp;
}