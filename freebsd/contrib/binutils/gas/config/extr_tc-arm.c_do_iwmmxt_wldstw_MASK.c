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
struct TYPE_3__ {int reg; int /*<<< orphan*/  isreg; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAD_COND ; 
 scalar_t__ COND_ALWAYS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ inst ; 

__attribute__((used)) static void
FUNC2 (void)
{
  /* RIWR_RIWC clears .isreg for a control register.  */
  if (!inst.operands[0].isreg)
    {
      FUNC0 (inst.cond != COND_ALWAYS, BAD_COND);
      inst.instruction |= 0xf0000000;
    }

  inst.instruction |= inst.operands[0].reg << 12;
  FUNC1 (1, TRUE, TRUE, 0);
}