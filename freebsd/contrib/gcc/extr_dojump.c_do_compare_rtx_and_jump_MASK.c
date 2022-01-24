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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
#define  EQ 137 
 int /*<<< orphan*/  FUNC2 (int) ; 
#define  GE 136 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 
#define  GEU 135 
#define  GT 134 
#define  GTU 133 
#define  LE 132 
#define  LEU 131 
#define  LT 130 
#define  LTU 129 
 scalar_t__ MODE_INT ; 
#define  NE 128 
 int /*<<< orphan*/  VOIDmode ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ccp_jump ; 
 scalar_t__ const0_rtx ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,int,scalar_t__,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 () ; 
 int FUNC16 (int) ; 
 scalar_t__ FUNC17 (int,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__,scalar_t__) ; 
 int FUNC19 (int) ; 
 int FUNC20 (int) ; 

void
FUNC21 (rtx op0, rtx op1, enum rtx_code code, int unsignedp,
			 enum machine_mode mode, rtx size, rtx if_false_label,
			 rtx if_true_label)
{
  rtx tem;
  int dummy_true_label = 0;

  /* Reverse the comparison if that is safe and we want to jump if it is
     false.  */
  if (! if_true_label && ! FUNC2 (mode))
    {
      if_true_label = if_false_label;
      if_false_label = 0;
      code = FUNC16 (code);
    }

  /* If one operand is constant, make it the second one.  Only do this
     if the other operand is not constant as well.  */

  if (FUNC18 (op0, op1))
    {
      tem = op0;
      op0 = op1;
      op1 = tem;
      code = FUNC19 (code);
    }

  FUNC10 ();

  code = unsignedp ? FUNC20 (code) : code;
  if (0 != (tem = FUNC17 (code, mode, VOIDmode,
						 op0, op1)))
    {
      if (FUNC1 (tem))
	{
	  rtx label = (tem == const0_rtx || tem == FUNC0 (mode))
		      ? if_false_label : if_true_label;
	  if (label)
	    FUNC12 (label);
	  return;
	}

      code = FUNC3 (tem);
      mode = FUNC4 (tem);
      op0 = FUNC6 (tem, 0);
      op1 = FUNC6 (tem, 1);
      unsignedp = (code == GTU || code == LTU || code == GEU || code == LEU);
    }


  if (! if_true_label)
    {
      dummy_true_label = 1;
      if_true_label = FUNC15 ();
    }

  if (FUNC5 (mode) == MODE_INT
      && ! FUNC7 (code, mode, ccp_jump))
    {
      switch (code)
	{
	case LTU:
	  FUNC9 (mode, 1, op1, op0,
					if_false_label, if_true_label);
	  break;

	case LEU:
	  FUNC9 (mode, 1, op0, op1,
					if_true_label, if_false_label);
	  break;

	case GTU:
	  FUNC9 (mode, 1, op0, op1,
					if_false_label, if_true_label);
	  break;

	case GEU:
	  FUNC9 (mode, 1, op1, op0,
					if_true_label, if_false_label);
	  break;

	case LT:
	  FUNC9 (mode, 0, op1, op0,
					if_false_label, if_true_label);
	  break;

	case LE:
	  FUNC9 (mode, 0, op0, op1,
					if_true_label, if_false_label);
	  break;

	case GT:
	  FUNC9 (mode, 0, op0, op1,
					if_false_label, if_true_label);
	  break;

	case GE:
	  FUNC9 (mode, 0, op1, op0,
					if_true_label, if_false_label);
	  break;

	case EQ:
	  FUNC8 (mode, op0, op1, if_false_label,
					 if_true_label);
	  break;

	case NE:
	  FUNC8 (mode, op0, op1, if_true_label,
					 if_false_label);
	  break;

	default:
	  FUNC14 ();
	}
    }
  else
    FUNC11 (op0, op1, code, size, mode, unsignedp,
			     if_true_label);

  if (if_false_label)
    FUNC12 (if_false_label);
  if (dummy_true_label)
    FUNC13 (if_true_label);
}