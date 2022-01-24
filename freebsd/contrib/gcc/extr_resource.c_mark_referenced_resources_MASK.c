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
struct resources {int unch_memory; int memory; int volatil; int cc; int /*<<< orphan*/  regs; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
#define  ASM_INPUT 148 
#define  ASM_OPERANDS 147 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  CALL 146 
#define  CALL_INSN 145 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  CC0 144 
#define  CLOBBER 143 
#define  CONST 142 
#define  CONST_DOUBLE 141 
#define  CONST_INT 140 
#define  CONST_VECTOR 139 
 unsigned int FIRST_PSEUDO_REGISTER ; 
 int FRAME_POINTER_REGNUM ; 
 int const FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int HARD_FRAME_POINTER_REGNUM ; 
#define  INSN 138 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
#define  JUMP_INSN 137 
#define  LABEL_REF 136 
#define  MEM 135 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
#define  PC 134 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
#define  REG 133 
 unsigned int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_SETJMP ; 
 int const SEQUENCE ; 
#define  SET 132 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int STACK_POINTER_REGNUM ; 
 int const STRICT_LOW_PART ; 
#define  SUBREG 131 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
#define  SYMBOL_REF 130 
#define  TRAP_IF 129 
#define  UNSPEC_VOLATILE 128 
 int const USE ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC23 (int /*<<< orphan*/ ,int) ; 
 int const ZERO_EXTRACT ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  frame_pointer_needed ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 int /*<<< orphan*/ * global_regs ; 
 int /*<<< orphan*/ ** hard_regno_nregs ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC27 (int /*<<< orphan*/ ) ; 

void
FUNC28 (rtx x, struct resources *res,
			   int include_delayed_effects)
{
  enum rtx_code code = FUNC3 (x);
  int i, j;
  unsigned int r;
  const char *format_ptr;

  /* Handle leaf items for which we set resource flags.  Also, special-case
     CALL, SET and CLOBBER operators.  */
  switch (code)
    {
    case CONST:
    case CONST_INT:
    case CONST_DOUBLE:
    case CONST_VECTOR:
    case PC:
    case SYMBOL_REF:
    case LABEL_REF:
      return;

    case SUBREG:
      if (!FUNC15 (FUNC20 (x)))
	FUNC28 (FUNC20 (x), res, 0);
      else
	{
	  unsigned int regno = FUNC27 (x);
	  unsigned int last_regno
	    = regno + hard_regno_nregs[regno][FUNC4 (x)];

	  FUNC25 (last_regno <= FIRST_PSEUDO_REGISTER);
	  for (r = regno; r < last_regno; r++)
	    FUNC17 (res->regs, r);
	}
      return;

    case REG:
	{
	  unsigned int regno = FUNC14 (x);
	  unsigned int last_regno
	    = regno + hard_regno_nregs[regno][FUNC4 (x)];

	  FUNC25 (last_regno <= FIRST_PSEUDO_REGISTER);
	  for (r = regno; r < last_regno; r++)
	    FUNC17 (res->regs, r);
	}
      return;

    case MEM:
      /* If this memory shouldn't change, it really isn't referencing
	 memory.  */
      if (FUNC9 (x))
	res->unch_memory = 1;
      else
	res->memory = 1;
      res->volatil |= FUNC10 (x);

      /* Mark registers used to access memory.  */
      FUNC28 (FUNC21 (x, 0), res, 0);
      return;

    case CC0:
      res->cc = 1;
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
      res->volatil |= FUNC10 (x);

      /* For all ASM_OPERANDS, we must traverse the vector of input operands.
	 We can not just fall through here since then we would be confused
	 by the ASM_INPUT rtx inside ASM_OPERANDS, which do not indicate
	 traditional asms unlike their normal usage.  */

      for (i = 0; i < FUNC1 (x); i++)
	FUNC28 (FUNC0 (x, i), res, 0);
      return;

    case CALL:
      /* The first operand will be a (MEM (xxx)) but doesn't really reference
	 memory.  The second operand may be referenced, though.  */
      FUNC28 (FUNC21 (FUNC21 (x, 0), 0), res, 0);
      FUNC28 (FUNC21 (x, 1), res, 0);
      return;

    case SET:
      /* Usually, the first operand of SET is set, not referenced.  But
	 registers used to access memory are referenced.  SET_DEST is
	 also referenced if it is a ZERO_EXTRACT.  */

      FUNC28 (FUNC19 (x), res, 0);

      x = FUNC16 (x);
      if (FUNC3 (x) == ZERO_EXTRACT
	  || FUNC3 (x) == STRICT_LOW_PART)
	FUNC28 (x, res, 0);
      else if (FUNC3 (x) == SUBREG)
	x = FUNC20 (x);
      if (FUNC8 (x))
	FUNC28 (FUNC21 (x, 0), res, 0);
      return;

    case CLOBBER:
      return;

    case CALL_INSN:
      if (include_delayed_effects)
	{
	  /* A CALL references memory, the frame pointer if it exists, the
	     stack pointer, any global registers and any registers given in
	     USE insns immediately in front of the CALL.

	     However, we may have moved some of the parameter loading insns
	     into the delay slot of this CALL.  If so, the USE's for them
	     don't count and should be skipped.  */
	  rtx insn = FUNC13 (x);
	  rtx sequence = 0;
	  int seq_size = 0;
	  int i;

	  /* If we are part of a delay slot sequence, point at the SEQUENCE.  */
	  if (FUNC11 (insn) != x)
	    {
	      sequence = FUNC12 (FUNC11 (insn));
	      seq_size = FUNC23 (sequence, 0);
	      FUNC25 (FUNC3 (sequence) == SEQUENCE);
	    }

	  res->memory = 1;
	  FUNC17 (res->regs, STACK_POINTER_REGNUM);
	  if (frame_pointer_needed)
	    {
	      FUNC17 (res->regs, FRAME_POINTER_REGNUM);
#if FRAME_POINTER_REGNUM != HARD_FRAME_POINTER_REGNUM
	      SET_HARD_REG_BIT (res->regs, HARD_FRAME_POINTER_REGNUM);
#endif
	    }

	  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
	    if (global_regs[i])
	      FUNC17 (res->regs, i);

	  /* Check for a REG_SETJMP.  If it exists, then we must
	     assume that this call can need any register.

	     This is done to be more conservative about how we handle setjmp.
	     We assume that they both use and set all registers.  Using all
	     registers ensures that a register will not be considered dead
	     just because it crosses a setjmp call.  A register should be
	     considered dead only if the setjmp call returns nonzero.  */
	  if (FUNC24 (x, REG_SETJMP, NULL))
	    FUNC18 (res->regs);

	  {
	    rtx link;

	    for (link = FUNC2 (x);
		 link;
		 link = FUNC21 (link, 1))
	      if (FUNC3 (FUNC21 (link, 0)) == USE)
		{
		  for (i = 1; i < seq_size; i++)
		    {
		      rtx slot_pat = FUNC12 (FUNC22 (sequence, 0, i));
		      if (FUNC3 (slot_pat) == SET
			  && FUNC26 (FUNC16 (slot_pat),
					  FUNC21 (FUNC21 (link, 0), 0)))
			break;
		    }
		  if (i >= seq_size)
		    FUNC28 (FUNC21 (FUNC21 (link, 0), 0),
					       res, 0);
		}
	  }
	}

      /* ... fall through to other INSN processing ...  */

    case INSN:
    case JUMP_INSN:

#ifdef INSN_REFERENCES_ARE_DELAYED
      if (! include_delayed_effects
	  && INSN_REFERENCES_ARE_DELAYED (x))
	return;
#endif

      /* No special processing, just speed up.  */
      FUNC28 (FUNC12 (x), res, include_delayed_effects);
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
	FUNC28 (FUNC21 (x, i), res, include_delayed_effects);
	break;

      case 'E':
	for (j = 0; j < FUNC23 (x, i); j++)
	  FUNC28 (FUNC22 (x, i, j), res,
				     include_delayed_effects);
	break;
      }
}