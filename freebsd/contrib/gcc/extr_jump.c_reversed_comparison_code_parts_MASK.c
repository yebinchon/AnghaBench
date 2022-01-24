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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ COMPARE ; 
 scalar_t__ CONST_INT ; 
#define  EQ 141 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
#define  GEU 140 
#define  GTU 139 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
#define  LEU 138 
#define  LTGT 137 
#define  LTU 136 
 scalar_t__ MODE_CC ; 
#define  NE 135 
#define  ORDERED 134 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int FUNC8 (int,int) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ RTX_COMM_COMPARE ; 
 scalar_t__ RTX_COMPARE ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
#define  UNEQ 133 
#define  UNGE 132 
#define  UNGT 131 
 int UNKNOWN ; 
#define  UNLE 130 
#define  UNLT 129 
#define  UNORDERED 128 
 int VOIDmode ; 
 scalar_t__ FUNC12 (scalar_t__,int) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__) ; 

enum rtx_code
FUNC18 (enum rtx_code code, rtx arg0, rtx arg1, rtx insn)
{
  enum machine_mode mode;

  /* If this is not actually a comparison, we can't reverse it.  */
  if (FUNC4 (code) != RTX_COMPARE
      && FUNC4 (code) != RTX_COMM_COMPARE)
    return UNKNOWN;

  mode = FUNC2 (arg0);
  if (mode == VOIDmode)
    mode = FUNC2 (arg1);

  /* First see if machine description supplies us way to reverse the
     comparison.  Give it priority over everything else to allow
     machine description to do tricks.  */
  if (FUNC3 (mode) == MODE_CC
      && FUNC9 (mode))
    {
#ifdef REVERSE_CONDITION
      return REVERSE_CONDITION (code, mode);
#endif
      return FUNC14 (code);
    }

  /* Try a few special cases based on the comparison code.  */
  switch (code)
    {
    case GEU:
    case GTU:
    case LEU:
    case LTU:
    case NE:
    case EQ:
      /* It is always safe to reverse EQ and NE, even for the floating
	 point.  Similarly the unsigned comparisons are never used for
	 floating point so we can reverse them in the default way.  */
      return FUNC14 (code);
    case ORDERED:
    case UNORDERED:
    case LTGT:
    case UNEQ:
      /* In case we already see unordered comparison, we can be sure to
	 be dealing with floating point so we don't need any more tests.  */
      return FUNC15 (code);
    case UNLT:
    case UNLE:
    case UNGT:
    case UNGE:
      /* We don't have safe way to reverse these yet.  */
      return UNKNOWN;
    default:
      break;
    }

  if (FUNC3 (mode) == MODE_CC || FUNC0 (arg0))
    {
      rtx prev;
      /* Try to search for the comparison to determine the real mode.
         This code is expensive, but with sane machine description it
         will be never used, since REVERSIBLE_CC_MODE will return true
         in all cases.  */
      if (! insn)
	return UNKNOWN;

      for (prev = FUNC13 (insn);
	   prev != 0 && !FUNC6 (prev);
	   prev = FUNC13 (prev))
	{
	  rtx set = FUNC17 (arg0, prev);
	  if (set && FUNC1 (set) == SET
	      && FUNC16 (FUNC10 (set), arg0))
	    {
	      rtx src = FUNC11 (set);

	      if (FUNC1 (src) == COMPARE)
		{
		  rtx comparison = src;
		  arg0 = FUNC12 (src, 0);
		  mode = FUNC2 (arg0);
		  if (mode == VOIDmode)
		    mode = FUNC2 (FUNC12 (comparison, 1));
		  break;
		}
	      /* We can get past reg-reg moves.  This may be useful for model
	         of i387 comparisons that first move flag registers around.  */
	      if (FUNC7 (src))
		{
		  arg0 = src;
		  continue;
		}
	    }
	  /* If register is clobbered in some ununderstandable way,
	     give up.  */
	  if (set)
	    return UNKNOWN;
	}
    }

  /* Test for an integer condition, or a floating-point comparison
     in which NaNs can be ignored.  */
  if (FUNC1 (arg0) == CONST_INT
      || (FUNC2 (arg0) != VOIDmode
	  && FUNC3 (mode) != MODE_CC
	  && !FUNC5 (mode)))
    return FUNC14 (code);

  return UNKNOWN;
}