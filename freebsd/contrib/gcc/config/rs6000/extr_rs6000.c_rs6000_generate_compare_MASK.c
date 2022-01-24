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
 int CCEQmode ; 
 int CCFPmode ; 
 int CCUNSmode ; 
 int CCmode ; 
#define  DFmode 145 
#define  EQ 144 
#define  GE 143 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  GEU 142 
#define  GT 141 
#define  GTU 140 
#define  LE 139 
#define  LEU 138 
#define  LT 137 
#define  LTGT 136 
#define  LTU 135 
#define  NE 134 
#define  SFmode 133 
 int SImode ; 
 scalar_t__ SUBREG ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ TARGET_64BIT ; 
 scalar_t__ TARGET_E500 ; 
 scalar_t__ TARGET_FPRS ; 
 scalar_t__ TARGET_HARD_FLOAT ; 
 int /*<<< orphan*/  TARGET_IEEEQUAD ; 
 scalar_t__ TARGET_LONG_DOUBLE_128 ; 
 scalar_t__ TARGET_XL_COMPAT ; 
 int TFmode ; 
#define  UNEQ 132 
#define  UNGE 131 
#define  UNGT 130 
#define  UNLE 129 
#define  UNLT 128 
 int UNORDERED ; 
 scalar_t__ UNSPEC ; 
 scalar_t__ UNSPEC_SP_TEST ; 
 int VOIDmode ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  const_true_rtx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flag_finite_math_only ; 
 int /*<<< orphan*/  flag_unsafe_math_optimizations ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int const) ; 
 int /*<<< orphan*/  FUNC21 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ rs6000_compare_fp_p ; 
 int /*<<< orphan*/  rs6000_compare_op0 ; 
 int /*<<< orphan*/  rs6000_compare_op1 ; 
 int /*<<< orphan*/  FUNC31 (int,int) ; 

