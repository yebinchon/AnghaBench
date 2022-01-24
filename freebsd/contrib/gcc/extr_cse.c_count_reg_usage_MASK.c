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
#define  ASM_OPERANDS 144 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
#define  CALL_INSN 143 
 scalar_t__ FUNC2 (scalar_t__) ; 
#define  CC0 142 
#define  CLOBBER 141 
#define  CONST 140 
#define  CONST_DOUBLE 139 
#define  CONST_INT 138 
#define  CONST_VECTOR 137 
#define  EXPR_LIST 136 
 int const FUNC3 (scalar_t__) ; 
 char* FUNC4 (int) ; 
 int FUNC5 (int) ; 
#define  INSN 135 
#define  INSN_LIST 134 
#define  JUMP_INSN 133 
#define  LABEL_REF 132 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
#define  PC 131 
#define  REG 130 
 size_t FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  REG_EQUAL ; 
 int /*<<< orphan*/  REG_NONNEG ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
#define  SET 129 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
#define  SYMBOL_REF 128 
 int const USE ; 
 scalar_t__ FUNC14 (scalar_t__,int) ; 
 scalar_t__ FUNC15 (scalar_t__,int,int) ; 
 int FUNC16 (scalar_t__,int) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  flag_non_call_exceptions ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 scalar_t__ pc_rtx ; 

__attribute__((used)) static void
FUNC20 (rtx x, int *counts, rtx dest, int incr)
{
  enum rtx_code code;
  rtx note;
  const char *fmt;
  int i, j;

  if (x == 0)
    return;

  switch (code = FUNC3 (x))
    {
    case REG:
      if (x != dest)
	counts[FUNC9 (x)] += incr;
      return;

    case PC:
    case CC0:
    case CONST:
    case CONST_INT:
    case CONST_DOUBLE:
    case CONST_VECTOR:
    case SYMBOL_REF:
    case LABEL_REF:
      return;

    case CLOBBER:
      /* If we are clobbering a MEM, mark any registers inside the address
         as being used.  */
      if (FUNC6 (FUNC14 (x, 0)))
	FUNC20 (FUNC14 (FUNC14 (x, 0), 0), counts, NULL_RTX, incr);
      return;

    case SET:
      /* Unless we are setting a REG, count everything in SET_DEST.  */
      if (!FUNC11 (FUNC12 (x)))
	FUNC20 (FUNC12 (x), counts, NULL_RTX, incr);
      FUNC20 (FUNC13 (x), counts,
		       dest ? dest : FUNC12 (x),
		       incr);
      return;

    case CALL_INSN:
    case INSN:
    case JUMP_INSN:
    /* We expect dest to be NULL_RTX here.  If the insn may trap, mark
       this fact by setting DEST to pc_rtx.  */
      if (flag_non_call_exceptions && FUNC19 (FUNC8 (x)))
	dest = pc_rtx;
      if (code == CALL_INSN)
	FUNC20 (FUNC2 (x), counts, dest, incr);
      FUNC20 (FUNC8 (x), counts, dest, incr);

      /* Things used in a REG_EQUAL note aren't dead since loop may try to
	 use them.  */

      note = FUNC17 (x);
      if (note)
	{
	  rtx eqv = FUNC14 (note, 0);

	  if (FUNC3 (eqv) == EXPR_LIST)
	  /* This REG_EQUAL note describes the result of a function call.
	     Process all the arguments.  */
	    do
	      {
		FUNC20 (FUNC14 (eqv, 0), counts, dest, incr);
		eqv = FUNC14 (eqv, 1);
	      }
	    while (eqv && FUNC3 (eqv) == EXPR_LIST);
	  else
	    FUNC20 (eqv, counts, dest, incr);
	}
      return;

    case EXPR_LIST:
      if (FUNC10 (x) == REG_EQUAL
	  || (FUNC10 (x) != REG_NONNEG && FUNC3 (FUNC14 (x,0)) == USE)
	  /* FUNCTION_USAGE expression lists may include (CLOBBER (mem /u)),
	     involving registers in the address.  */
	  || FUNC3 (FUNC14 (x, 0)) == CLOBBER)
	FUNC20 (FUNC14 (x, 0), counts, NULL_RTX, incr);

      FUNC20 (FUNC14 (x, 1), counts, NULL_RTX, incr);
      return;

    case ASM_OPERANDS:
      /* If the asm is volatile, then this insn cannot be deleted,
	 and so the inputs *must* be live.  */
      if (FUNC7 (x))
	dest = NULL_RTX;
      /* Iterate over just the inputs, not the constraints as well.  */
      for (i = FUNC1 (x) - 1; i >= 0; i--)
	FUNC20 (FUNC0 (x, i), counts, dest, incr);
      return;

    case INSN_LIST:
      FUNC18 ();

    default:
      break;
    }

  fmt = FUNC4 (code);
  for (i = FUNC5 (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
	FUNC20 (FUNC14 (x, i), counts, dest, incr);
      else if (fmt[i] == 'E')
	for (j = FUNC16 (x, i) - 1; j >= 0; j--)
	  FUNC20 (FUNC15 (x, i, j), counts, dest, incr);
    }
}