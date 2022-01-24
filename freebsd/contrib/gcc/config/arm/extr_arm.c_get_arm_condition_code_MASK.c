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
typedef  enum arm_cond_code { ____Placeholder_arm_cond_code } arm_cond_code ;

/* Variables and functions */
 int ARM_CC ; 
 int ARM_CS ; 
 int ARM_EQ ; 
 int ARM_GE ; 
 int ARM_GT ; 
 int ARM_HI ; 
 int FUNC0 (int) ; 
 int ARM_LE ; 
 int ARM_LS ; 
 int ARM_LT ; 
 int ARM_MI ; 
 int ARM_NE ; 
 int ARM_PL ; 
 int ARM_VC ; 
 int ARM_VS ; 
#define  CCFPEmode 163 
#define  CCFPmode 162 
#define  CC_Cmode 161 
#define  CC_DEQmode 160 
#define  CC_DGEUmode 159 
#define  CC_DGEmode 158 
#define  CC_DGTUmode 157 
#define  CC_DGTmode 156 
#define  CC_DLEUmode 155 
#define  CC_DLEmode 154 
#define  CC_DLTUmode 153 
#define  CC_DLTmode 152 
#define  CC_DNEmode 151 
#define  CC_NOOVmode 150 
#define  CC_Nmode 149 
#define  CC_SWPmode 148 
#define  CC_Zmode 147 
#define  CCmode 146 
#define  EQ 145 
#define  GE 144 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
#define  GEU 143 
#define  GT 142 
#define  GTU 141 
#define  LE 140 
#define  LEU 139 
#define  LT 138 
#define  LTGT 137 
#define  LTU 136 
 scalar_t__ MODE_CC ; 
#define  NE 135 
#define  ORDERED 134 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  UNEQ 133 
#define  UNGE 132 
#define  UNGT 131 
#define  UNLE 130 
#define  UNLT 129 
#define  UNORDERED 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static enum arm_cond_code
FUNC8 (rtx comparison)
{
  enum machine_mode mode = FUNC2 (FUNC5 (comparison, 0));
  int code;
  enum rtx_code comp_code = FUNC1 (comparison);

  if (FUNC3 (mode) != MODE_CC)
    mode = FUNC4 (comp_code, FUNC5 (comparison, 0),
			   FUNC5 (comparison, 1));

  switch (mode)
    {
    case CC_DNEmode: code = ARM_NE; goto dominance;
    case CC_DEQmode: code = ARM_EQ; goto dominance;
    case CC_DGEmode: code = ARM_GE; goto dominance;
    case CC_DGTmode: code = ARM_GT; goto dominance;
    case CC_DLEmode: code = ARM_LE; goto dominance;
    case CC_DLTmode: code = ARM_LT; goto dominance;
    case CC_DGEUmode: code = ARM_CS; goto dominance;
    case CC_DGTUmode: code = ARM_HI; goto dominance;
    case CC_DLEUmode: code = ARM_LS; goto dominance;
    case CC_DLTUmode: code = ARM_CC;

    dominance:
      FUNC6 (comp_code == EQ || comp_code == NE);

      if (comp_code == EQ)
	return FUNC0 (code);
      return code;

    case CC_NOOVmode:
      switch (comp_code)
	{
	case NE: return ARM_NE;
	case EQ: return ARM_EQ;
	case GE: return ARM_PL;
	case LT: return ARM_MI;
	default: FUNC7 ();
	}

    case CC_Zmode:
      switch (comp_code)
	{
	case NE: return ARM_NE;
	case EQ: return ARM_EQ;
	default: FUNC7 ();
	}

    case CC_Nmode:
      switch (comp_code)
	{
	case NE: return ARM_MI;
	case EQ: return ARM_PL;
	default: FUNC7 ();
	}

    case CCFPEmode:
    case CCFPmode:
      /* These encodings assume that AC=1 in the FPA system control
	 byte.  This allows us to handle all cases except UNEQ and
	 LTGT.  */
      switch (comp_code)
	{
	case GE: return ARM_GE;
	case GT: return ARM_GT;
	case LE: return ARM_LS;
	case LT: return ARM_MI;
	case NE: return ARM_NE;
	case EQ: return ARM_EQ;
	case ORDERED: return ARM_VC;
	case UNORDERED: return ARM_VS;
	case UNLT: return ARM_LT;
	case UNLE: return ARM_LE;
	case UNGT: return ARM_HI;
	case UNGE: return ARM_PL;
	  /* UNEQ and LTGT do not have a representation.  */
	case UNEQ: /* Fall through.  */
	case LTGT: /* Fall through.  */
	default: FUNC7 ();
	}

    case CC_SWPmode:
      switch (comp_code)
	{
	case NE: return ARM_NE;
	case EQ: return ARM_EQ;
	case GE: return ARM_LE;
	case GT: return ARM_LT;
	case LE: return ARM_GE;
	case LT: return ARM_GT;
	case GEU: return ARM_LS;
	case GTU: return ARM_CC;
	case LEU: return ARM_CS;
	case LTU: return ARM_HI;
	default: FUNC7 ();
	}

    case CC_Cmode:
      switch (comp_code)
      {
      case LTU: return ARM_CS;
      case GEU: return ARM_CC;
      default: FUNC7 ();
      }

    case CCmode:
      switch (comp_code)
	{
	case NE: return ARM_NE;
	case EQ: return ARM_EQ;
	case GE: return ARM_GE;
	case GT: return ARM_GT;
	case LE: return ARM_LE;
	case LT: return ARM_LT;
	case GEU: return ARM_CS;
	case GTU: return ARM_HI;
	case LEU: return ARM_LS;
	case LTU: return ARM_CC;
	default: FUNC7 ();
	}

    default: FUNC7 ();
    }
}