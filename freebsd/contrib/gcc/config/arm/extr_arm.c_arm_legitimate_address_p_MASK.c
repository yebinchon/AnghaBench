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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int /*<<< orphan*/  RTX_CODE ;

/* Variables and functions */
 int CONST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CONST_INT ; 
 int DFmode ; 
 int DImode ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int LABEL_REF ; 
 scalar_t__ MINUS ; 
 scalar_t__ MODE_FLOAT ; 
 scalar_t__ PLUS ; 
 int POST_DEC ; 
 int POST_INC ; 
 int POST_MODIFY ; 
 int PRE_DEC ; 
 int PRE_INC ; 
 int PRE_MODIFY ; 
 scalar_t__ REG ; 
 int SYMBOL_REF ; 
 scalar_t__ TARGET_LDRD ; 
 scalar_t__ TARGET_SOFT_FLOAT ; 
 scalar_t__ TARGET_VFP ; 
 int TImode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ flag_pic ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ reload_completed ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

int
FUNC11 (enum machine_mode mode, rtx x, RTX_CODE outer,
			  int strict_p)
{
  bool use_ldrd;
  enum rtx_code code = FUNC1 (x);

  if (FUNC5 (x, strict_p))
    return 1;

  use_ldrd = (TARGET_LDRD
	      && (mode == DImode
		  || (mode == DFmode && (TARGET_SOFT_FLOAT || TARGET_VFP))));

  if (code == POST_INC || code == PRE_DEC
      || ((code == PRE_INC || code == POST_DEC)
	  && (use_ldrd || FUNC3 (mode) <= 4)))
    return FUNC5 (FUNC4 (x, 0), strict_p);

  else if ((code == POST_MODIFY || code == PRE_MODIFY)
	   && FUNC5 (FUNC4 (x, 0), strict_p)
	   && FUNC1 (FUNC4 (x, 1)) == PLUS
	   && FUNC9 (FUNC4 (FUNC4 (x, 1), 0), FUNC4 (x, 0)))
    {
      rtx addend = FUNC4 (FUNC4 (x, 1), 1);

      /* Don't allow ldrd post increment by register because it's hard
	 to fixup invalid register choices.  */
      if (use_ldrd
	  && FUNC1 (x) == POST_MODIFY
	  && FUNC1 (addend) == REG)
	return 0;

      return ((use_ldrd || FUNC3 (mode) <= 4)
	      && FUNC6 (mode, addend, outer, strict_p));
    }

  /* After reload constants split into minipools will have addresses
     from a LABEL_REF.  */
  else if (reload_completed
	   && (code == LABEL_REF
	       || (code == CONST
		   && FUNC1 (FUNC4 (x, 0)) == PLUS
		   && FUNC1 (FUNC4 (FUNC4 (x, 0), 0)) == LABEL_REF
		   && FUNC1 (FUNC4 (FUNC4 (x, 0), 1)) == CONST_INT)))
    return 1;

  else if (mode == TImode)
    return 0;

  else if (code == PLUS)
    {
      rtx xop0 = FUNC4 (x, 0);
      rtx xop1 = FUNC4 (x, 1);

      return ((FUNC5 (xop0, strict_p)
	       && FUNC6 (mode, xop1, outer, strict_p))
	      || (FUNC5 (xop1, strict_p)
		  && FUNC6 (mode, xop0, outer, strict_p)));
    }

#if 0
  /* Reload currently can't handle MINUS, so disable this for now */
  else if (GET_CODE (x) == MINUS)
    {
      rtx xop0 = XEXP (x, 0);
      rtx xop1 = XEXP (x, 1);

      return (arm_address_register_rtx_p (xop0, strict_p)
	      && arm_legitimate_index_p (mode, xop1, outer, strict_p));
    }
#endif

  else if (FUNC2 (mode) != MODE_FLOAT
	   && code == SYMBOL_REF
	   && FUNC0 (x)
	   && ! (flag_pic
		 && FUNC10 (FUNC7 (x))
		 && ! FUNC8 (FUNC7 (x))))
    return 1;

  return 0;
}