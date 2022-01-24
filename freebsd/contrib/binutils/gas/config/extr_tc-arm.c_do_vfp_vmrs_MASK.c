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
struct TYPE_4__ {int instruction; TYPE_1__* operands; int /*<<< orphan*/  error; } ;
struct TYPE_3__ {int reg; scalar_t__ isvec; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAD_PC ; 
 int /*<<< orphan*/  BAD_SP ; 
 int /*<<< orphan*/  BAD_VMRS ; 
 int REG_SP ; 
 TYPE_2__ inst ; 
 scalar_t__ thumb_mode ; 

__attribute__((used)) static void
FUNC0 (void)
{
  int rt;

  /* The destination register can be r0-r14 or APSR_nzcv */
  if (inst.operands[0].reg > 14)
    {
      inst.error = BAD_PC;
      return;
    }

  /* If the destination is r13 and not in ARM mode then unprefictable */
  if (thumb_mode && inst.operands[0].reg == REG_SP)
    {
      inst.error = BAD_SP;
      return;
    }

  /* If the destination is APSR_nzcv */
  if (inst.operands[0].isvec && inst.operands[1].reg != 1)
    {
      inst.error = BAD_VMRS;
      return;
    }

  if (inst.operands[0].isvec)
    rt = 15;
  else
    rt = inst.operands[0].reg;

  /* Or in the registers to use */
  inst.instruction |= rt << 12;
  inst.instruction |= inst.operands[1].reg << 16;
}