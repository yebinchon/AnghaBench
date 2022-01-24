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

/* Variables and functions */
 int ABS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
#define  EQ 136 
 int /*<<< orphan*/  FUNC2 (int) ; 
#define  GE 135 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 char* FUNC5 (int) ; 
 int FUNC6 (int) ; 
#define  GEU 134 
#define  GT 133 
#define  GTU 132 
#define  LE 131 
#define  LEU 130 
#define  LT 129 
#define  LTU 128 
 int NE ; 
 int /*<<< orphan*/  NEG ; 
 int SMAX ; 
 int SMIN ; 
 int SUBREG ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 int UMAX ; 
 int UMIN ; 
 int UNEQ ; 
 int UNKNOWN ; 
 scalar_t__ FUNC10 (scalar_t__,int) ; 
 scalar_t__ FUNC11 (scalar_t__,int,int) ; 
 int FUNC12 (scalar_t__,int) ; 
 int ZERO_EXTEND ; 
 scalar_t__ FUNC13 (int,int) ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ const_true_rtx ; 
 int FUNC14 (int) ; 
 int FUNC15 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int,scalar_t__,int) ; 
 scalar_t__ FUNC19 (int,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int,int,scalar_t__,int) ; 
 int FUNC21 (int) ; 

__attribute__((used)) static rtx
FUNC22 (rtx x, enum rtx_code cond, rtx reg, rtx val)
{
  enum rtx_code code = FUNC3 (x);
  rtx temp;
  const char *fmt;
  int i, j;

  if (FUNC17 (x))
    return x;

  /* If either operand of the condition is a floating point value,
     then we have to avoid collapsing an EQ comparison.  */
  if (cond == EQ
      && FUNC16 (x, reg)
      && ! FUNC2 (FUNC4 (x))
      && ! FUNC2 (FUNC4 (val)))
    return val;

  if (cond == UNEQ && FUNC16 (x, reg))
    return val;

  /* If X is (abs REG) and we know something about REG's relationship
     with zero, we may be able to simplify this.  */

  if (code == ABS && FUNC16 (FUNC10 (x, 0), reg) && val == const0_rtx)
    switch (cond)
      {
      case GE:  case GT:  case EQ:
	return FUNC10 (x, 0);
      case LT:  case LE:
	return FUNC18 (NEG, FUNC4 (FUNC10 (x, 0)),
				   FUNC10 (x, 0),
				   FUNC4 (FUNC10 (x, 0)));
      default:
	break;
      }

  /* The only other cases we handle are MIN, MAX, and comparisons if the
     operands are the same as REG and VAL.  */

  else if (FUNC1 (x) || FUNC0 (x))
    {
      if (FUNC16 (FUNC10 (x, 0), val))
	cond = FUNC21 (cond), temp = val, val = reg, reg = temp;

      if (FUNC16 (FUNC10 (x, 0), reg) && FUNC16 (FUNC10 (x, 1), val))
	{
	  if (FUNC1 (x))
	    {
	      if (FUNC13 (cond, code))
		return const_true_rtx;

	      code = FUNC15 (x, NULL);
	      if (code != UNKNOWN
		  && FUNC13 (cond, code))
		return const0_rtx;
	      else
		return x;
	    }
	  else if (code == SMAX || code == SMIN
		   || code == UMIN || code == UMAX)
	    {
	      int unsignedp = (code == UMIN || code == UMAX);

	      /* Do not reverse the condition when it is NE or EQ.
		 This is because we cannot conclude anything about
		 the value of 'SMAX (x, y)' when x is not equal to y,
		 but we can when x equals y.  */
	      if ((code == SMAX || code == UMAX)
		  && ! (cond == EQ || cond == NE))
		cond = FUNC14 (cond);

	      switch (cond)
		{
		case GE:   case GT:
		  return unsignedp ? x : FUNC10 (x, 1);
		case LE:   case LT:
		  return unsignedp ? x : FUNC10 (x, 0);
		case GEU:  case GTU:
		  return unsignedp ? FUNC10 (x, 1) : x;
		case LEU:  case LTU:
		  return unsignedp ? FUNC10 (x, 0) : x;
		default:
		  break;
		}
	    }
	}
    }
  else if (code == SUBREG)
    {
      enum machine_mode inner_mode = FUNC4 (FUNC8 (x));
      rtx new, r = FUNC22 (FUNC8 (x), cond, reg, val);

      if (FUNC8 (x) != r)
	{
	  /* We must simplify subreg here, before we lose track of the
	     original inner_mode.  */
	  new = FUNC19 (FUNC4 (x), r,
				 inner_mode, FUNC7 (x));
	  if (new)
	    return new;
	  else
	    FUNC9 (FUNC8 (x), r);
	}

      return x;
    }
  /* We don't have to handle SIGN_EXTEND here, because even in the
     case of replacing something with a modeless CONST_INT, a
     CONST_INT is already (supposed to be) a valid sign extension for
     its narrower mode, which implies it's already properly
     sign-extended for the wider mode.  Now, for ZERO_EXTEND, the
     story is different.  */
  else if (code == ZERO_EXTEND)
    {
      enum machine_mode inner_mode = FUNC4 (FUNC10 (x, 0));
      rtx new, r = FUNC22 (FUNC10 (x, 0), cond, reg, val);

      if (FUNC10 (x, 0) != r)
	{
	  /* We must simplify the zero_extend here, before we lose
	     track of the original inner_mode.  */
	  new = FUNC20 (ZERO_EXTEND, FUNC4 (x),
					  r, inner_mode);
	  if (new)
	    return new;
	  else
	    FUNC9 (FUNC10 (x, 0), r);
	}

      return x;
    }

  fmt = FUNC5 (code);
  for (i = FUNC6 (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
	FUNC9 (FUNC10 (x, i), FUNC22 (FUNC10 (x, i), cond, reg, val));
      else if (fmt[i] == 'E')
	for (j = FUNC12 (x, i) - 1; j >= 0; j--)
	  FUNC9 (FUNC11 (x, i, j), FUNC22 (FUNC11 (x, i, j),
						cond, reg, val));
    }

  return x;
}