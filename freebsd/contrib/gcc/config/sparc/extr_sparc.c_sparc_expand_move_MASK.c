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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ CONST ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int DFmode ; 
#define  DImode 131 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ HIGH ; 
#define  HImode 130 
 scalar_t__ LABEL_REF ; 
 scalar_t__ MEM ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ PLUS ; 
#define  QImode 129 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 
 int SFmode ; 
#define  SImode 128 
 scalar_t__ SPARC_FIRST_FP_REG ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  TARGET_ARCH64 ; 
 scalar_t__ TARGET_HAVE_TLS ; 
 scalar_t__ TARGET_VIS ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (scalar_t__,int) ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ FUNC10 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ flag_pic ; 
 scalar_t__ FUNC12 (int,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC19 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__,int) ; 
 scalar_t__ FUNC21 (scalar_t__,int,scalar_t__) ; 
 scalar_t__ FUNC22 (scalar_t__) ; 
 scalar_t__ FUNC23 (scalar_t__) ; 
 scalar_t__ FUNC24 (scalar_t__,int) ; 
 scalar_t__ reload_completed ; 
 scalar_t__ reload_in_progress ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC27 (scalar_t__) ; 
 scalar_t__ FUNC28 (scalar_t__,int) ; 
 scalar_t__ FUNC29 (scalar_t__) ; 

bool
FUNC30 (enum machine_mode mode, rtx *operands)
{
  /* Handle sets of MEM first.  */
  if (FUNC2 (operands[0]) == MEM)
    {
      /* 0 is a register (or a pair of registers) on SPARC.  */
      if (FUNC24 (operands[1], mode))
	return false;

      if (!reload_in_progress)
	{
	  operands[0] = FUNC29 (operands[0]);
	  operands[1] = FUNC14 (mode, operands[1]);
	}
    }

  /* Fixup TLS cases.  */
  if (TARGET_HAVE_TLS
      && FUNC1 (operands[1])
      && FUNC2 (operands[1]) != HIGH
      && FUNC27 (operands [1]))
    {
      rtx sym = operands[1];
      rtx addend = NULL;

      if (FUNC2 (sym) == CONST && FUNC2 (FUNC9 (sym, 0)) == PLUS)
	{
	  addend = FUNC9 (FUNC9 (sym, 0), 1);
	  sym = FUNC9 (FUNC9 (sym, 0), 0);
	}

      FUNC15 (FUNC7 (sym));

      sym = FUNC22 (sym);
      if (addend)
	{
	  sym = FUNC19 (mode, sym, addend);
	  sym = FUNC13 (sym, operands[0]);
	}
      operands[1] = sym;
    }
 
  /* Fixup PIC cases.  */
  if (flag_pic && FUNC1 (operands[1]))
    {
      if (FUNC23 (operands[1]))
	operands[1] = FUNC21 (operands[1], mode, 0);

      if (FUNC2 (operands[1]) == LABEL_REF && mode == SImode)
	{
	  FUNC11 (FUNC18 (operands[0], operands[1]));
	  return true;
	}

      if (FUNC2 (operands[1]) == LABEL_REF && mode == DImode)
	{
	  FUNC15 (TARGET_ARCH64);
	  FUNC11 (FUNC17 (operands[0], operands[1]));
	  return true;
	}

      if (FUNC28 (operands[1], mode))
	{
	  operands[1] = FUNC21 (operands[1],
						mode,
						(reload_in_progress ?
						 operands[0] :
						 NULL_RTX));
	  return false;
	}
    }

  /* If we are trying to toss an integer constant into FP registers,
     or loading a FP or vector constant, force it into memory.  */
  if (FUNC1 (operands[1])
      && FUNC4 (operands[0])
      && (FUNC6 (FUNC3 (operands[0]))
	  || FUNC5 (mode)
	  || FUNC8 (mode)))
    {
      /* emit_group_store will send such bogosity to us when it is
         not storing directly into memory.  So fix this up to avoid
         crashes in output_constant_pool.  */
      if (operands [1] == const0_rtx)
	operands[1] = FUNC0 (mode);

      /* We can clear FP registers if TARGET_VIS, and always other regs.  */
      if ((TARGET_VIS || FUNC3 (operands[0]) < SPARC_FIRST_FP_REG)
	  && FUNC10 (operands[1], mode))
	return false;

      if (FUNC3 (operands[0]) < SPARC_FIRST_FP_REG
	  /* We are able to build any SF constant in integer registers
	     with at most 2 instructions.  */
	  && (mode == SFmode
	      /* And any DF constant in integer registers.  */
	      || (mode == DFmode
		  && (reload_completed || reload_in_progress))))
	return false;

      operands[1] = FUNC12 (mode, operands[1]);
      if (!reload_in_progress)
	operands[1] = FUNC29 (operands[1]);
      return false;
    }

  /* Accept non-constants and valid constants unmodified.  */
  if (!FUNC1 (operands[1])
      || FUNC2 (operands[1]) == HIGH
      || FUNC20 (operands[1], mode))
    return false;

  switch (mode)
    {
    case QImode:
      /* All QImode constants require only one insn, so proceed.  */
      break;

    case HImode:
    case SImode:
      FUNC25 (operands[0], operands[1]);
      return true;

    case DImode:
      /* input_operand should have filtered out 32-bit mode.  */
      FUNC26 (operands[0], operands[1]);
      return true;
    
    default:
      FUNC16 ();
    }

  return false;
}