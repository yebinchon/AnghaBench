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
#define  BIT_AND_EXPR 143 
 int const BOOLEAN_TYPE ; 
#define  CLEANUP_POINT_EXPR 142 
#define  COMPOUND_EXPR 141 
#define  COND_EXPR 140 
#define  CONVERT_EXPR 139 
 int EQ_EXPR ; 
 int ERROR_MARK ; 
#define  FLOAT_EXPR 138 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  INTEGER_CST 137 
 int NE_EXPR ; 
#define  NON_LVALUE_EXPR 136 
#define  NOP_EXPR 135 
 int /*<<< orphan*/  NULL_TREE ; 
 int ORDERED_EXPR ; 
#define  SAVE_EXPR 134 
 int const FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  TRUTH_ANDIF_EXPR 133 
#define  TRUTH_AND_EXPR 132 
#define  TRUTH_NOT_EXPR 131 
#define  TRUTH_ORIF_EXPR 130 
#define  TRUTH_OR_EXPR 129 
#define  TRUTH_XOR_EXPR 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int UNORDERED_EXPR ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ flag_trapping_math ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ tcc_comparison ; 

tree
FUNC17 (tree arg)
{
  tree type = FUNC5 (arg);
  enum tree_code code = FUNC2 (arg);

  /* If this is a comparison, we can simply invert it, except for
     floating-point non-equality comparisons, in which case we just
     enclose a TRUTH_NOT_EXPR around what we have.  */

  if (FUNC3 (code) == tcc_comparison)
    {
      tree op_type = FUNC5 (FUNC4 (arg, 0));
      if (FUNC0 (op_type)
	  && flag_trapping_math
	  && code != ORDERED_EXPR && code != UNORDERED_EXPR
	  && code != NE_EXPR && code != EQ_EXPR)
	return NULL_TREE;
      else
	{
	  code = FUNC15 (code,
					 FUNC1 (FUNC6 (op_type)));
	  if (code == ERROR_MARK)
	    return NULL_TREE;
	  else
	    return FUNC9 (code, type,
			   FUNC4 (arg, 0), FUNC4 (arg, 1));
	}
    }

  switch (code)
    {
    case INTEGER_CST:
      return FUNC12 (FUNC14 (arg), type);

    case TRUTH_AND_EXPR:
      return FUNC9 (TRUTH_OR_EXPR, type,
		     FUNC16 (FUNC4 (arg, 0)),
		     FUNC16 (FUNC4 (arg, 1)));

    case TRUTH_OR_EXPR:
      return FUNC9 (TRUTH_AND_EXPR, type,
		     FUNC16 (FUNC4 (arg, 0)),
		     FUNC16 (FUNC4 (arg, 1)));

    case TRUTH_XOR_EXPR:
      /* Here we can invert either operand.  We invert the first operand
	 unless the second operand is a TRUTH_NOT_EXPR in which case our
	 result is the XOR of the first operand with the inside of the
	 negation of the second operand.  */

      if (FUNC2 (FUNC4 (arg, 1)) == TRUTH_NOT_EXPR)
	return FUNC9 (TRUTH_XOR_EXPR, type, FUNC4 (arg, 0),
		       FUNC4 (FUNC4 (arg, 1), 0));
      else
	return FUNC9 (TRUTH_XOR_EXPR, type,
		       FUNC16 (FUNC4 (arg, 0)),
		       FUNC4 (arg, 1));

    case TRUTH_ANDIF_EXPR:
      return FUNC9 (TRUTH_ORIF_EXPR, type,
		     FUNC16 (FUNC4 (arg, 0)),
		     FUNC16 (FUNC4 (arg, 1)));

    case TRUTH_ORIF_EXPR:
      return FUNC9 (TRUTH_ANDIF_EXPR, type,
		     FUNC16 (FUNC4 (arg, 0)),
		     FUNC16 (FUNC4 (arg, 1)));

    case TRUTH_NOT_EXPR:
      return FUNC4 (arg, 0);

    case COND_EXPR:
      {
	tree arg1 = FUNC4 (arg, 1);
	tree arg2 = FUNC4 (arg, 2);
	/* A COND_EXPR may have a throw as one operand, which
	   then has void type.  Just leave void operands
	   as they are.  */
	return FUNC10 (COND_EXPR, type, FUNC4 (arg, 0),
		       FUNC7 (FUNC5 (arg1))
		       ? arg1 : FUNC16 (arg1),
		       FUNC7 (FUNC5 (arg2))
		       ? arg2 : FUNC16 (arg2));
      }

    case COMPOUND_EXPR:
      return FUNC9 (COMPOUND_EXPR, type, FUNC4 (arg, 0),
		     FUNC16 (FUNC4 (arg, 1)));

    case NON_LVALUE_EXPR:
      return FUNC16 (FUNC4 (arg, 0));

    case NOP_EXPR:
      if (FUNC2 (FUNC5 (arg)) == BOOLEAN_TYPE)
	return FUNC8 (TRUTH_NOT_EXPR, type, arg);

    case CONVERT_EXPR:
    case FLOAT_EXPR:
      return FUNC8 (FUNC2 (arg), type,
		     FUNC16 (FUNC4 (arg, 0)));

    case BIT_AND_EXPR:
      if (!FUNC13 (FUNC4 (arg, 1)))
	break;
      return FUNC9 (EQ_EXPR, type, arg,
		     FUNC11 (type, 0));

    case SAVE_EXPR:
      return FUNC8 (TRUTH_NOT_EXPR, type, arg);

    case CLEANUP_POINT_EXPR:
      return FUNC8 (CLEANUP_POINT_EXPR, type,
		     FUNC16 (FUNC4 (arg, 0)));

    default:
      break;
    }

  return NULL_TREE;
}