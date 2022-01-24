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

/* Variables and functions */
 int /*<<< orphan*/  ABS ; 
 int /*<<< orphan*/  AND ; 
 int CCANmode ; 
 int CCAPmode ; 
 int CCL1mode ; 
 int CCL2mode ; 
 int CCLmode ; 
 int CCSRmode ; 
 int CCSmode ; 
 int CCT3mode ; 
 int CCTmode ; 
 int CCURmode ; 
 int CCUmode ; 
 int CCZmode ; 
 int /*<<< orphan*/  CONST_INT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  EQ 145 
#define  GE 144 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  GEU 143 
#define  GT 142 
#define  GTU 141 
 int /*<<< orphan*/  HImode ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
#define  LE 140 
#define  LEU 139 
#define  LT 138 
#define  LTGT 137 
#define  LTU 136 
 int /*<<< orphan*/  MINUS ; 
 int /*<<< orphan*/  MODE_INT ; 
#define  NE 135 
 int /*<<< orphan*/  NEG ; 
#define  ORDERED 134 
 int /*<<< orphan*/  PLUS ; 
 int /*<<< orphan*/  QImode ; 
 int /*<<< orphan*/  SIGN_EXTEND ; 
#define  UNEQ 133 
#define  UNGE 132 
#define  UNGT 131 
#define  UNLE 130 
#define  UNLT 129 
#define  UNORDERED 128 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ZERO_EXTEND ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

enum machine_mode
FUNC9 (enum rtx_code code, rtx op0, rtx op1)
{
  switch (code)
    {
      case EQ:
      case NE:
	if ((FUNC1 (op0) == NEG || FUNC1 (op0) == ABS)
	    && FUNC3 (FUNC2 (op0)) == MODE_INT)
	  return CCAPmode;
	if (FUNC1 (op0) == PLUS && FUNC1 (FUNC5 (op0, 1)) == CONST_INT
	    && FUNC0 (FUNC4 (FUNC5 (op0, 1))))
	  return CCAPmode;
	if ((FUNC1 (op0) == PLUS || FUNC1 (op0) == MINUS
	     || FUNC1 (op1) == NEG)
	    && FUNC3 (FUNC2 (op0)) == MODE_INT)
	  return CCLmode;

	if (FUNC1 (op0) == AND)
	  {
	    /* Check whether we can potentially do it via TM.  */
	    enum machine_mode ccmode;
	    ccmode = FUNC8 (FUNC5 (op0, 1), op1, 1);
	    if (ccmode != VOIDmode)
	      {
		/* Relax CCTmode to CCZmode to allow fall-back to AND
		   if that turns out to be beneficial.  */
	        return ccmode == CCTmode ? CCZmode : ccmode;
	      }
	  }

	if (FUNC7 (op0, HImode)
	    && FUNC1 (op1) == CONST_INT
	    && (FUNC4 (op1) == -1 || FUNC4 (op1) == 65535))
	  return CCT3mode;
	if (FUNC7 (op0, QImode)
	    && FUNC1 (op1) == CONST_INT
	    && (FUNC4 (op1) == -1 || FUNC4 (op1) == 255))
	  return CCT3mode;

	return CCZmode;

      case LE:
      case LT:
      case GE:
      case GT:
	/* The only overflow condition of NEG and ABS happens when
	   -INT_MAX is used as parameter, which stays negative. So
	   we have an overflow from a positive value to a negative. 
	   Using CCAP mode the resulting cc can be used for comparisons.  */
	if ((FUNC1 (op0) == NEG || FUNC1 (op0) == ABS)
	    && FUNC3 (FUNC2 (op0)) == MODE_INT)
	  return CCAPmode;

 	/* If constants are involved in an add instruction it is possible to use
 	   the resulting cc for comparisons with zero. Knowing the sign of the
	   constant the overflow behavior gets predictable. e.g.:
 	     int a, b; if ((b = a + c) > 0)  
 	   with c as a constant value: c < 0 -> CCAN and c >= 0 -> CCAP  */
	if (FUNC1 (op0) == PLUS && FUNC1 (FUNC5 (op0, 1)) == CONST_INT
	    && FUNC0 (FUNC4 (FUNC5 (op0, 1))))
	  {
	    if (FUNC4 (FUNC5((op0), 1)) < 0)
	      return CCANmode;
	    else
	      return CCAPmode;
	  }
	/* Fall through.  */
      case UNORDERED:
      case ORDERED:
      case UNEQ:
      case UNLE:
      case UNLT:
      case UNGE:
      case UNGT:
      case LTGT:
	if ((FUNC1 (op0) == SIGN_EXTEND || FUNC1 (op0) == ZERO_EXTEND)
	    && FUNC1 (op1) != CONST_INT)
	  return CCSRmode;
	return CCSmode;

      case LTU:
      case GEU:
	if (FUNC1 (op0) == PLUS
	    && FUNC3 (FUNC2 (op0)) == MODE_INT)
	  return CCL1mode;

	if ((FUNC1 (op0) == SIGN_EXTEND || FUNC1 (op0) == ZERO_EXTEND)
	    && FUNC1 (op1) != CONST_INT)
	  return CCURmode;
	return CCUmode;

      case LEU:
      case GTU:
	if (FUNC1 (op0) == MINUS
	    && FUNC3 (FUNC2 (op0)) == MODE_INT)
	  return CCL2mode;

	if ((FUNC1 (op0) == SIGN_EXTEND || FUNC1 (op0) == ZERO_EXTEND)
	    && FUNC1 (op1) != CONST_INT)
	  return CCURmode;
	return CCUmode;

      default:
	FUNC6 ();
    }
}