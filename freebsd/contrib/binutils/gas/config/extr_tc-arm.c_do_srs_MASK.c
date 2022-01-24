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
struct TYPE_3__ {int reg; int imm; scalar_t__ writeback; scalar_t__ present; } ;

/* Variables and functions */
 int WRITE_BACK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__ inst ; 

__attribute__((used)) static void
FUNC2 (void)
{
  int reg;

  if (inst.operands[0].present)
    {
      reg = inst.operands[0].reg;
      FUNC1 (reg != 13, FUNC0("SRS base register must be r13"));
    }
  else
    reg = 13;

  inst.instruction |= reg << 16;
  inst.instruction |= inst.operands[1].imm;
  if (inst.operands[0].writeback || inst.operands[1].writeback)
    inst.instruction |= WRITE_BACK;
}