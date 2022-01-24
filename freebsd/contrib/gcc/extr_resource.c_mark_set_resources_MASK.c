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
struct resources {int cc; int memory; int volatil; int /*<<< orphan*/  regs; int /*<<< orphan*/  unch_memory; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum mark_resource_type { ____Placeholder_mark_resource_type } mark_resource_type ;

/* Variables and functions */
#define  ASM_INPUT 160 
#define  ASM_OPERANDS 159 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  BARRIER 158 
 int CALL ; 
#define  CALL_INSN 157 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  CC0 156 
#define  CLOBBER 155 
#define  CODE_LABEL 154 
#define  CONST 153 
#define  CONST_DOUBLE 152 
#define  CONST_INT 151 
#define  CONST_VECTOR 150 
 unsigned int FIRST_PSEUDO_REGISTER ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int) ; 
 int FUNC6 (int) ; 
#define  INSN 149 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
#define  JUMP_INSN 148 
#define  LABEL_REF 147 
 int MARK_SRC_DEST ; 
 int MARK_SRC_DEST_CALL ; 
#define  MEM 146 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
#define  NOTE 145 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
#define  PC 144 
#define  POST_DEC 143 
#define  POST_INC 142 
#define  POST_MODIFY 141 
#define  PRE_DEC 140 
#define  PRE_INC 139 
#define  PRE_MODIFY 138 
#define  REG 137 
 unsigned int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_SETJMP ; 
#define  SEQUENCE 136 
#define  SET 135 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
#define  SIGN_EXTRACT 134 
#define  SUBREG 133 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
#define  SYMBOL_REF 132 
#define  TRAP_IF 131 
#define  UNSPEC_VOLATILE 130 
#define  USE 129 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC22 (int /*<<< orphan*/ ,int) ; 
#define  ZERO_EXTRACT 128 
 int /*<<< orphan*/ * call_used_regs ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int /*<<< orphan*/ * global_regs ; 
 int /*<<< orphan*/ ** hard_regno_nregs ; 
 unsigned int FUNC25 (int /*<<< orphan*/ ) ; 

void
FUNC26 (rtx x, struct resources *res, int in_dest,
		    enum mark_resource_type mark_type)
{
  enum rtx_code code;
  int i, j;
  unsigned int r;
  const char *format_ptr;

 restart:

  code = FUNC3 (x);

