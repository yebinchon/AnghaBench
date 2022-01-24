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
struct df_ref {int dummy; } ;
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  enum iv_grd_result { ____Placeholder_iv_grd_result } iv_grd_result ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct df_ref*) ; 
 int const FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 int GRD_INVALID ; 
 int GRD_INVARIANT ; 
 int GRD_MAYBE_BIV ; 
#define  MINUS 133 
 scalar_t__ NULL_RTX ; 
#define  PLUS 132 
#define  REG 131 
 scalar_t__ FUNC5 (scalar_t__) ; 
#define  SIGN_EXTEND 130 
#define  SUBREG 129 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int UNKNOWN ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
#define  ZERO_EXTEND 128 
 scalar_t__ const0_rtx ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (scalar_t__,scalar_t__,struct df_ref**) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (int const,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC16 (struct df_ref *def, rtx reg,
		rtx *inner_step, enum machine_mode *inner_mode,
		enum rtx_code *extend, enum machine_mode outer_mode,
		rtx *outer_step)
{
  rtx set, rhs, op0 = NULL_RTX, op1 = NULL_RTX;
  rtx next, nextr, tmp;
  enum rtx_code code;
  rtx insn = FUNC1 (def);
  struct df_ref *next_def;
  enum iv_grd_result res;

  set = FUNC14 (insn);
  if (!set)
    return false;

  rhs = FUNC8 (insn);
  if (rhs)
    rhs = FUNC7 (rhs, 0);
  else
    rhs = FUNC5 (set);

  code = FUNC2 (rhs);
  switch (code)
    {
    case SUBREG:
    case REG:
      next = rhs;
      break;

    case PLUS:
    case MINUS:
      op0 = FUNC7 (rhs, 0);
      op1 = FUNC7 (rhs, 1);

      if (code == PLUS && FUNC0 (op0))
	{
	  tmp = op0; op0 = op1; op1 = tmp;
	}

      if (!FUNC12 (op0)
	  || !FUNC0 (op1))
	return false;

      if (FUNC3 (rhs) != outer_mode)
	{
	  /* ppc64 uses expressions like

	     (set x:SI (plus:SI (subreg:SI y:DI) 1)).

	     this is equivalent to

	     (set x':DI (plus:DI y:DI 1))
	     (set x:SI (subreg:SI (x':DI)).  */
	  if (FUNC2 (op0) != SUBREG)
	    return false;
	  if (FUNC3 (FUNC6 (op0)) != outer_mode)
	    return false;
	}

      next = op0;
      break;

    case SIGN_EXTEND:
    case ZERO_EXTEND:
      if (FUNC3 (rhs) != outer_mode)
	return false;

      op0 = FUNC7 (rhs, 0);
      if (!FUNC12 (op0))
	return false;

      next = op0;
      break;

    default:
      return false;
    }

  if (FUNC2 (next) == SUBREG)
    {
      if (!FUNC15 (next))
	return false;

      nextr = FUNC6 (next);
      if (FUNC3 (nextr) != outer_mode)
	return false;
    }
  else
    nextr = next;

  res = FUNC10 (insn, nextr, &next_def);

  if (res == GRD_INVALID || res == GRD_INVARIANT)
    return false;

  if (res == GRD_MAYBE_BIV)
    {
      if (!FUNC11 (nextr, reg))
	return false;

      *inner_step = const0_rtx;
      *extend = UNKNOWN;
      *inner_mode = outer_mode;
      *outer_step = const0_rtx;
    }
  else if (!FUNC16 (next_def, reg,
			    inner_step, inner_mode, extend, outer_mode,
			    outer_step))
    return false;

  if (FUNC2 (next) == SUBREG)
    {
      enum machine_mode amode = FUNC3 (next);

      if (FUNC4 (amode) > FUNC4 (*inner_mode))
	return false;

      *inner_mode = amode;
      *inner_step = FUNC13 (PLUS, outer_mode,
					 *inner_step, *outer_step);
      *outer_step = const0_rtx;
      *extend = UNKNOWN;
    }

  switch (code)
    {
    case REG:
    case SUBREG:
      break;

    case PLUS:
    case MINUS:
      if (*inner_mode == outer_mode
	  /* See comment in previous switch.  */
	  || FUNC3 (rhs) != outer_mode)
	*inner_step = FUNC13 (code, outer_mode,
					   *inner_step, op1);
      else
	*outer_step = FUNC13 (code, outer_mode,
					   *outer_step, op1);
      break;

    case SIGN_EXTEND:
    case ZERO_EXTEND:
      FUNC9 (FUNC3 (op0) == *inner_mode
		  && *extend == UNKNOWN
		  && *outer_step == const0_rtx);

      *extend = code;
      break;

    default:
      return false;
    }

  return true;
}