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
typedef  int RTX_CODE ;

/* Variables and functions */
 size_t ARG_POINTER_REGNUM ; 
#define  ASM_OPERANDS 137 
#define  CONST 136 
#define  CONST_DOUBLE 135 
#define  CONST_INT 134 
#define  CONST_VECTOR 133 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int) ; 
#define  LABEL_REF 132 
#define  LO_SUM 131 
#define  MEM 130 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  REG 129 
#define  SYMBOL_REF 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  arg_pointer_rtx ; 
 int /*<<< orphan*/ * fixed_regs ; 
 int /*<<< orphan*/  frame_pointer_rtx ; 
 int /*<<< orphan*/  hard_frame_pointer_rtx ; 
 int /*<<< orphan*/  pic_offset_table_rtx ; 

int
FUNC8 (rtx x, int for_alias)
{
  RTX_CODE code;
  int i;
  const char *fmt;

  if (!x)
    return 0;

  code = FUNC0 (x);
  switch (code)
    {
    case MEM:
      return !FUNC3 (x) || FUNC8 (FUNC5 (x, 0), for_alias);

    case CONST:
    case CONST_INT:
    case CONST_DOUBLE:
    case CONST_VECTOR:
    case SYMBOL_REF:
    case LABEL_REF:
      return 0;

    case REG:
      /* Note that we have to test for the actual rtx used for the frame
	 and arg pointers and not just the register number in case we have
	 eliminated the frame and/or arg pointer and are using it
	 for pseudos.  */
      if (x == frame_pointer_rtx || x == hard_frame_pointer_rtx
	  /* The arg pointer varies if it is not a fixed register.  */
	  || (x == arg_pointer_rtx && fixed_regs[ARG_POINTER_REGNUM]))
	return 0;
      if (x == pic_offset_table_rtx
#ifdef PIC_OFFSET_TABLE_REG_CALL_CLOBBERED
	  /* ??? When call-clobbered, the value is stable modulo the restore
	     that must happen after a call.  This currently screws up
	     local-alloc into believing that the restore is not needed, so we
	     must return 0 only if we are called from alias analysis.  */
	  && for_alias
#endif
	  )
	return 0;
      return 1;

    case LO_SUM:
      /* The operand 0 of a LO_SUM is considered constant
	 (in fact it is related specifically to operand 1)
	 during alias analysis.  */
      return (! for_alias && FUNC8 (FUNC5 (x, 0), for_alias))
	     || FUNC8 (FUNC5 (x, 1), for_alias);

    case ASM_OPERANDS:
      if (FUNC4 (x))
	return 1;

      /* Fall through.  */

    default:
      break;
    }

  fmt = FUNC1 (code);
  for (i = FUNC2 (code) - 1; i >= 0; i--)
    if (fmt[i] == 'e')
      {
	if (FUNC8 (FUNC5 (x, i), for_alias))
	  return 1;
      }
    else if (fmt[i] == 'E')
      {
	int j;
	for (j = 0; j < FUNC7 (x, i); j++)
	  if (FUNC8 (FUNC6 (x, i, j), for_alias))
	    return 1;
      }

  return 0;
}