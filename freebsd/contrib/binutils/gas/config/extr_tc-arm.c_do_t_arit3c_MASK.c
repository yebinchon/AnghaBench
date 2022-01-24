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
typedef  int bfd_boolean ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct TYPE_6__ {int instruction; int size_req; TYPE_2__* operands; TYPE_1__ reloc; } ;
struct TYPE_5__ {int reg; scalar_t__ shifted; int /*<<< orphan*/  isreg; scalar_t__ immisreg; scalar_t__ present; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAD_HIREG ; 
 int /*<<< orphan*/  BAD_THUMB32 ; 
 int /*<<< orphan*/  BFD_RELOC_ARM_T32_IMMEDIATE ; 
 int FALSE ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ current_it_mask ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_3__ inst ; 
 scalar_t__ unified_syntax ; 

__attribute__((used)) static void
FUNC6 (void)
{
  int Rd, Rs, Rn;

  Rd = inst.operands[0].reg;
  Rs = (inst.operands[1].present
	? inst.operands[1].reg    /* Rd, Rs, foo */
	: inst.operands[0].reg);  /* Rd, foo -> Rd, Rd, foo */
  Rn = inst.operands[2].reg;

  if (unified_syntax)
    {
      if (!inst.operands[2].isreg)
	{
	  /* For an immediate, we always generate a 32-bit opcode;
	     section relaxation will shrink it later if possible.  */
	  inst.instruction = FUNC1 (inst.instruction);
	  inst.instruction = (inst.instruction & 0xe1ffffff) | 0x10000000;
	  inst.instruction |= Rd << 8;
	  inst.instruction |= Rs << 16;
	  inst.reloc.type = BFD_RELOC_ARM_T32_IMMEDIATE;
	}
      else
	{
	  bfd_boolean narrow;

	  /* See if we can do this with a 16-bit instruction.  */
	  if (FUNC2 (inst.instruction))
	    narrow = current_it_mask == 0;
	  else
	    narrow = current_it_mask != 0;

	  if (Rd > 7 || Rn > 7 || Rs > 7)
	    narrow = FALSE;
	  if (inst.operands[2].shifted)
	    narrow = FALSE;
	  if (inst.size_req == 4)
	    narrow = FALSE;

	  if (narrow)
	    {
	      if (Rd == Rs)
		{
		  inst.instruction = FUNC0 (inst.instruction);
		  inst.instruction |= Rd;
		  inst.instruction |= Rn << 3;
		  return;
		}
	      if (Rd == Rn)
		{
		  inst.instruction = FUNC0 (inst.instruction);
		  inst.instruction |= Rd;
		  inst.instruction |= Rs << 3;
		  return;
		}
	    }

	  /* If we get here, it can't be done in 16 bits.  */
	  FUNC4 (inst.operands[2].shifted
		      && inst.operands[2].immisreg,
		      FUNC3("shift must be constant"));
	  inst.instruction = FUNC1 (inst.instruction);
	  inst.instruction |= Rd << 8;
	  inst.instruction |= Rs << 16;
	  FUNC5 (2);
	}
    }
  else
    {
      /* On its face this is a lie - the instruction does set the
	 flags.  However, the only supported mnemonic in this mode
	 says it doesn't.  */
      FUNC4 (FUNC2 (inst.instruction), BAD_THUMB32);

      FUNC4 (!inst.operands[2].isreg || inst.operands[2].shifted,
		  FUNC3("unshifted register required"));
      FUNC4 (Rd > 7 || Rs > 7 || Rn > 7, BAD_HIREG);

      inst.instruction = FUNC0 (inst.instruction);
      inst.instruction |= Rd;

      if (Rd == Rs)
	inst.instruction |= Rn << 3;
      else if (Rd == Rn)
	inst.instruction |= Rs << 3;
      else
	FUNC4 (1, FUNC3("dest must overlap one source register"));
    }
}