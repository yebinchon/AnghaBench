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
struct table_elt {scalar_t__ exp; struct table_elt* next_same_value; scalar_t__ is_const; struct table_elt* first_same_value; } ;
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  scalar_t__ REAL_VALUE_TYPE ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ COMPARE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int EQ ; 
 scalar_t__ FUNC2 (int) ; 
 int GE ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int HOST_BITS_PER_WIDE_INT ; 
 int LT ; 
 scalar_t__ MODE_INT ; 
 int NE ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 
 scalar_t__ FUNC9 (int) ; 
 int STORE_FLAG_VALUE ; 
 int UNKNOWN ; 
 scalar_t__ FUNC10 (scalar_t__,int) ; 
 scalar_t__ const0_rtx ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,int,int) ; 
 scalar_t__ FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct table_elt* FUNC13 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 

__attribute__((used)) static enum rtx_code
FUNC16 (enum rtx_code code, rtx *parg1, rtx *parg2,
		      enum machine_mode *pmode1, enum machine_mode *pmode2)
{
  rtx arg1, arg2;

  arg1 = *parg1, arg2 = *parg2;

  /* If ARG2 is const0_rtx, see what ARG1 is equivalent to.  */

  while (arg2 == FUNC1 (FUNC4 (arg1)))
    {
      /* Set nonzero when we find something of interest.  */
      rtx x = 0;
      int reverse_code = 0;
      struct table_elt *p = 0;

      /* If arg1 is a COMPARE, extract the comparison arguments from it.
	 On machines with CC0, this is the only case that can occur, since
	 fold_rtx will return the COMPARE or item being compared with zero
	 when given CC0.  */

      if (FUNC3 (arg1) == COMPARE && arg2 == const0_rtx)
	x = arg1;

      /* If ARG1 is a comparison operator and CODE is testing for
	 STORE_FLAG_VALUE, get the inner arguments.  */

      else if (FUNC0 (arg1))
	{
#ifdef FLOAT_STORE_FLAG_VALUE
	  REAL_VALUE_TYPE fsfv;
#endif

	  if (code == NE
	      || (FUNC6 (FUNC4 (arg1)) == MODE_INT
		  && code == LT && STORE_FLAG_VALUE == -1)
#ifdef FLOAT_STORE_FLAG_VALUE
	      || (SCALAR_FLOAT_MODE_P (GET_MODE (arg1))
		  && (fsfv = FLOAT_STORE_FLAG_VALUE (GET_MODE (arg1)),
		      REAL_VALUE_NEGATIVE (fsfv)))
#endif
	      )
	    x = arg1;
	  else if (code == EQ
		   || (FUNC6 (FUNC4 (arg1)) == MODE_INT
		       && code == GE && STORE_FLAG_VALUE == -1)
#ifdef FLOAT_STORE_FLAG_VALUE
		   || (SCALAR_FLOAT_MODE_P (GET_MODE (arg1))
		       && (fsfv = FLOAT_STORE_FLAG_VALUE (GET_MODE (arg1)),
			   REAL_VALUE_NEGATIVE (fsfv)))
#endif
		   )
	    x = arg1, reverse_code = 1;
	}

      /* ??? We could also check for

	 (ne (and (eq (...) (const_int 1))) (const_int 0))

	 and related forms, but let's wait until we see them occurring.  */

      if (x == 0)
	/* Look up ARG1 in the hash table and see if it has an equivalence
	   that lets us see what is being compared.  */
	p = FUNC13 (arg1, FUNC8 (arg1, FUNC4 (arg1)), FUNC4 (arg1));
      if (p)
	{
	  p = p->first_same_value;

	  /* If what we compare is already known to be constant, that is as
	     good as it gets.
	     We need to break the loop in this case, because otherwise we
	     can have an infinite loop when looking at a reg that is known
	     to be a constant which is the same as a comparison of a reg
	     against zero which appears later in the insn stream, which in
	     turn is constant and the same as the comparison of the first reg
	     against zero...  */
	  if (p->is_const)
	    break;
	}

      for (; p; p = p->next_same_value)
	{
	  enum machine_mode inner_mode = FUNC4 (p->exp);
#ifdef FLOAT_STORE_FLAG_VALUE
	  REAL_VALUE_TYPE fsfv;
#endif

	  /* If the entry isn't valid, skip it.  */
	  if (! FUNC11 (p->exp, p->exp, 1, false))
	    continue;

	  if (FUNC3 (p->exp) == COMPARE
	      /* Another possibility is that this machine has a compare insn
		 that includes the comparison code.  In that case, ARG1 would
		 be equivalent to a comparison operation that would set ARG1 to
		 either STORE_FLAG_VALUE or zero.  If this is an NE operation,
		 ORIG_CODE is the actual comparison being done; if it is an EQ,
		 we must reverse ORIG_CODE.  On machine with a negative value
		 for STORE_FLAG_VALUE, also look at LT and GE operations.  */
	      || ((code == NE
		   || (code == LT
		       && FUNC6 (inner_mode) == MODE_INT
		       && (FUNC5 (inner_mode)
			   <= HOST_BITS_PER_WIDE_INT)
		       && (STORE_FLAG_VALUE
			   & ((HOST_WIDE_INT) 1
			      << (FUNC5 (inner_mode) - 1))))
#ifdef FLOAT_STORE_FLAG_VALUE
		   || (code == LT
		       && SCALAR_FLOAT_MODE_P (inner_mode)
		       && (fsfv = FLOAT_STORE_FLAG_VALUE (GET_MODE (arg1)),
			   REAL_VALUE_NEGATIVE (fsfv)))
#endif
		   )
		  && FUNC0 (p->exp)))
	    {
	      x = p->exp;
	      break;
	    }
	  else if ((code == EQ
		    || (code == GE
			&& FUNC6 (inner_mode) == MODE_INT
			&& (FUNC5 (inner_mode)
			    <= HOST_BITS_PER_WIDE_INT)
			&& (STORE_FLAG_VALUE
			    & ((HOST_WIDE_INT) 1
			       << (FUNC5 (inner_mode) - 1))))
#ifdef FLOAT_STORE_FLAG_VALUE
		    || (code == GE
			&& SCALAR_FLOAT_MODE_P (inner_mode)
			&& (fsfv = FLOAT_STORE_FLAG_VALUE (GET_MODE (arg1)),
			    REAL_VALUE_NEGATIVE (fsfv)))
#endif
		    )
		   && FUNC0 (p->exp))
	    {
	      reverse_code = 1;
	      x = p->exp;
	      break;
	    }

	  /* If this non-trapping address, e.g. fp + constant, the
	     equivalent is a better operand since it may let us predict
	     the value of the comparison.  */
	  else if (!FUNC15 (p->exp))
	    {
	      arg1 = p->exp;
	      continue;
	    }
	}

      /* If we didn't find a useful equivalence for ARG1, we are done.
	 Otherwise, set up for the next iteration.  */
      if (x == 0)
	break;

      /* If we need to reverse the comparison, make sure that that is
	 possible -- we can't necessarily infer the value of GE from LT
	 with floating-point operands.  */
      if (reverse_code)
	{
	  enum rtx_code reversed = FUNC14 (x, NULL_RTX);
	  if (reversed == UNKNOWN)
	    break;
	  else
	    code = reversed;
	}
      else if (FUNC0 (x))
	code = FUNC3 (x);
      arg1 = FUNC10 (x, 0), arg2 = FUNC10 (x, 1);
    }

  /* Return our results.  Return the modes from before fold_rtx
     because fold_rtx might produce const_int, and then it's too late.  */
  *pmode1 = FUNC4 (arg1), *pmode2 = FUNC4 (arg2);
  *parg1 = FUNC12 (arg1, 0), *parg2 = FUNC12 (arg2, 0);

  return code;
}