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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CCFPUmode ; 
 int CCFPmode ; 
#define  CCGCmode 143 
#define  CCGOCmode 142 
#define  CCNOmode 141 
#define  CCmode 140 
#define  EQ 139 
#define  GE 138 
#define  GEU 137 
#define  GT 136 
#define  GTU 135 
#define  LE 134 
#define  LEU 133 
#define  LT 132 
#define  LTU 131 
#define  NE 130 
#define  ORDERED 129 
 int UNKNOWN ; 
#define  UNORDERED 128 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int*,int*,int*) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6 (enum rtx_code code, enum machine_mode mode, int reverse,
		    int fp, FILE *file)
{
  const char *suffix;

  if (mode == CCFPmode || mode == CCFPUmode)
    {
      enum rtx_code second_code, bypass_code;
      FUNC4 (code, &bypass_code, &code, &second_code);
      FUNC1 (bypass_code == UNKNOWN && second_code == UNKNOWN);
      code = FUNC3 (code);
      mode = CCmode;
    }
  if (reverse)
    code = FUNC5 (code);

  switch (code)
    {
    case EQ:
      suffix = "e";
      break;
    case NE:
      suffix = "ne";
      break;
    case GT:
      FUNC1 (mode == CCmode || mode == CCNOmode || mode == CCGCmode);
      suffix = "g";
      break;
    case GTU:
      /* ??? Use "nbe" instead of "a" for fcmov lossage on some assemblers.
	 Those same assemblers have the same but opposite lossage on cmov.  */
      FUNC1 (mode == CCmode);
      suffix = fp ? "nbe" : "a";
      break;
    case LT:
      switch (mode)
	{
	case CCNOmode:
	case CCGOCmode:
	  suffix = "s";
	  break;

	case CCmode:
	case CCGCmode:
	  suffix = "l";
	  break;

	default:
	  FUNC2 ();
	}
      break;
    case LTU:
      FUNC1 (mode == CCmode);
      suffix = "b";
      break;
    case GE:
      switch (mode)
	{
	case CCNOmode:
	case CCGOCmode:
	  suffix = "ns";
	  break;

	case CCmode:
	case CCGCmode:
	  suffix = "ge";
	  break;

	default:
	  FUNC2 ();
	}
      break;
    case GEU:
      /* ??? As above.  */
      FUNC1 (mode == CCmode);
      suffix = fp ? "nb" : "ae";
      break;
    case LE:
      FUNC1 (mode == CCmode || mode == CCGCmode || mode == CCNOmode);
      suffix = "le";
      break;
    case LEU:
      FUNC1 (mode == CCmode);
      suffix = "be";
      break;
    case UNORDERED:
      suffix = fp ? "u" : "p";
      break;
    case ORDERED:
      suffix = fp ? "nu" : "np";
      break;
    default:
      FUNC2 ();
    }
  FUNC0 (suffix, file);
}