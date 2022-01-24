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
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 int CC_DEQmode ; 
 int CC_DGEUmode ; 
 int CC_DGEmode ; 
 int CC_DGTUmode ; 
 int CC_DGTmode ; 
 int CC_DLEUmode ; 
 int CC_DLEmode ; 
 int CC_DLTUmode ; 
 int CC_DLTmode ; 
 int CC_DNEmode ; 
 scalar_t__ CCmode ; 
 scalar_t__ DOM_CC_NX_OR_Y ; 
 scalar_t__ DOM_CC_X_AND_Y ; 
#define  EQ 137 
#define  GE 136 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  GEU 135 
#define  GT 134 
#define  GTU 133 
#define  LE 132 
#define  LEU 131 
#define  LT 130 
#define  LTU 129 
#define  NE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int) ; 

enum machine_mode
FUNC7 (rtx x, rtx y, HOST_WIDE_INT cond_or)
{
  enum rtx_code cond1, cond2;
  int swapped = 0;

  /* Currently we will probably get the wrong result if the individual
     comparisons are not simple.  This also ensures that it is safe to
     reverse a comparison if necessary.  */
  if ((FUNC2 (cond1 = FUNC0 (x), FUNC1 (x, 0), FUNC1 (x, 1))
       != CCmode)
      || (FUNC2 (cond2 = FUNC0 (y), FUNC1 (y, 0), FUNC1 (y, 1))
	  != CCmode))
    return CCmode;

  /* The if_then_else variant of this tests the second condition if the
     first passes, but is true if the first fails.  Reverse the first
     condition to get a true "inclusive-or" expression.  */
  if (cond_or == DOM_CC_NX_OR_Y)
    cond1 = FUNC6 (cond1);

  /* If the comparisons are not equal, and one doesn't dominate the other,
     then we can't do this.  */
  if (cond1 != cond2
      && !FUNC3 (cond1, cond2)
      && (swapped = 1, !FUNC3 (cond2, cond1)))
    return CCmode;

  if (swapped)
    {
      enum rtx_code temp = cond1;
      cond1 = cond2;
      cond2 = temp;
    }

  switch (cond1)
    {
    case EQ:
      if (cond_or == DOM_CC_X_AND_Y)
	return CC_DEQmode;

      switch (cond2)
	{
	case EQ: return CC_DEQmode;
	case LE: return CC_DLEmode;
	case LEU: return CC_DLEUmode;
	case GE: return CC_DGEmode;
	case GEU: return CC_DGEUmode;
	default: FUNC5 ();
	}

    case LT:
      if (cond_or == DOM_CC_X_AND_Y)
	return CC_DLTmode;

      switch (cond2)
	{
	case  LT:
	    return CC_DLTmode;
	case LE:
	  return CC_DLEmode;
	case NE:
	  return CC_DNEmode;
	default:
	  FUNC5 ();
	}

    case GT:
      if (cond_or == DOM_CC_X_AND_Y)
	return CC_DGTmode;

      switch (cond2)
	{
	case GT:
	  return CC_DGTmode;
	case GE:
	  return CC_DGEmode;
	case NE:
	  return CC_DNEmode;
	default:
	  FUNC5 ();
	}

    case LTU:
      if (cond_or == DOM_CC_X_AND_Y)
	return CC_DLTUmode;

      switch (cond2)
	{
	case LTU:
	  return CC_DLTUmode;
	case LEU:
	  return CC_DLEUmode;
	case NE:
	  return CC_DNEmode;
	default:
	  FUNC5 ();
	}

    case GTU:
      if (cond_or == DOM_CC_X_AND_Y)
	return CC_DGTUmode;

      switch (cond2)
	{
	case GTU:
	  return CC_DGTUmode;
	case GEU:
	  return CC_DGEUmode;
	case NE:
	  return CC_DNEmode;
	default:
	  FUNC5 ();
	}

    /* The remaining cases only occur when both comparisons are the
       same.  */
    case NE:
      FUNC4 (cond1 == cond2);
      return CC_DNEmode;

    case LE:
      FUNC4 (cond1 == cond2);
      return CC_DLEmode;

    case GE:
      FUNC4 (cond1 == cond2);
      return CC_DGEmode;

    case LEU:
      FUNC4 (cond1 == cond2);
      return CC_DLEUmode;

    case GEU:
      FUNC4 (cond1 == cond2);
      return CC_DGEUmode;

    default:
      FUNC5 ();
    }
}