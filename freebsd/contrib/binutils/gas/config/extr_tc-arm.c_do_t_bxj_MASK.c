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
struct TYPE_3__ {int reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAD_BRANCH ; 
 int REG_PC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int current_it_mask ; 
 TYPE_2__ inst ; 

__attribute__((used)) static void
FUNC3 (void)
{
  FUNC2 (current_it_mask && current_it_mask != 0x10, BAD_BRANCH);
  if (inst.operands[0].reg == REG_PC)
    FUNC1 (FUNC0("use of r15 in bxj is not really useful"));

  inst.instruction |= inst.operands[0].reg << 16;
}