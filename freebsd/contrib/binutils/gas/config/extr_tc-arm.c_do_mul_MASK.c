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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  arm_ext_v6 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__ inst ; 
 int /*<<< orphan*/  selected_cpu ; 

__attribute__((used)) static void
FUNC3 (void)
{
  if (!inst.operands[2].present)
    inst.operands[2].reg = inst.operands[0].reg;
  inst.instruction |= inst.operands[0].reg << 16;
  inst.instruction |= inst.operands[1].reg;
  inst.instruction |= inst.operands[2].reg << 8;

  if (inst.operands[0].reg == inst.operands[1].reg
      && !FUNC0 (selected_cpu, arm_ext_v6))
    FUNC2 (FUNC1("Rd and Rm should be different in mul"));
}