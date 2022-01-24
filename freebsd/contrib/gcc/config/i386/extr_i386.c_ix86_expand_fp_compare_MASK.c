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
 int CCNOmode ; 
 int CCmode ; 
#define  EQ 141 
 int /*<<< orphan*/  FLAGS_REG ; 
#define  GE 140 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int GEU ; 
#define  GT 139 
 int /*<<< orphan*/  HImode ; 
#define  LE 138 
#define  LT 137 
#define  LTGT 136 
 int LTU ; 
#define  NE 135 
 scalar_t__ NULL_RTX ; 
#define  ORDERED 134 
 scalar_t__ TARGET_CMOVE ; 
 int /*<<< orphan*/  TARGET_IEEE_FP ; 
#define  UNEQ 133 
#define  UNGE 132 
#define  UNGT 131 
 int UNKNOWN ; 
#define  UNLE 130 
#define  UNLT 129 
#define  UNORDERED 128 
 int /*<<< orphan*/  UNSPEC_FNSTSW ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  constm1_rtx ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 scalar_t__ FUNC8 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC16 (int) ; 
 int FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int,int*,int*,int*) ; 
 int FUNC19 (int) ; 
 int FUNC20 (int,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static rtx
FUNC21 (enum rtx_code code, rtx op0, rtx op1, rtx scratch,
			rtx *second_test, rtx *bypass_test)
{
  enum machine_mode fpcmp_mode, intcmp_mode;
  rtx tmp, tmp2;
  int cost = FUNC19 (code);
  enum rtx_code bypass_code, first_code, second_code;

  fpcmp_mode = FUNC16 (code);
  code = FUNC20 (code, &op0, &op1);

  if (second_test)
    *second_test = NULL_RTX;
  if (bypass_test)
    *bypass_test = NULL_RTX;

  FUNC18 (code, &bypass_code, &first_code, &second_code);

  /* Do fcomi/sahf based test when profitable.  */
  if ((bypass_code == UNKNOWN || bypass_test)
      && (second_code == UNKNOWN || second_test)
      && FUNC17 (code) > cost)
    {
      if (TARGET_CMOVE)
	{
	  tmp = FUNC8 (fpcmp_mode, op0, op1);
	  tmp = FUNC10 (VOIDmode, FUNC9 (fpcmp_mode, FLAGS_REG),
			     tmp);
	  FUNC1 (tmp);
	}
      else
	{
	  tmp = FUNC8 (fpcmp_mode, op0, op1);
	  tmp2 = FUNC11 (HImode, FUNC7 (1, tmp), UNSPEC_FNSTSW);
	  if (!scratch)
	    scratch = FUNC6 (HImode);
	  FUNC1 (FUNC10 (VOIDmode, scratch, tmp2));
	  FUNC1 (FUNC14 (scratch));
	}

      /* The FP codes work out to act like unsigned.  */
      intcmp_mode = fpcmp_mode;
      code = first_code;
      if (bypass_code != UNKNOWN)
	*bypass_test = FUNC12 (bypass_code, VOIDmode,
				       FUNC9 (intcmp_mode, FLAGS_REG),
				       const0_rtx);
      if (second_code != UNKNOWN)
	*second_test = FUNC12 (second_code, VOIDmode,
				       FUNC9 (intcmp_mode, FLAGS_REG),
				       const0_rtx);
    }
  else
    {
      /* Sadness wrt reg-stack pops killing fpsr -- gotta get fnstsw first.  */
      tmp = FUNC8 (fpcmp_mode, op0, op1);
      tmp2 = FUNC11 (HImode, FUNC7 (1, tmp), UNSPEC_FNSTSW);
      if (!scratch)
	scratch = FUNC6 (HImode);
      FUNC1 (FUNC10 (VOIDmode, scratch, tmp2));

      /* In the unordered case, we have to check C2 for NaN's, which
	 doesn't happen to work out to anything nice combination-wise.
	 So do some bit twiddling on the value we've got in AH to come
	 up with an appropriate set of condition codes.  */

      intcmp_mode = CCNOmode;
      switch (code)
	{
	case GT:
	case UNGT:
	  if (code == GT || !TARGET_IEEE_FP)
	    {
	      FUNC1 (FUNC13 (scratch, FUNC0 (0x45)));
	      code = EQ;
	    }
	  else
	    {
	      FUNC1 (FUNC4 (scratch, scratch, FUNC0 (0x45)));
	      FUNC1 (FUNC3 (scratch, scratch, constm1_rtx));
	      FUNC1 (FUNC5 (scratch, FUNC0 (0x44)));
	      intcmp_mode = CCmode;
	      code = GEU;
	    }
	  break;
	case LT:
	case UNLT:
	  if (code == LT && TARGET_IEEE_FP)
	    {
	      FUNC1 (FUNC4 (scratch, scratch, FUNC0 (0x45)));
	      FUNC1 (FUNC5 (scratch, FUNC0 (0x01)));
	      intcmp_mode = CCmode;
	      code = EQ;
	    }
	  else
	    {
	      FUNC1 (FUNC13 (scratch, FUNC0 (0x01)));
	      code = NE;
	    }
	  break;
	case GE:
	case UNGE:
	  if (code == GE || !TARGET_IEEE_FP)
	    {
	      FUNC1 (FUNC13 (scratch, FUNC0 (0x05)));
	      code = EQ;
	    }
	  else
	    {
	      FUNC1 (FUNC4 (scratch, scratch, FUNC0 (0x45)));
	      FUNC1 (FUNC15 (scratch, scratch,
					     FUNC0 (0x01)));
	      code = NE;
	    }
	  break;
	case LE:
	case UNLE:
	  if (code == LE && TARGET_IEEE_FP)
	    {
	      FUNC1 (FUNC4 (scratch, scratch, FUNC0 (0x45)));
	      FUNC1 (FUNC3 (scratch, scratch, constm1_rtx));
	      FUNC1 (FUNC5 (scratch, FUNC0 (0x40)));
	      intcmp_mode = CCmode;
	      code = LTU;
	    }
	  else
	    {
	      FUNC1 (FUNC13 (scratch, FUNC0 (0x45)));
	      code = NE;
	    }
	  break;
	case EQ:
	case UNEQ:
	  if (code == EQ && TARGET_IEEE_FP)
	    {
	      FUNC1 (FUNC4 (scratch, scratch, FUNC0 (0x45)));
	      FUNC1 (FUNC5 (scratch, FUNC0 (0x40)));
	      intcmp_mode = CCmode;
	      code = EQ;
	    }
	  else
	    {
	      FUNC1 (FUNC13 (scratch, FUNC0 (0x40)));
	      code = NE;
	      break;
	    }
	  break;
	case NE:
	case LTGT:
	  if (code == NE && TARGET_IEEE_FP)
	    {
	      FUNC1 (FUNC4 (scratch, scratch, FUNC0 (0x45)));
	      FUNC1 (FUNC15 (scratch, scratch,
					     FUNC0 (0x40)));
	      code = NE;
	    }
	  else
	    {
	      FUNC1 (FUNC13 (scratch, FUNC0 (0x40)));
	      code = EQ;
	    }
	  break;

	case UNORDERED:
	  FUNC1 (FUNC13 (scratch, FUNC0 (0x04)));
	  code = NE;
	  break;
	case ORDERED:
	  FUNC1 (FUNC13 (scratch, FUNC0 (0x04)));
	  code = EQ;
	  break;

	default:
	  FUNC2 ();
	}
    }

  /* Return the test that should be put into the flags user, i.e.
     the bcc, scc, or cmov instruction.  */
  return FUNC12 (code, VOIDmode,
			 FUNC9 (intcmp_mode, FLAGS_REG),
			 const0_rtx);
}