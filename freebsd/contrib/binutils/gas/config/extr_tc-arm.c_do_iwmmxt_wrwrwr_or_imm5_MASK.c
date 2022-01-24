#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int imm; scalar_t__ isreg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  arm_cext_iwmmxt2 ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_variant ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__ inst ; 

__attribute__((used)) static void
FUNC5 (void)
{
  if (inst.operands[2].isreg)
    FUNC4 ();
  else {
    FUNC2 (!FUNC0 (cpu_variant, arm_cext_iwmmxt2),
		FUNC1("immediate operand requires iWMMXt2"));
    FUNC3 ();
    if (inst.operands[2].imm == 0)
      {
	switch ((inst.instruction >> 20) & 0xf)
	  {
	  case 4:
	  case 5:
	  case 6:
	  case 7: 
	    /* w...h wrd, wrn, #0 -> wrorh wrd, wrn, #16.  */
	    inst.operands[2].imm = 16;
	    inst.instruction = (inst.instruction & 0xff0fffff) | (0x7 << 20);
	    break;
	  case 8:
	  case 9:
	  case 10:
	  case 11:
	    /* w...w wrd, wrn, #0 -> wrorw wrd, wrn, #32.  */
	    inst.operands[2].imm = 32;
	    inst.instruction = (inst.instruction & 0xff0fffff) | (0xb << 20);
	    break;
	  case 12:
	  case 13:
	  case 14:
	  case 15:
	    {
	      /* w...d wrd, wrn, #0 -> wor wrd, wrn, wrn.  */
	      unsigned long wrn;
	      wrn = (inst.instruction >> 16) & 0xf;
	      inst.instruction &= 0xff0fff0f;
	      inst.instruction |= wrn;
	      /* Bail out here; the instruction is now assembled.  */
	      return;
	    }
	  }
      }
    /* Map 32 -> 0, etc.  */
    inst.operands[2].imm &= 0x1f;
    inst.instruction |= (0xf << 28) | ((inst.operands[2].imm & 0x10) << 4) | (inst.operands[2].imm & 0xf);
  }
}