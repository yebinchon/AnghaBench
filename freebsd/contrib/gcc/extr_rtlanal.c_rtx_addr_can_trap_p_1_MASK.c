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
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 size_t ARG_POINTER_REGNUM ; 
#define  CONST 139 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CONST_INT ; 
 int /*<<< orphan*/  FIRST_VIRTUAL_REGISTER ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
#define  LABEL_REF 138 
 int /*<<< orphan*/  LAST_VIRTUAL_REGISTER ; 
#define  LO_SUM 137 
#define  PLUS 136 
#define  POST_DEC 135 
#define  POST_INC 134 
#define  POST_MODIFY 133 
#define  PRE_DEC 132 
#define  PRE_INC 131 
#define  PRE_MODIFY 130 
#define  REG 129 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPARC_STACK_BOUNDARY_HACK ; 
 int STACK_POINTER_OFFSET ; 
 int /*<<< orphan*/  STRICT_ALIGNMENT ; 
#define  SYMBOL_REF 128 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  arg_pointer_rtx ; 
 int /*<<< orphan*/ * fixed_regs ; 
 int /*<<< orphan*/  frame_pointer_rtx ; 
 int /*<<< orphan*/  hard_frame_pointer_rtx ; 
 int /*<<< orphan*/  pic_offset_table_rtx ; 
 int /*<<< orphan*/  stack_pointer_rtx ; 

__attribute__((used)) static int
FUNC7 (rtx x, enum machine_mode mode, bool unaligned_mems)
{
  enum rtx_code code = FUNC1 (x);

  switch (code)
    {
    case SYMBOL_REF:
      return FUNC5 (x);

    case LABEL_REF:
      return 0;

    case REG:
      /* As in rtx_varies_p, we have to use the actual rtx, not reg number.  */
      if (x == frame_pointer_rtx || x == hard_frame_pointer_rtx
	  || x == stack_pointer_rtx
	  /* The arg pointer varies if it is not a fixed register.  */
	  || (x == arg_pointer_rtx && fixed_regs[ARG_POINTER_REGNUM]))
	return 0;
      /* All of the virtual frame registers are stack references.  */
      if (FUNC4 (x) >= FIRST_VIRTUAL_REGISTER
	  && FUNC4 (x) <= LAST_VIRTUAL_REGISTER)
	return 0;
      return 1;

    case CONST:
      return FUNC7 (FUNC6 (x, 0), mode, unaligned_mems);

    case PLUS:
      /* An address is assumed not to trap if:
	 - it is an address that can't trap plus a constant integer,
	   with the proper remainder modulo the mode size if we are
	   considering unaligned memory references.  */
      if (!FUNC7 (FUNC6 (x, 0), mode, unaligned_mems)
	  && FUNC1 (FUNC6 (x, 1)) == CONST_INT)
	{
	  HOST_WIDE_INT offset;

	  if (!STRICT_ALIGNMENT
	      || !unaligned_mems
	      || FUNC2 (mode) == 0)
	    return 0;

	  offset = FUNC3 (FUNC6 (x, 1));

#ifdef SPARC_STACK_BOUNDARY_HACK
	  /* ??? The SPARC port may claim a STACK_BOUNDARY higher than
	     the real alignment of %sp.  However, when it does this, the
	     alignment of %sp+STACK_POINTER_OFFSET is STACK_BOUNDARY.  */
	  if (SPARC_STACK_BOUNDARY_HACK
	      && (XEXP (x, 0) == stack_pointer_rtx
		  || XEXP (x, 0) == hard_frame_pointer_rtx))
	    offset -= STACK_POINTER_OFFSET;
#endif

	  return offset % FUNC2 (mode) != 0;
	}

      /* - or it is the pic register plus a constant.  */
      if (FUNC6 (x, 0) == pic_offset_table_rtx && FUNC0 (FUNC6 (x, 1)))
	return 0;

      return 1;

    case LO_SUM:
    case PRE_MODIFY:
      return FUNC7 (FUNC6 (x, 1), mode, unaligned_mems);

    case PRE_DEC:
    case PRE_INC:
    case POST_DEC:
    case POST_INC:
    case POST_MODIFY:
      return FUNC7 (FUNC6 (x, 0), mode, unaligned_mems);

    default:
      break;
    }

  /* If it isn't one of the case above, it can cause a trap.  */
  return 1;
}