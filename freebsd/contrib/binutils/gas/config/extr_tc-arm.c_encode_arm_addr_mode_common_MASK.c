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
typedef  scalar_t__ bfd_boolean ;
struct TYPE_4__ {int instruction; void* error; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; scalar_t__ writeback; scalar_t__ postind; scalar_t__ preind; scalar_t__ isreg; } ;

/* Variables and functions */
 int LOAD_BIT ; 
 int PRE_INDEX ; 
 int WRITE_BACK ; 
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_2__ inst ; 

__attribute__((used)) static void
FUNC3 (int i, bfd_boolean is_t)
{
  FUNC2 (inst.operands[i].isreg);
  inst.instruction |= inst.operands[i].reg << 16;

  if (inst.operands[i].preind)
    {
      if (is_t)
	{
	  inst.error = FUNC0("instruction does not accept preindexed addressing");
	  return;
	}
      inst.instruction |= PRE_INDEX;
      if (inst.operands[i].writeback)
	inst.instruction |= WRITE_BACK;

    }
  else if (inst.operands[i].postind)
    {
      FUNC2 (inst.operands[i].writeback);
      if (is_t)
	inst.instruction |= WRITE_BACK;
    }
  else /* unindexed - only for coprocessor */
    {
      inst.error = FUNC0("instruction does not accept unindexed addressing");
      return;
    }

  if (((inst.instruction & WRITE_BACK) || !(inst.instruction & PRE_INDEX))
      && (((inst.instruction & 0x000f0000) >> 16)
	  == ((inst.instruction & 0x0000f000) >> 12)))
    FUNC1 ((inst.instruction & LOAD_BIT)
	     ? FUNC0("destination register same as write-back base")
	     : FUNC0("source register same as write-back base"));
}