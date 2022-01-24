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
struct algorithm {int dummy; } ;
typedef  scalar_t__ rtx ;
typedef  enum mult_variant { ____Placeholder_mult_variant } mult_variant ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ CONST_DOUBLE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int HOST_BITS_PER_WIDE_INT ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ LAST_VIRTUAL_REGISTER ; 
 int /*<<< orphan*/  LSHIFT_EXPR ; 
 scalar_t__ MODE_INT ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  OPTAB_LIB_WIDEN ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  SET ; 
 int /*<<< orphan*/  add_optab ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (int,scalar_t__,struct algorithm*,int*,int) ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ const1_rtx ; 
 scalar_t__ constm1_rtx ; 
 int /*<<< orphan*/  dconst2 ; 
 scalar_t__ FUNC14 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int,scalar_t__,scalar_t__,scalar_t__,struct algorithm*,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC17 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ flag_trapv ; 
 int FUNC18 (scalar_t__) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 scalar_t__ FUNC21 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int,scalar_t__,scalar_t__) ; 
 int* neg_cost ; 
 int /*<<< orphan*/  neg_optab ; 
 int /*<<< orphan*/  negv_optab ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smul_optab ; 
 int /*<<< orphan*/  smulv_optab ; 

rtx
FUNC24 (enum machine_mode mode, rtx op0, rtx op1, rtx target,
	     int unsignedp)
{
  enum mult_variant variant;
  struct algorithm algorithm;
  int max_cost;

  /* Handling const0_rtx here allows us to use zero as a rogue value for
     coeff below.  */
  if (op1 == const0_rtx)
    return const0_rtx;
  if (op1 == const1_rtx)
    return op0;
  if (op1 == constm1_rtx)
    return FUNC17 (mode,
			FUNC6 (mode) == MODE_INT
			&& !unsignedp && flag_trapv
			? negv_optab : neg_optab,
			op0, target, 0);

  /* These are the operations that are potentially turned into a sequence
     of shifts and additions.  */
  if (FUNC11 (mode)
      && (unsignedp || !flag_trapv))
    {
      HOST_WIDE_INT coeff = 0;
      rtx fake_reg = FUNC21 (mode, LAST_VIRTUAL_REGISTER + 1);

      /* synth_mult does an `unsigned int' multiply.  As long as the mode is
	 less than or equal in size to `unsigned int' this doesn't matter.
	 If the mode is larger than `unsigned int', then synth_mult works
	 only if the constant value exactly fits in an `unsigned int' without
	 any truncation.  This means that multiplying by negative values does
	 not work; results are off by 2^32 on a 32 bit machine.  */

      if (FUNC3 (op1) == CONST_INT)
	{
	  /* Attempt to handle multiplication of DImode values by negative
	     coefficients, by performing the multiplication by a positive
	     multiplier and then inverting the result.  */
	  if (FUNC7 (op1) < 0
	      && FUNC5 (mode) > HOST_BITS_PER_WIDE_INT)
	    {
	      /* Its safe to use -INTVAL (op1) even for INT_MIN, as the
		 result is interpreted as an unsigned coefficient.
		 Exclude cost of op0 from max_cost to match the cost
		 calculation of the synth_mult.  */
	      max_cost = FUNC23 (FUNC22 (mode, fake_reg, op1), SET)
			 - neg_cost[mode];
	      if (max_cost > 0
		  && FUNC13 (mode, -FUNC7 (op1), &algorithm,
					  &variant, max_cost))
		{
		  rtx temp = FUNC15 (mode, op0, -FUNC7 (op1),
						NULL_RTX, &algorithm,
						variant);
		  return FUNC17 (mode, neg_optab, temp, target, 0);
		}
	    }
	  else coeff = FUNC7 (op1);
	}
      else if (FUNC3 (op1) == CONST_DOUBLE)
	{
	  /* If we are multiplying in DImode, it may still be a win
	     to try to work with shifts and adds.  */
	  if (FUNC0 (op1) == 0)
	    coeff = FUNC1 (op1);
	  else if (FUNC1 (op1) == 0
		   && FUNC2 (FUNC0 (op1)))
	    {
	      int shift = FUNC18 (FUNC0 (op1))
			  + HOST_BITS_PER_WIDE_INT;
	      return FUNC16 (LSHIFT_EXPR, mode, op0,
				   FUNC12 (NULL_TREE, shift),
				   target, unsignedp);
	    }
	}
        
      /* We used to test optimize here, on the grounds that it's better to
	 produce a smaller program when -O is not used.  But this causes
	 such a terrible slowdown sometimes that it seems better to always
	 use synth_mult.  */
      if (coeff != 0)
	{
	  /* Special case powers of two.  */
	  if (FUNC2 (coeff))
	    return FUNC16 (LSHIFT_EXPR, mode, op0,
				 FUNC12 (NULL_TREE, FUNC18 (coeff)),
				 target, unsignedp);

	  /* Exclude cost of op0 from max_cost to match the cost
	     calculation of the synth_mult.  */
	  max_cost = FUNC23 (FUNC22 (mode, fake_reg, op1), SET);
	  if (FUNC13 (mode, coeff, &algorithm, &variant,
				   max_cost))
	    return FUNC15 (mode, op0, coeff, target,
				      &algorithm, variant);
	}
    }

  if (FUNC3 (op0) == CONST_DOUBLE)
    {
      rtx temp = op0;
      op0 = op1;
      op1 = temp;
    }

  /* Expand x*2.0 as x+x.  */
  if (FUNC3 (op1) == CONST_DOUBLE
      && FUNC10 (mode))
    {
      REAL_VALUE_TYPE d;
      FUNC9 (d, op1);

      if (FUNC8 (d, dconst2))
	{
	  op0 = FUNC19 (FUNC4 (op0), op0);
	  return FUNC14 (mode, add_optab, op0, op0,
			       target, unsignedp, OPTAB_LIB_WIDEN);
	}
    }

  /* This used to use umul_optab if unsigned, but for non-widening multiply
     there is no difference between signed and unsigned.  */
  op0 = FUNC14 (mode,
		      ! unsignedp
		      && flag_trapv && (FUNC6(mode) == MODE_INT)
		      ? smulv_optab : smul_optab,
		      op0, op1, target, unsignedp, OPTAB_LIB_WIDEN);
  FUNC20 (op0);
  return op0;
}