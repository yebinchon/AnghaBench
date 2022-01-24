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
struct TYPE_3__ {int reg; int /*<<< orphan*/  present; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAD_HIREG ; 
 int /*<<< orphan*/  BAD_THUMB32 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int T_MNEM_mul ; 
 int T_MNEM_muls ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__ inst ; 
 scalar_t__ unified_syntax ; 

__attribute__((used)) static void
FUNC4 (void)
{
  if (!inst.operands[2].present)
    inst.operands[2].reg = inst.operands[0].reg;

  /* There is no 32-bit MULS and no 16-bit MUL. */
  if (unified_syntax && inst.instruction == T_MNEM_mul)
    {
      inst.instruction = FUNC1 (inst.instruction);
      inst.instruction |= inst.operands[0].reg << 8;
      inst.instruction |= inst.operands[1].reg << 16;
      inst.instruction |= inst.operands[2].reg << 0;
    }
  else
    {
      FUNC3 (!unified_syntax
		  && inst.instruction == T_MNEM_muls, BAD_THUMB32);
      FUNC3 (inst.operands[0].reg > 7 || inst.operands[1].reg > 7,
		  BAD_HIREG);

      inst.instruction = FUNC0 (inst.instruction);
      inst.instruction |= inst.operands[0].reg;

      if (inst.operands[0].reg == inst.operands[1].reg)
	inst.instruction |= inst.operands[2].reg << 3;
      else if (inst.operands[0].reg == inst.operands[2].reg)
	inst.instruction |= inst.operands[1].reg << 3;
      else
	FUNC3 (1, FUNC2("dest must overlap one source register"));
    }
}