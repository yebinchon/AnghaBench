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
struct TYPE_3__ {int imm; int reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  VFP_REG_Sm ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__ inst ; 

__attribute__((used)) static void
FUNC3 (void)
{
  FUNC1 (inst.operands[2].imm != 2,
	      FUNC0("only two consecutive VFP SP registers allowed here"));
  inst.instruction |= inst.operands[0].reg << 12;
  inst.instruction |= inst.operands[1].reg << 16;
  FUNC2 (inst.operands[2].reg, VFP_REG_Sm);
}