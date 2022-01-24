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
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ CONST_DOUBLE ; 
#define  EQ 134 
#define  GE 133 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
#define  GT 132 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
#define  LE 131 
 int LT ; 
 int LTGT ; 
 int NE ; 
#define  ORDERED 130 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ TARGET_E500 ; 
 int /*<<< orphan*/  TARGET_FPRS ; 
 scalar_t__ TARGET_HARD_FLOAT ; 
 scalar_t__ TARGET_ISEL ; 
#define  UNEQ 129 
#define  UNGE 128 
 int UNGT ; 
 int UNLE ; 
 int UNLT ; 
 int UNORDERED ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ flag_trapping_math ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int) ; 
 int /*<<< orphan*/  rs6000_compare_fp_p ; 
 scalar_t__ rs6000_compare_op0 ; 
 scalar_t__ rs6000_compare_op1 ; 
 int FUNC18 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int /*<<< orphan*/ ) ; 

int
FUNC21 (rtx dest, rtx op, rtx true_cond, rtx false_cond)
{
  enum rtx_code code = FUNC1 (op);
  rtx op0 = rs6000_compare_op0;
  rtx op1 = rs6000_compare_op1;
  REAL_VALUE_TYPE c1;
  enum machine_mode compare_mode = FUNC2 (op0);
  enum machine_mode result_mode = FUNC2 (dest);
  rtx temp;
  bool is_against_zero;

  /* These modes should always match.  */
  if (FUNC2 (op1) != compare_mode
      /* In the isel case however, we can use a compare immediate, so
	 op1 may be a small constant.  */
      && (!TARGET_ISEL || !FUNC20 (op1, VOIDmode)))
    return 0;
  if (FUNC2 (true_cond) != result_mode)
    return 0;
  if (FUNC2 (false_cond) != result_mode)
    return 0;

  /* First, work out if the hardware can do this at all, or
     if it's too slow....  */
  if (! rs6000_compare_fp_p)
    {
      if (TARGET_ISEL)
	return FUNC18 (dest, op, true_cond, false_cond);
      return 0;
    }
  else if (TARGET_E500 && TARGET_HARD_FLOAT && !TARGET_FPRS
	   && FUNC6 (compare_mode))
    return 0;

  is_against_zero = op1 == FUNC0 (compare_mode);

  /* A floating-point subtract might overflow, underflow, or produce
     an inexact result, thus changing the floating-point flags, so it
     can't be generated if we care about that.  It's safe if one side
     of the construct is zero, since then no subtract will be
     generated.  */
  if (FUNC6 (compare_mode)
      && flag_trapping_math && ! is_against_zero)
    return 0;

  /* Eliminate half of the comparisons by switching operands, this
     makes the remaining code simpler.  */
  if (code == UNLT || code == UNGT || code == UNORDERED || code == NE
      || code == LTGT || code == LT || code == UNLE)
    {
      code = FUNC17 (code);
      temp = true_cond;
      true_cond = false_cond;
      false_cond = temp;
    }

  /* UNEQ and LTGT take four instructions for a comparison with zero,
     it'll probably be faster to use a branch here too.  */
  if (code == UNEQ && FUNC4 (compare_mode))
    return 0;

  if (FUNC1 (op1) == CONST_DOUBLE)
    FUNC5 (c1, op1);

  /* We're going to try to implement comparisons by performing
     a subtract, then comparing against zero.  Unfortunately,
     Inf - Inf is NaN which is not zero, and so if we don't
     know that the operand is finite and the comparison
     would treat EQ different to UNORDERED, we can't do it.  */
  if (FUNC3 (compare_mode)
      && code != GT && code != UNGE
      && (FUNC1 (op1) != CONST_DOUBLE || FUNC16 (&c1))
      /* Constructs of the form (a OP b ? a : b) are safe.  */
      && ((! FUNC19 (op0, false_cond) && ! FUNC19 (op1, false_cond))
	  || (! FUNC19 (op0, true_cond)
	      && ! FUNC19 (op1, true_cond))))
    return 0;

  /* At this point we know we can use fsel.  */

  /* Reduce the comparison to a comparison against zero.  */
  if (! is_against_zero)
    {
      temp = FUNC9 (compare_mode);
      FUNC7 (FUNC15 (VOIDmode, temp,
			      FUNC13 (compare_mode, op0, op1)));
      op0 = temp;
      op1 = FUNC0 (compare_mode);
    }

  /* If we don't care about NaNs we can reduce some of the comparisons
     down to faster ones.  */
  if (! FUNC4 (compare_mode))
    switch (code)
      {
      case GT:
	code = LE;
	temp = true_cond;
	true_cond = false_cond;
	false_cond = temp;
	break;
      case UNGE:
	code = GE;
	break;
      case UNEQ:
	code = EQ;
	break;
      default:
	break;
      }

  /* Now, reduce everything down to a GE.  */
  switch (code)
    {
    case GE:
      break;

    case LE:
      temp = FUNC9 (compare_mode);
      FUNC7 (FUNC15 (VOIDmode, temp, FUNC14 (compare_mode, op0)));
      op0 = temp;
      break;

    case ORDERED:
      temp = FUNC9 (compare_mode);
      FUNC7 (FUNC15 (VOIDmode, temp, FUNC10 (compare_mode, op0)));
      op0 = temp;
      break;

    case EQ:
      temp = FUNC9 (compare_mode);
      FUNC7 (FUNC15 (VOIDmode, temp,
			      FUNC14 (compare_mode,
					   FUNC10 (compare_mode, op0))));
      op0 = temp;
      break;

    case UNGE:
      /* a UNGE 0 <-> (a GE 0 || -a UNLT 0) */
      temp = FUNC9 (result_mode);
      FUNC7 (FUNC15 (VOIDmode, temp,
			      FUNC12 (result_mode,
						    FUNC11 (VOIDmode,
								op0, op1),
						    true_cond, false_cond)));
      false_cond = true_cond;
      true_cond = temp;

      temp = FUNC9 (compare_mode);
      FUNC7 (FUNC15 (VOIDmode, temp, FUNC14 (compare_mode, op0)));
      op0 = temp;
      break;

    case GT:
      /* a GT 0 <-> (a GE 0 && -a UNLT 0) */
      temp = FUNC9 (result_mode);
      FUNC7 (FUNC15 (VOIDmode, temp,
			      FUNC12 (result_mode,
						    FUNC11 (VOIDmode,
								op0, op1),
						    true_cond, false_cond)));
      true_cond = false_cond;
      false_cond = temp;

      temp = FUNC9 (compare_mode);
      FUNC7 (FUNC15 (VOIDmode, temp, FUNC14 (compare_mode, op0)));
      op0 = temp;
      break;

    default:
      FUNC8 ();
    }

  FUNC7 (FUNC15 (VOIDmode, dest,
			  FUNC12 (result_mode,
						FUNC11 (VOIDmode,
							    op0, op1),
						true_cond, false_cond)));
  return 1;
}