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
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  EQ 140 
#define  GE 139 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  GEU 138 
#define  GT 137 
#define  GTU 136 
#define  LE 135 
#define  LEU 134 
#define  LT 133 
#define  LTU 132 
#define  NE 131 
#define  V2SImode 130 
#define  V4HImode 129 
#define  V8QImode 128 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int const) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int) ; 

__attribute__((used)) static bool
FUNC16 (enum rtx_code code, enum machine_mode mode,
			    rtx dest, rtx op0, rtx op1)
{
  bool negate = false;
  rtx x;

  /* Canonicalize the comparison to EQ, GT, GTU.  */
  switch (code)
    {
    case EQ:
    case GT:
    case GTU:
      break;

    case NE:
    case LE:
    case LEU:
      code = FUNC14 (code);
      negate = true;
      break;

    case GE:
    case GEU:
      code = FUNC14 (code);
      negate = true;
      /* FALLTHRU */

    case LT:
    case LTU:
      code = FUNC15 (code);
      x = op0, op0 = op1, op1 = x;
      break;

    default:
      FUNC4 ();
    }

  /* Unsigned parallel compare is not supported by the hardware.  Play some
     tricks to turn this into a signed comparison against 0.  */
  if (code == GTU)
    {
      switch (mode)
	{
	case V2SImode:
	  {
	    rtx t1, t2, mask;

	    /* Perform a parallel modulo subtraction.  */
	    t1 = FUNC6 (V2SImode);
	    FUNC2 (FUNC12 (t1, op0, op1));

	    /* Extract the original sign bit of op0.  */
	    mask = FUNC1 (-0x80000000);
	    mask = FUNC8 (V2SImode, FUNC7 (2, mask, mask));
	    mask = FUNC3 (V2SImode, mask);
	    t2 = FUNC6 (V2SImode);
	    FUNC2 (FUNC5 (t2, op0, mask));

	    /* XOR it back into the result of the subtraction.  This results
	       in the sign bit set iff we saw unsigned underflow.  */
	    x = FUNC6 (V2SImode);
	    FUNC2 (FUNC13 (x, t1, t2));

	    code = GT;
	    op0 = x;
	    op1 = FUNC0 (mode);
	  }
	  break;

	case V8QImode:
	case V4HImode:
	  /* Perform a parallel unsigned saturating subtraction.  */
	  x = FUNC6 (mode);
	  FUNC2 (FUNC9 (VOIDmode, x,
				  FUNC10 (mode, op0, op1)));

	  code = EQ;
	  op0 = x;
	  op1 = FUNC0 (mode);
	  negate = !negate;
	  break;

	default:
	  FUNC4 ();
	}
    }

  x = FUNC11 (code, mode, op0, op1);
  FUNC2 (FUNC9 (VOIDmode, dest, x));

  return negate;
}