  switch (code)
    {
    case NOTE:
    case BARRIER:
    case CODE_LABEL:
    case USE:
    case CONST_INT:
    case CONST_DOUBLE:
    case CONST_VECTOR:
    case LABEL_REF:
    case SYMBOL_REF:
    case CONST:
    case PC:
      /* These don't set any resources.  */
      return;

    case CC0:
      if (in_dest)
	res->cc = 1;
      return;

    case CALL_INSN:
      /* Called routine modifies the condition code, memory, any registers
	 that aren't saved across calls, global registers and anything
	 explicitly CLOBBERed immediately after the CALL_INSN.  */

      if (mark_type == MARK_SRC_DEST_CALL)
	{
	  rtx link;

	  res->cc = res->memory = 1;
	  for (r = 0; r < FIRST_PSEUDO_REGISTER; r++)
	    if (call_used_regs[r] || global_regs[r])
	      FUNC16 (res->regs, r);

	  for (link = FUNC2 (x);
	       link; link = FUNC20 (link, 1))
	    if (FUNC3 (FUNC20 (link, 0)) == CLOBBER)
	      FUNC26 (FUNC15 (FUNC20 (link, 0)), res, 1,
				  MARK_SRC_DEST);

	  /* Check for a REG_SETJMP.  If it exists, then we must
	     assume that this call can clobber any register.  */
	  if (FUNC23 (x, REG_SETJMP, NULL))
	    FUNC17 (res->regs);
	}

      /* ... and also what its RTL says it modifies, if anything.  */

    case JUMP_INSN:
    case INSN:

	/* An insn consisting of just a CLOBBER (or USE) is just for flow
	   and doesn't actually do anything, so we ignore it.  */

#ifdef INSN_SETS_ARE_DELAYED
      if (mark_type != MARK_SRC_DEST_CALL
	  && INSN_SETS_ARE_DELAYED (x))
	return;
#endif

      x = FUNC12 (x);
      if (FUNC3 (x) != USE && FUNC3 (x) != CLOBBER)
	goto restart;
      return;

    case SET:
      /* If the source of a SET is a CALL, this is actually done by
	 the called routine.  So only include it if we are to include the
	 effects of the calling routine.  */

      FUNC26 (FUNC15 (x), res,
			  (mark_type == MARK_SRC_DEST_CALL
			   || FUNC3 (FUNC18 (x)) != CALL),
			  mark_type);

      FUNC26 (FUNC18 (x), res, 0, MARK_SRC_DEST);
      return;

    case CLOBBER:
      FUNC26 (FUNC20 (x, 0), res, 1, MARK_SRC_DEST);
      return;

    case SEQUENCE:
      for (i = 0; i < FUNC22 (x, 0); i++)
	if (! (FUNC7 (FUNC21 (x, 0, 0))
	       && FUNC8 (FUNC21 (x, 0, i))))
	  FUNC26 (FUNC21 (x, 0, i), res, 0, mark_type);
      return;

    case POST_INC:
    case PRE_INC:
    case POST_DEC:
    case PRE_DEC:
      FUNC26 (FUNC20 (x, 0), res, 1, MARK_SRC_DEST);
      return;

    case PRE_MODIFY:
    case POST_MODIFY:
      FUNC26 (FUNC20 (x, 0), res, 1, MARK_SRC_DEST);
      FUNC26 (FUNC20 (FUNC20 (x, 1), 0), res, 0, MARK_SRC_DEST);
      FUNC26 (FUNC20 (FUNC20 (x, 1), 1), res, 0, MARK_SRC_DEST);
      return;

    case SIGN_EXTRACT:
    case ZERO_EXTRACT:
      FUNC26 (FUNC20 (x, 0), res, in_dest, MARK_SRC_DEST);
      FUNC26 (FUNC20 (x, 1), res, 0, MARK_SRC_DEST);
      FUNC26 (FUNC20 (x, 2), res, 0, MARK_SRC_DEST);
      return;

    case MEM:
      if (in_dest)
	{
	  res->memory = 1;
	  res->unch_memory |= FUNC10 (x);
	  res->volatil |= FUNC11 (x);
	}

      FUNC26 (FUNC20 (x, 0), res, 0, MARK_SRC_DEST);
      return;

    case SUBREG:
      if (in_dest)
	{
	  if (!FUNC14 (FUNC19 (x)))
	    FUNC26 (FUNC19 (x), res, in_dest, mark_type);
	  else
	    {
	      unsigned int regno = FUNC25 (x);
	      unsigned int last_regno
		= regno + hard_regno_nregs[regno][FUNC4 (x)];

	      FUNC24 (last_regno <= FIRST_PSEUDO_REGISTER);
	      for (r = regno; r < last_regno; r++)
		FUNC16 (res->regs, r);
	    }
	}
      return;

    case REG:
      if (in_dest)
	{
	  unsigned int regno = FUNC13 (x);
	  unsigned int last_regno
	    = regno + hard_regno_nregs[regno][FUNC4 (x)];

	  FUNC24 (last_regno <= FIRST_PSEUDO_REGISTER);
	  for (r = regno; r < last_regno; r++)
	    FUNC16 (res->regs, r);
	}
      return;

    case UNSPEC_VOLATILE:
    case ASM_INPUT:
      /* Traditional asm's are always volatile.  */
      res->volatil = 1;
      return;

    case TRAP_IF:
      res->volatil = 1;
      break;

    case ASM_OPERANDS:
      res->volatil |= FUNC11 (x);

      /* For all ASM_OPERANDS, we must traverse the vector of input operands.
	 We can not just fall through here since then we would be confused
	 by the ASM_INPUT rtx inside ASM_OPERANDS, which do not indicate
	 traditional asms unlike their normal usage.  */

      for (i = 0; i < FUNC1 (x); i++)
	FUNC26 (FUNC0 (x, i), res, in_dest,
			    MARK_SRC_DEST);
      return;

    default:
      break;
    }

  /* Process each sub-expression and flag what it needs.  */
  format_ptr = FUNC5 (code);
  for (i = 0; i < FUNC6 (code); i++)
    switch (*format_ptr++)
      {
      case 'e':
	FUNC26 (FUNC20 (x, i), res, in_dest, mark_type);
	break;

      case 'E':
	for (j = 0; j < FUNC22 (x, i); j++)
	  FUNC26 (FUNC21 (x, i, j), res, in_dest, mark_type);
	break;
      }
}