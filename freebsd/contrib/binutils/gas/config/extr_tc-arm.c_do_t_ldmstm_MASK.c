#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_6__ {int instruction; int size_req; TYPE_2__* operands; TYPE_1__ reloc; } ;
struct TYPE_5__ {int writeback; int imm; int reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAD_HIREG ; 
 scalar_t__ BFD_RELOC_UNUSED ; 
 int /*<<< orphan*/  FALSE ; 
 int REG_SP ; 
 void* FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int T_MNEM_ldmia ; 
 int T_MNEM_pop ; 
 int T_MNEM_push ; 
 int T_MNEM_stmia ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 TYPE_3__ inst ; 
 scalar_t__ unified_syntax ; 

__attribute__((used)) static void
FUNC6 (void)
{
  /* This really doesn't seem worth it.  */
  FUNC4 (inst.reloc.type != BFD_RELOC_UNUSED,
	      FUNC2("expression too complex"));
  FUNC4 (inst.operands[1].writeback,
	      FUNC2("Thumb load/store multiple does not support {reglist}^"));

  if (unified_syntax)
    {
      bfd_boolean narrow;
      unsigned mask;

      narrow = FALSE;
      /* See if we can use a 16-bit instruction.  */
      if (inst.instruction < 0xffff /* not ldmdb/stmdb */
	  && inst.size_req != 4
	  && !(inst.operands[1].imm & ~0xff))
	{
	  mask = 1 << inst.operands[0].reg;

	  if (inst.operands[0].reg <= 7
	      && (inst.instruction == T_MNEM_stmia
		  ? inst.operands[0].writeback
		  : (inst.operands[0].writeback
		     == !(inst.operands[1].imm & mask))))
	    {
	      if (inst.instruction == T_MNEM_stmia
		  && (inst.operands[1].imm & mask)
		  && (inst.operands[1].imm & (mask - 1)))
		FUNC3 (FUNC2("value stored for r%d is UNPREDICTABLE"),
			 inst.operands[0].reg);

	      inst.instruction = FUNC0 (inst.instruction);
	      inst.instruction |= inst.operands[0].reg << 8;
	      inst.instruction |= inst.operands[1].imm;
	      narrow = TRUE;
	    }
	  else if (inst.operands[0] .reg == REG_SP
		   && inst.operands[0].writeback)
	    {
	      inst.instruction = FUNC0 (inst.instruction == T_MNEM_stmia
					     ? T_MNEM_push : T_MNEM_pop);
	      inst.instruction |= inst.operands[1].imm;
	      narrow = TRUE;
	    }
	}

      if (!narrow)
	{
	  if (inst.instruction < 0xffff)
	    inst.instruction = FUNC1 (inst.instruction);

	  FUNC5(inst.operands[0].reg, inst.operands[1].imm,
			       inst.operands[0].writeback);
	}
    }
  else
    {
      FUNC4 (inst.operands[0].reg > 7
		  || (inst.operands[1].imm & ~0xff), BAD_HIREG);
      FUNC4 (inst.instruction != T_MNEM_ldmia
		  && inst.instruction != T_MNEM_stmia,
		  FUNC2("Thumb-2 instruction only valid in unified syntax"));
      if (inst.instruction == T_MNEM_stmia)
	{
	  if (!inst.operands[0].writeback)
	    FUNC3 (FUNC2("this instruction will write back the base register"));
	  if ((inst.operands[1].imm & (1 << inst.operands[0].reg))
	      && (inst.operands[1].imm & ((1 << inst.operands[0].reg) - 1)))
	    FUNC3 (FUNC2("value stored for r%d is UNPREDICTABLE"),
		     inst.operands[0].reg);
	}
      else
	{
	  if (!inst.operands[0].writeback
	      && !(inst.operands[1].imm & (1 << inst.operands[0].reg)))
	    FUNC3 (FUNC2("this instruction will write back the base register"));
	  else if (inst.operands[0].writeback
		   && (inst.operands[1].imm & (1 << inst.operands[0].reg)))
	    FUNC3 (FUNC2("this instruction will not write back the base register"));
	}

      inst.instruction = FUNC0 (inst.instruction);
      inst.instruction |= inst.operands[0].reg << 8;
      inst.instruction |= inst.operands[1].imm;
    }
}