__attribute__((used)) static rtx
FUNC32 (enum rtx_code code)
{
  enum machine_mode comp_mode;
  rtx compare_result;

  if (rs6000_compare_fp_p)
    comp_mode = CCFPmode;
  else if (code == GTU || code == LTU
	   || code == GEU || code == LEU)
    comp_mode = CCUNSmode;
  else if ((code == EQ || code == NE)
	   && FUNC0 (rs6000_compare_op0) == SUBREG
	   && FUNC0 (rs6000_compare_op1) == SUBREG
	   && FUNC2 (rs6000_compare_op0)
	   && FUNC2 (rs6000_compare_op1))
    /* These are unsigned values, perhaps there will be a later
       ordering compare that can be shared with this one.
       Unfortunately we cannot detect the signedness of the operands
       for non-subregs.  */
    comp_mode = CCUNSmode;
  else
    comp_mode = CCmode;

  /* First, the compare.  */
  compare_result = FUNC14 (comp_mode);

  /* E500 FP compare instructions on the GPRs.  Yuck!  */
  if ((TARGET_E500 && !TARGET_FPRS && TARGET_HARD_FLOAT)
      && rs6000_compare_fp_p)
    {
      rtx cmp, or_result, compare_result2;
      enum machine_mode op_mode = FUNC1 (rs6000_compare_op0);

      if (op_mode == VOIDmode)
	op_mode = FUNC1 (rs6000_compare_op1);

      /* The E500 FP compare instructions toggle the GT bit (CR bit 1) only.
	 This explains the following mess.  */

      switch (code)
	{
	case EQ: case UNEQ: case NE: case LTGT:
	  switch (op_mode)
	    {
	    case SFmode:
	      cmp = flag_unsafe_math_optimizations
		? FUNC28 (compare_result, rs6000_compare_op0,
				   rs6000_compare_op1)
		: FUNC10 (compare_result, rs6000_compare_op0,
				   rs6000_compare_op1);
	      break;

	    case DFmode:
	      cmp = flag_unsafe_math_optimizations
		? FUNC25 (compare_result, rs6000_compare_op0,
				   rs6000_compare_op1)
		: FUNC7 (compare_result, rs6000_compare_op0,
				   rs6000_compare_op1);
	      break;

	    default:
	      FUNC6 ();
	    }
	  break;

	case GT: case GTU: case UNGT: case UNGE: case GE: case GEU:
	  switch (op_mode)
	    {
	    case SFmode:
	      cmp = flag_unsafe_math_optimizations
		? FUNC29 (compare_result, rs6000_compare_op0,
				   rs6000_compare_op1)
		: FUNC11 (compare_result, rs6000_compare_op0,
				   rs6000_compare_op1);
	      break;

	    case DFmode:
	      cmp = flag_unsafe_math_optimizations
		? FUNC26 (compare_result, rs6000_compare_op0,
				   rs6000_compare_op1)
		: FUNC8 (compare_result, rs6000_compare_op0,
				   rs6000_compare_op1);
	      break;

	    default:
	      FUNC6 ();
	    }
	  break;

	case LT: case LTU: case UNLT: case UNLE: case LE: case LEU:
	  switch (op_mode)
	    {
	    case SFmode:
	      cmp = flag_unsafe_math_optimizations
		? FUNC30 (compare_result, rs6000_compare_op0,
				   rs6000_compare_op1)
		: FUNC12 (compare_result, rs6000_compare_op0,
				   rs6000_compare_op1);
	      break;

	    case DFmode:
	      cmp = flag_unsafe_math_optimizations
		? FUNC27 (compare_result, rs6000_compare_op0,
				   rs6000_compare_op1)
		: FUNC9 (compare_result, rs6000_compare_op0,
				   rs6000_compare_op1);
	      break;

	    default:
	      FUNC6 ();
	    }
	  break;
        default:
          FUNC6 ();
	}

      /* Synthesize LE and GE from LT/GT || EQ.  */
      if (code == LE || code == GE || code == LEU || code == GEU)
	{
	  FUNC5 (cmp);

	  switch (code)
	    {
	    case LE: code = LT; break;
	    case GE: code = GT; break;
	    case LEU: code = LT; break;
	    case GEU: code = GT; break;
	    default: FUNC6 ();
	    }

	  compare_result2 = FUNC14 (CCFPmode);

	  /* Do the EQ.  */
	  switch (op_mode)
	    {
	    case SFmode:
	      cmp = flag_unsafe_math_optimizations
		? FUNC28 (compare_result2, rs6000_compare_op0,
				   rs6000_compare_op1)
		: FUNC10 (compare_result2, rs6000_compare_op0,
				   rs6000_compare_op1);
	      break;

	    case DFmode:
	      cmp = flag_unsafe_math_optimizations
		? FUNC25 (compare_result2, rs6000_compare_op0,
				   rs6000_compare_op1)
		: FUNC7 (compare_result2, rs6000_compare_op0,
				   rs6000_compare_op1);
	      break;

	    default:
	      FUNC6 ();
	    }
	  FUNC5 (cmp);

	  /* OR them together.  */
	  or_result = FUNC14 (CCFPmode);
	  cmp = FUNC13 (or_result, compare_result,
					   compare_result2);
	  compare_result = or_result;
	  code = EQ;
	}
      else
	{
	  if (code == NE || code == LTGT)
	    code = NE;
	  else
	    code = EQ;
	}

      FUNC5 (cmp);
    }
  else
    {
      /* Generate XLC-compatible TFmode compare as PARALLEL with extra
	 CLOBBERs to match cmptf_internal2 pattern.  */
      if (comp_mode == CCFPmode && TARGET_XL_COMPAT
	  && FUNC1 (rs6000_compare_op0) == TFmode
	  && !TARGET_IEEEQUAD
	  && TARGET_HARD_FLOAT && TARGET_FPRS && TARGET_LONG_DOUBLE_128)
	FUNC5 (FUNC19 (VOIDmode,
	  FUNC15 (9,
		     FUNC21 (VOIDmode,
				  compare_result,
				  FUNC17 (comp_mode,
						   rs6000_compare_op0,
						   rs6000_compare_op1)),
		     FUNC16 (VOIDmode, FUNC20 (DFmode)),
		     FUNC16 (VOIDmode, FUNC20 (DFmode)),
		     FUNC16 (VOIDmode, FUNC20 (DFmode)),
		     FUNC16 (VOIDmode, FUNC20 (DFmode)),
		     FUNC16 (VOIDmode, FUNC20 (DFmode)),
		     FUNC16 (VOIDmode, FUNC20 (DFmode)),
		     FUNC16 (VOIDmode, FUNC20 (DFmode)),
		     FUNC16 (VOIDmode, FUNC20 (DFmode)))));
      else if (FUNC0 (rs6000_compare_op1) == UNSPEC
	       && FUNC3 (rs6000_compare_op1, 1) == UNSPEC_SP_TEST)
	{
	  rtx op1 = FUNC4 (rs6000_compare_op1, 0, 0);
	  comp_mode = CCEQmode;
	  compare_result = FUNC14 (CCEQmode);
	  if (TARGET_64BIT)
	    FUNC5 (FUNC23 (compare_result,
						 rs6000_compare_op0, op1));
	  else
	    FUNC5 (FUNC24 (compare_result,
						 rs6000_compare_op0, op1));
	}
      else
	FUNC5 (FUNC21 (VOIDmode, compare_result,
				FUNC17 (comp_mode,
						 rs6000_compare_op0,
						 rs6000_compare_op1)));
    }

  /* Some kinds of FP comparisons need an OR operation;
     under flag_finite_math_only we don't bother.  */
  if (rs6000_compare_fp_p
      && !flag_finite_math_only
      && !(TARGET_HARD_FLOAT && TARGET_E500 && !TARGET_FPRS)
      && (code == LE || code == GE
	  || code == UNEQ || code == LTGT
	  || code == UNGT || code == UNLT))
    {
      enum rtx_code or1, or2;
      rtx or1_rtx, or2_rtx, compare2_rtx;
      rtx or_result = FUNC14 (CCEQmode);

      switch (code)
	{
	case LE: or1 = LT;  or2 = EQ;  break;
	case GE: or1 = GT;  or2 = EQ;  break;
	case UNEQ: or1 = UNORDERED;  or2 = EQ;  break;
	case LTGT: or1 = LT;  or2 = GT;  break;
	case UNGT: or1 = UNORDERED;  or2 = GT;  break;
	case UNLT: or1 = UNORDERED;  or2 = LT;  break;
	default:  FUNC6 ();
	}
      FUNC31 (or1, comp_mode);
      FUNC31 (or2, comp_mode);
      or1_rtx = FUNC22 (or1, SImode, compare_result, const0_rtx);
      or2_rtx = FUNC22 (or2, SImode, compare_result, const0_rtx);
      compare2_rtx = FUNC17 (CCEQmode,
				      FUNC18 (SImode, or1_rtx, or2_rtx),
				      const_true_rtx);
      FUNC5 (FUNC21 (VOIDmode, or_result, compare2_rtx));

      compare_result = or_result;
      code = EQ;
    }

  FUNC31 (code, FUNC1 (compare_result));

  return FUNC22 (code, VOIDmode, compare_result, const0_rtx);
}