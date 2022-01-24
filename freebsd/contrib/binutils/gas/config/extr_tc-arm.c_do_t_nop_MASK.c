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
struct TYPE_4__ {int size_req; int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int imm; int /*<<< orphan*/  present; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ inst ; 
 scalar_t__ unified_syntax ; 

__attribute__((used)) static void
FUNC4 (void)
{
  if (unified_syntax)
    {
      if (inst.size_req == 4 || inst.operands[0].imm > 15)
	{
	  inst.instruction = FUNC1 (inst.instruction);
	  inst.instruction |= inst.operands[0].imm;
	}
      else
	{
	  inst.instruction = FUNC0 (inst.instruction);
	  inst.instruction |= inst.operands[0].imm << 4;
	}
    }
  else
    {
      FUNC3 (inst.operands[0].present,
		  FUNC2("Thumb does not support NOP with hints"));
      inst.instruction = 0x46c0;
    }
}