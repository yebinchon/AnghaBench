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
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_6__ {unsigned int instruction; int /*<<< orphan*/  error; TYPE_2__* operands; TYPE_1__ reloc; } ;
struct TYPE_5__ {int writeback; unsigned int imm; } ;

/* Variables and functions */
 scalar_t__ BFD_RELOC_UNUSED ; 
 int REG_LR ; 
 int REG_PC ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int THUMB_PP_PC_LR ; 
 int /*<<< orphan*/  TRUE ; 
 unsigned int T_MNEM_pop ; 
 unsigned int T_MNEM_push ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_3__ inst ; 
 scalar_t__ unified_syntax ; 

__attribute__((used)) static void
FUNC5 (void)
{
  unsigned mask;
  
  FUNC3 (inst.operands[0].writeback,
	      FUNC2("push/pop do not support {reglist}^"));
  FUNC3 (inst.reloc.type != BFD_RELOC_UNUSED,
	      FUNC2("expression too complex"));

  mask = inst.operands[0].imm;
  if ((mask & ~0xff) == 0)
    inst.instruction = FUNC0 (inst.instruction) | mask;
  else if ((inst.instruction == T_MNEM_push
	    && (mask & ~0xff) == 1 << REG_LR)
	   || (inst.instruction == T_MNEM_pop
	       && (mask & ~0xff) == 1 << REG_PC))
    {
      inst.instruction = FUNC0 (inst.instruction);
      inst.instruction |= THUMB_PP_PC_LR;
      inst.instruction |= mask & 0xff;
    }
  else if (unified_syntax)
    {
      inst.instruction = FUNC1 (inst.instruction);
      FUNC4(13, mask, TRUE);
    }
  else
    {
      inst.error = FUNC2("invalid register list to push/pop instruction");
      return;
    }
}