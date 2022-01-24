#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int bfd_boolean ;
struct TYPE_5__ {scalar_t__ X_op; int X_add_number; } ;
struct TYPE_7__ {void* type; TYPE_1__ exp; } ;
struct TYPE_8__ {int instruction; int /*<<< orphan*/  error; TYPE_3__ reloc; TYPE_2__* operands; } ;
struct TYPE_6__ {int reg; int negative; int postind; int writeback; scalar_t__ shift_kind; int imm; scalar_t__ preind; scalar_t__ shifted; scalar_t__ immisreg; int /*<<< orphan*/  isreg; } ;

/* Variables and functions */
 void* BFD_RELOC_ARM_T32_OFFSET_IMM ; 
 void* BFD_RELOC_UNUSED ; 
 scalar_t__ O_constant ; 
 int REG_PC ; 
 scalar_t__ SHIFT_LSL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 TYPE_4__ inst ; 

__attribute__((used)) static void
FUNC3 (int i, bfd_boolean is_t, bfd_boolean is_d)
{
  bfd_boolean is_pc = (inst.operands[i].reg == REG_PC);

  FUNC2 (!inst.operands[i].isreg,
	      FUNC0("Instruction does not support =N addresses"));

  inst.instruction |= inst.operands[i].reg << 16;
  if (inst.operands[i].immisreg)
    {
      FUNC2 (is_pc, FUNC0("cannot use register index with PC-relative addressing"));
      FUNC2 (is_t || is_d, FUNC0("cannot use register index with this instruction"));
      FUNC2 (inst.operands[i].negative,
		  FUNC0("Thumb does not support negative register indexing"));
      FUNC2 (inst.operands[i].postind,
		  FUNC0("Thumb does not support register post-indexing"));
      FUNC2 (inst.operands[i].writeback,
		  FUNC0("Thumb does not support register indexing with writeback"));
      FUNC2 (inst.operands[i].shifted && inst.operands[i].shift_kind != SHIFT_LSL,
		  FUNC0("Thumb supports only LSL in shifted register indexing"));

      inst.instruction |= inst.operands[i].imm;
      if (inst.operands[i].shifted)
	{
	  FUNC2 (inst.reloc.exp.X_op != O_constant,
		      FUNC0("expression too complex"));
	  FUNC2 (inst.reloc.exp.X_add_number < 0
		      || inst.reloc.exp.X_add_number > 3,
		      FUNC0("shift out of range"));
	  inst.instruction |= inst.reloc.exp.X_add_number << 4;
	}
      inst.reloc.type = BFD_RELOC_UNUSED;
    }
  else if (inst.operands[i].preind)
    {
      FUNC2 (is_pc && inst.operands[i].writeback,
		  FUNC0("cannot use writeback with PC-relative addressing"));
      FUNC2 (is_t && inst.operands[i].writeback,
		  FUNC0("cannot use writeback with this instruction"));

      if (is_d)
	{
	  inst.instruction |= 0x01000000;
	  if (inst.operands[i].writeback)
	    inst.instruction |= 0x00200000;
	}
      else
	{
	  inst.instruction |= 0x00000c00;
	  if (inst.operands[i].writeback)
	    inst.instruction |= 0x00000100;
	}
      inst.reloc.type = BFD_RELOC_ARM_T32_OFFSET_IMM;
    }
  else if (inst.operands[i].postind)
    {
      FUNC1 (inst.operands[i].writeback);
      FUNC2 (is_pc, FUNC0("cannot use post-indexing with PC-relative addressing"));
      FUNC2 (is_t, FUNC0("cannot use post-indexing with this instruction"));

      if (is_d)
	inst.instruction |= 0x00200000;
      else
	inst.instruction |= 0x00000900;
      inst.reloc.type = BFD_RELOC_ARM_T32_OFFSET_IMM;
    }
  else /* unindexed - only for coprocessor */
    inst.error = FUNC0("instruction does not accept unindexed addressing");
}