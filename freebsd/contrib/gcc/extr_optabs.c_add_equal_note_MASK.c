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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  REG_EQUAL ; 
 scalar_t__ RTX_BIN_ARITH ; 
 scalar_t__ RTX_COMM_ARITH ; 
 scalar_t__ RTX_COMM_COMPARE ; 
 scalar_t__ RTX_COMPARE ; 
 scalar_t__ RTX_UNARY ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ STRICT_LOW_PART ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ ZERO_EXTRACT ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 

__attribute__((used)) static int
FUNC17 (rtx insns, rtx target, enum rtx_code code, rtx op0, rtx op1)
{
  rtx last_insn, insn, set;
  rtx note;

  FUNC9 (insns && FUNC3 (insns) && FUNC4 (insns));

  if (FUNC2 (code) != RTX_COMM_ARITH
      && FUNC2 (code) != RTX_BIN_ARITH
      && FUNC2 (code) != RTX_COMM_COMPARE
      && FUNC2 (code) != RTX_COMPARE
      && FUNC2 (code) != RTX_UNARY)
    return 1;

  if (FUNC0 (target) == ZERO_EXTRACT)
    return 1;

  for (last_insn = insns;
       FUNC4 (last_insn) != NULL_RTX;
       last_insn = FUNC4 (last_insn))
    ;

  set = FUNC16 (last_insn);
  if (set == NULL_RTX)
    return 1;

  if (! FUNC14 (FUNC6 (set), target)
      /* For a STRICT_LOW_PART, the REG_NOTE applies to what is inside it.  */
      && (FUNC0 (FUNC6 (set)) != STRICT_LOW_PART
	  || ! FUNC14 (FUNC7 (FUNC6 (set), 0), target)))
    return 1;

  /* If TARGET is in OP0 or OP1, check if anything in SEQ sets TARGET
     besides the last insn.  */
  if (FUNC12 (target, op0)
      || (op1 && FUNC12 (target, op1)))
    {
      insn = FUNC5 (last_insn);
      while (insn != NULL_RTX)
	{
	  if (FUNC13 (target, insn))
	    return 0;

	  insn = FUNC5 (insn);
	}
    }

  if (FUNC2 (code) == RTX_UNARY)
    note = FUNC10 (code, FUNC1 (target), FUNC8 (op0));
  else
    note = FUNC11 (code, FUNC1 (target), FUNC8 (op0), FUNC8 (op1));

  FUNC15 (last_insn, REG_EQUAL, note);

  return 1;
}