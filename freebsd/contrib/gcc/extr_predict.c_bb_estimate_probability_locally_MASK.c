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
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
#define  CONST_INT 138 
#define  EQ 137 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  GE 136 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  GT 135 
#define  LE 134 
#define  LT 133 
#define  LTGT 132 
#define  NE 131 
 int /*<<< orphan*/  NOT_TAKEN ; 
#define  ORDERED 130 
 int /*<<< orphan*/  PRED_FPOPCODE ; 
 int /*<<< orphan*/  PRED_OPCODE_NONEQUAL ; 
 int /*<<< orphan*/  PRED_OPCODE_POSITIVE ; 
 int /*<<< orphan*/  PRED_POINTER ; 
 int /*<<< orphan*/  PRED_UNCONDITIONAL ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAKEN ; 
#define  UNEQ 129 
#define  UNORDERED 128 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  const1_rtx ; 
 int /*<<< orphan*/  constm1_rtx ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11 (basic_block bb)
{
  rtx last_insn = FUNC0 (bb);
  rtx cond;

  if (! FUNC8 (last_insn))
    return;
  cond = FUNC9 (last_insn, NULL, false, false);
  if (! cond)
    return;

  /* Try "pointer heuristic."
     A comparison ptr == 0 is predicted as false.
     Similarly, a comparison ptr1 == ptr2 is predicted as false.  */
  if (FUNC1 (cond)
      && ((FUNC5 (FUNC7 (cond, 0)) && FUNC6 (FUNC7 (cond, 0)))
	  || (FUNC5 (FUNC7 (cond, 1)) && FUNC6 (FUNC7 (cond, 1)))))
    {
      if (FUNC3 (cond) == EQ)
	FUNC10 (last_insn, PRED_POINTER, NOT_TAKEN);
      else if (FUNC3 (cond) == NE)
	FUNC10 (last_insn, PRED_POINTER, TAKEN);
    }
  else

  /* Try "opcode heuristic."
     EQ tests are usually false and NE tests are usually true. Also,
     most quantities are positive, so we can make the appropriate guesses
     about signed comparisons against zero.  */
    switch (FUNC3 (cond))
      {
      case CONST_INT:
	/* Unconditional branch.  */
	FUNC10 (last_insn, PRED_UNCONDITIONAL,
			  cond == const0_rtx ? NOT_TAKEN : TAKEN);
	break;

      case EQ:
      case UNEQ:
	/* Floating point comparisons appears to behave in a very
	   unpredictable way because of special role of = tests in
	   FP code.  */
	if (FUNC2 (FUNC4 (FUNC7 (cond, 0))))
	  ;
	/* Comparisons with 0 are often used for booleans and there is
	   nothing useful to predict about them.  */
	else if (FUNC7 (cond, 1) == const0_rtx
		 || FUNC7 (cond, 0) == const0_rtx)
	  ;
	else
	  FUNC10 (last_insn, PRED_OPCODE_NONEQUAL, NOT_TAKEN);
	break;

      case NE:
      case LTGT:
	/* Floating point comparisons appears to behave in a very
	   unpredictable way because of special role of = tests in
	   FP code.  */
	if (FUNC2 (FUNC4 (FUNC7 (cond, 0))))
	  ;
	/* Comparisons with 0 are often used for booleans and there is
	   nothing useful to predict about them.  */
	else if (FUNC7 (cond, 1) == const0_rtx
		 || FUNC7 (cond, 0) == const0_rtx)
	  ;
	else
	  FUNC10 (last_insn, PRED_OPCODE_NONEQUAL, TAKEN);
	break;

      case ORDERED:
	FUNC10 (last_insn, PRED_FPOPCODE, TAKEN);
	break;

      case UNORDERED:
	FUNC10 (last_insn, PRED_FPOPCODE, NOT_TAKEN);
	break;

      case LE:
      case LT:
	if (FUNC7 (cond, 1) == const0_rtx || FUNC7 (cond, 1) == const1_rtx
	    || FUNC7 (cond, 1) == constm1_rtx)
	  FUNC10 (last_insn, PRED_OPCODE_POSITIVE, NOT_TAKEN);
	break;

      case GE:
      case GT:
	if (FUNC7 (cond, 1) == const0_rtx || FUNC7 (cond, 1) == const1_rtx
	    || FUNC7 (cond, 1) == constm1_rtx)
	  FUNC10 (last_insn, PRED_OPCODE_POSITIVE, TAKEN);
	break;

      default:
	break;
      }
}