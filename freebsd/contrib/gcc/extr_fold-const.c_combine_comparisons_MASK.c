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
typedef  enum comparison_code { ____Placeholder_comparison_code } comparison_code ;

/* Variables and functions */
 int COMPCODE_EQ ; 
 int COMPCODE_FALSE ; 
 int COMPCODE_LTGT ; 
 int COMPCODE_NE ; 
 int COMPCODE_ORD ; 
 int COMPCODE_TRUE ; 
 int COMPCODE_UNORD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  TRUTH_ANDIF_EXPR 131 
#define  TRUTH_AND_EXPR 130 
#define  TRUTH_ORIF_EXPR 129 
#define  TRUTH_OR_EXPR 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ flag_trapping_math ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tree
FUNC7 (enum tree_code code, enum tree_code lcode,
		     enum tree_code rcode, tree truth_type,
		     tree ll_arg, tree lr_arg)
{
  bool honor_nans = FUNC0 (FUNC2 (FUNC1 (ll_arg)));
  enum comparison_code lcompcode = FUNC3 (lcode);
  enum comparison_code rcompcode = FUNC3 (rcode);
  enum comparison_code compcode;

  switch (code)
    {
    case TRUTH_AND_EXPR: case TRUTH_ANDIF_EXPR:
      compcode = lcompcode & rcompcode;
      break;

    case TRUTH_OR_EXPR: case TRUTH_ORIF_EXPR:
      compcode = lcompcode | rcompcode;
      break;

    default:
      return NULL_TREE;
    }

  if (!honor_nans)
    {
      /* Eliminate unordered comparisons, as well as LTGT and ORD
	 which are not used unless the mode has NaNs.  */
      compcode &= ~COMPCODE_UNORD;
      if (compcode == COMPCODE_LTGT)
	compcode = COMPCODE_NE;
      else if (compcode == COMPCODE_ORD)
	compcode = COMPCODE_TRUE;
    }
   else if (flag_trapping_math)
     {
	/* Check that the original operation and the optimized ones will trap
	   under the same condition.  */
	bool ltrap = (lcompcode & COMPCODE_UNORD) == 0
		     && (lcompcode != COMPCODE_EQ)
		     && (lcompcode != COMPCODE_ORD);
	bool rtrap = (rcompcode & COMPCODE_UNORD) == 0
		     && (rcompcode != COMPCODE_EQ)
		     && (rcompcode != COMPCODE_ORD);
	bool trap = (compcode & COMPCODE_UNORD) == 0
		    && (compcode != COMPCODE_EQ)
		    && (compcode != COMPCODE_ORD);

        /* In a short-circuited boolean expression the LHS might be
	   such that the RHS, if evaluated, will never trap.  For
	   example, in ORD (x, y) && (x < y), we evaluate the RHS only
	   if neither x nor y is NaN.  (This is a mixed blessing: for
	   example, the expression above will never trap, hence
	   optimizing it to x < y would be invalid).  */
        if ((code == TRUTH_ORIF_EXPR && (lcompcode & COMPCODE_UNORD))
            || (code == TRUTH_ANDIF_EXPR && !(lcompcode & COMPCODE_UNORD)))
          rtrap = false;

        /* If the comparison was short-circuited, and only the RHS
	   trapped, we may now generate a spurious trap.  */
	if (rtrap && !ltrap
	    && (code == TRUTH_ANDIF_EXPR || code == TRUTH_ORIF_EXPR))
	  return NULL_TREE;

	/* If we changed the conditions that cause a trap, we lose.  */
	if ((ltrap || rtrap) != trap)
	  return NULL_TREE;
      }

  if (compcode == COMPCODE_TRUE)
    return FUNC5 (true, truth_type);
  else if (compcode == COMPCODE_FALSE)
    return FUNC5 (false, truth_type);
  else
    return FUNC6 (FUNC4 (compcode),
			truth_type, ll_arg, lr_arg);
}