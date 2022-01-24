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
 scalar_t__ AND ; 
 scalar_t__ ASHIFT ; 
 scalar_t__ ASHIFTRT ; 
 int CCFPEmode ; 
 int CCFPmode ; 
 int CC_Cmode ; 
 int CC_NOOVmode ; 
 int CC_Nmode ; 
 int CC_SWPmode ; 
 int CC_Zmode ; 
 int CCmode ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ CONST_INT ; 
 int DOM_CC_X_AND_Y ; 
 int DOM_CC_X_OR_Y ; 
#define  EQ 141 
#define  GE 140 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int GEU ; 
#define  GT 139 
 int GTU ; 
 scalar_t__ IF_THEN_ELSE ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ IOR ; 
#define  LE 138 
 int LEU ; 
 scalar_t__ LSHIFTRT ; 
#define  LT 137 
#define  LTGT 136 
 int LTU ; 
 scalar_t__ MEM ; 
 scalar_t__ MINUS ; 
 scalar_t__ MODE_FLOAT ; 
 scalar_t__ MULT ; 
#define  NE 135 
 scalar_t__ NEG ; 
 scalar_t__ NOT ; 
#define  ORDERED 134 
 scalar_t__ PLUS ; 
 scalar_t__ QImode ; 
 scalar_t__ REG ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ ROTATE ; 
 scalar_t__ ROTATERT ; 
 scalar_t__ SImode ; 
 scalar_t__ SUBREG ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ TARGET_ARM ; 
 int /*<<< orphan*/  TARGET_HARD_FLOAT ; 
 int /*<<< orphan*/  TARGET_MAVERICK ; 
 scalar_t__ TARGET_THUMB ; 
#define  UNEQ 133 
#define  UNGE 132 
#define  UNGT 131 
#define  UNLE 130 
#define  UNLT 129 
#define  UNORDERED 128 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 scalar_t__ XOR ; 
 scalar_t__ ZERO_EXTRACT ; 
 int FUNC8 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ const1_rtx ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 

enum machine_mode
FUNC11 (enum rtx_code op, rtx x, rtx y)
{
  /* All floating point compares return CCFP if it is an equality
     comparison, and CCFPE otherwise.  */
  if (FUNC3 (FUNC2 (x)) == MODE_FLOAT)
    {
      switch (op)
	{
	case EQ:
	case NE:
	case UNORDERED:
	case ORDERED:
	case UNLT:
	case UNLE:
	case UNGT:
	case UNGE:
	case UNEQ:
	case LTGT:
	  return CCFPmode;

	case LT:
	case LE:
	case GT:
	case GE:
	  if (TARGET_HARD_FLOAT && TARGET_MAVERICK)
	    return CCFPmode;
	  return CCFPEmode;

	default:
	  FUNC9 ();
	}
    }

  /* A compare with a shifted operand.  Because of canonicalization, the
     comparison will have to be swapped when we emit the assembler.  */
  if (FUNC2 (y) == SImode && FUNC1 (y) == REG
      && (FUNC1 (x) == ASHIFT || FUNC1 (x) == ASHIFTRT
	  || FUNC1 (x) == LSHIFTRT || FUNC1 (x) == ROTATE
	  || FUNC1 (x) == ROTATERT))
    return CC_SWPmode;

  /* This operation is performed swapped, but since we only rely on the Z
     flag we don't need an additional mode.  */
  if (FUNC2 (y) == SImode && FUNC5 (y)
      && FUNC1 (x) == NEG
      && (op ==	EQ || op == NE))
    return CC_Zmode;

  /* This is a special case that is used by combine to allow a
     comparison of a shifted byte load to be split into a zero-extend
     followed by a comparison of the shifted integer (only valid for
     equalities and unsigned inequalities).  */
  if (FUNC2 (x) == SImode
      && FUNC1 (x) == ASHIFT
      && FUNC1 (FUNC7 (x, 1)) == CONST_INT && FUNC4 (FUNC7 (x, 1)) == 24
      && FUNC1 (FUNC7 (x, 0)) == SUBREG
      && FUNC1 (FUNC6 (FUNC7 (x, 0))) == MEM
      && FUNC2 (FUNC6 (FUNC7 (x, 0))) == QImode
      && (op == EQ || op == NE
	  || op == GEU || op == GTU || op == LTU || op == LEU)
      && FUNC1 (y) == CONST_INT)
    return CC_Zmode;

  /* A construct for a conditional compare, if the false arm contains
     0, then both conditions must be true, otherwise either condition
     must be true.  Not all conditions are possible, so CCmode is
     returned if it can't be done.  */
  if (FUNC1 (x) == IF_THEN_ELSE
      && (FUNC7 (x, 2) == const0_rtx
	  || FUNC7 (x, 2) == const1_rtx)
      && FUNC0 (FUNC7 (x, 0))
      && FUNC0 (FUNC7 (x, 1)))
    return FUNC8 (FUNC7 (x, 0), FUNC7 (x, 1),
					 FUNC4 (FUNC7 (x, 2)));

  /* Alternate canonicalizations of the above.  These are somewhat cleaner.  */
  if (FUNC1 (x) == AND
      && FUNC0 (FUNC7 (x, 0))
      && FUNC0 (FUNC7 (x, 1)))
    return FUNC8 (FUNC7 (x, 0), FUNC7 (x, 1),
					 DOM_CC_X_AND_Y);

  if (FUNC1 (x) == IOR
      && FUNC0 (FUNC7 (x, 0))
      && FUNC0 (FUNC7 (x, 1)))
    return FUNC8 (FUNC7 (x, 0), FUNC7 (x, 1),
					 DOM_CC_X_OR_Y);

  /* An operation (on Thumb) where we want to test for a single bit.
     This is done by shifting that bit up into the top bit of a
     scratch register; we can then branch on the sign bit.  */
  if (TARGET_THUMB
      && FUNC2 (x) == SImode
      && (op == EQ || op == NE)
      && FUNC1 (x) == ZERO_EXTRACT
      && FUNC7 (x, 1) == const1_rtx)
    return CC_Nmode;

  /* An operation that sets the condition codes as a side-effect, the
     V flag is not set correctly, so we can only use comparisons where
     this doesn't matter.  (For LT and GE we can use "mi" and "pl"
     instead.)  */
  if (FUNC2 (x) == SImode
      && y == const0_rtx
      && (op == EQ || op == NE || op == LT || op == GE)
      && (FUNC1 (x) == PLUS || FUNC1 (x) == MINUS
	  || FUNC1 (x) == AND || FUNC1 (x) == IOR
	  || FUNC1 (x) == XOR || FUNC1 (x) == MULT
	  || FUNC1 (x) == NOT || FUNC1 (x) == NEG
	  || FUNC1 (x) == LSHIFTRT
	  || FUNC1 (x) == ASHIFT || FUNC1 (x) == ASHIFTRT
	  || FUNC1 (x) == ROTATERT
	  || (TARGET_ARM && FUNC1 (x) == ZERO_EXTRACT)))
    return CC_NOOVmode;

  if (FUNC2 (x) == QImode && (op == EQ || op == NE))
    return CC_Zmode;

  if (FUNC2 (x) == SImode && (op == LTU || op == GEU)
      && FUNC1 (x) == PLUS
      && (FUNC10 (FUNC7 (x, 0), y) || FUNC10 (FUNC7 (x, 1), y)))
    return CC_Cmode;

  return CCmode;
}