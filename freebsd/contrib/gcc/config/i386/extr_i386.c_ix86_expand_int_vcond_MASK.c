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
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
#define  GEU 138 
#define  GT 137 
#define  GTU 136 
#define  LE 135 
#define  LEU 134 
#define  LT 133 
#define  LTU 132 
#define  NE 131 
#define  V16QImode 130 
#define  V4SImode 129 
#define  V8HImode 128 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (int) ; 
 int FUNC18 (int) ; 

bool
FUNC19 (rtx operands[])
{
  enum machine_mode mode = FUNC3 (operands[0]);
  enum rtx_code code = FUNC2 (operands[3]);
  bool negate = false;
  rtx x, cop0, cop1;

  cop0 = operands[4];
  cop1 = operands[5];

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
      code = FUNC17 (code);
      negate = true;
      break;

    case GE:
    case GEU:
      code = FUNC17 (code);
      negate = true;
      /* FALLTHRU */

    case LT:
    case LTU:
      code = FUNC18 (code);
      x = cop0, cop0 = cop1, cop1 = x;
      break;

    default:
      FUNC6 ();
    }

  /* Unsigned parallel compare is not supported by the hardware.  Play some
     tricks to turn this into a signed comparison against 0.  */
  if (code == GTU)
    {
      cop0 = FUNC5 (mode, cop0);

      switch (mode)
	{
	case V4SImode:
	  {
	    rtx t1, t2, mask;

	    /* Perform a parallel modulo subtraction.  */
	    t1 = FUNC8 (mode);
	    FUNC4 (FUNC13 (t1, cop0, cop1));

	    /* Extract the original sign bit of op0.  */
	    mask = FUNC1 (-0x80000000);
	    mask = FUNC10 (mode,
			FUNC9 (4, mask, mask, mask, mask));
	    mask = FUNC5 (mode, mask);
	    t2 = FUNC8 (mode);
	    FUNC4 (FUNC7 (t2, cop0, mask));

	    /* XOR it back into the result of the subtraction.  This results
	       in the sign bit set iff we saw unsigned underflow.  */
	    x = FUNC8 (mode);
	    FUNC4 (FUNC14 (x, t1, t2));

	    code = GT;
	  }
	  break;

	case V16QImode:
	case V8HImode:
	  /* Perform a parallel unsigned saturating subtraction.  */
	  x = FUNC8 (mode);
	  FUNC4 (FUNC11 (VOIDmode, x,
				  FUNC12 (mode, cop0, cop1)));

	  code = EQ;
	  negate = !negate;
	  break;

	default:
	  FUNC6 ();
	}

      cop0 = x;
      cop1 = FUNC0 (mode);
    }

  x = FUNC15 (operands[0], code, cop0, cop1,
			   operands[1+negate], operands[2-negate]);

  FUNC16 (operands[0], x, operands[1+negate],
			 operands[2-negate]);
  return true;
}