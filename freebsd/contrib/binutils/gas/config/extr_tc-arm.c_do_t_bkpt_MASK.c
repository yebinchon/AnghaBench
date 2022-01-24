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
struct TYPE_4__ {scalar_t__ cond; int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int imm; scalar_t__ present; } ;

/* Variables and functions */
 scalar_t__ COND_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__ inst ; 

__attribute__((used)) static void
FUNC2 (void)
{
  FUNC1 (inst.cond != COND_ALWAYS,
	      FUNC0("instruction is always unconditional"));
  if (inst.operands[0].present)
    {
      FUNC1 (inst.operands[0].imm > 255,
		  FUNC0("immediate value out of range"));
      inst.instruction |= inst.operands[0].imm;
    }
}