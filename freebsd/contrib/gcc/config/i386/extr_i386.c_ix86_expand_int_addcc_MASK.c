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
 scalar_t__ CCFPUmode ; 
 scalar_t__ CCFPmode ; 
#define  DImode 131 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
#define  HImode 130 
 int LTU ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
#define  QImode 129 
#define  SImode 128 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ const1_rtx ; 
 scalar_t__ constm1_rtx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  ix86_compare_op0 ; 
 int /*<<< orphan*/  ix86_compare_op1 ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 

int
FUNC19 (rtx operands[])
{
  enum rtx_code code = FUNC0 (operands[1]);
  rtx compare_op;
  rtx val = const0_rtx;
  bool fpcmp = false;
  enum machine_mode mode = FUNC1 (operands[0]);

  if (operands[3] != const1_rtx
      && operands[3] != constm1_rtx)
    return 0;
  if (!FUNC15 (code, ix86_compare_op0,
				       ix86_compare_op1, &compare_op))
     return 0;
  code = FUNC0 (compare_op);

  if (FUNC1 (FUNC4 (compare_op, 0)) == CCFPmode
      || FUNC1 (FUNC4 (compare_op, 0)) == CCFPUmode)
    {
      fpcmp = true;
      code = FUNC16 (code);
    }

  if (code != LTU)
    {
      val = constm1_rtx;
      if (fpcmp)
	FUNC2 (compare_op,
		  FUNC18
		    (FUNC0 (compare_op)));
      else
	FUNC2 (compare_op, FUNC17 (FUNC0 (compare_op)));
    }
  FUNC3 (compare_op, mode);

  /* Construct either adc or sbb insn.  */
  if ((code == LTU) == (operands[3] == constm1_rtx))
    {
      switch (FUNC1 (operands[0]))
	{
	  case QImode:
            FUNC5 (FUNC13 (operands[0], operands[2], val, compare_op));
	    break;
	  case HImode:
            FUNC5 (FUNC12 (operands[0], operands[2], val, compare_op));
	    break;
	  case SImode:
            FUNC5 (FUNC14 (operands[0], operands[2], val, compare_op));
	    break;
	  case DImode:
            FUNC5 (FUNC11 (operands[0], operands[2], val, compare_op));
	    break;
	  default:
	    FUNC6 ();
	}
    }
  else
    {
      switch (FUNC1 (operands[0]))
	{
	  case QImode:
            FUNC5 (FUNC9 (operands[0], operands[2], val, compare_op));
	    break;
	  case HImode:
            FUNC5 (FUNC8 (operands[0], operands[2], val, compare_op));
	    break;
	  case SImode:
            FUNC5 (FUNC10 (operands[0], operands[2], val, compare_op));
	    break;
	  case DImode:
            FUNC5 (FUNC7 (operands[0], operands[2], val, compare_op));
	    break;
	  default:
	    FUNC6 ();
	}
    }
  return 1; /* DONE */
}