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
struct TYPE_3__ {int /*<<< orphan*/  resetAckIrq; } ;
struct TYPE_4__ {scalar_t__ vfebase; int /*<<< orphan*/  vfeImaskPacked; TYPE_1__ vfeImaskLocal; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VFE_CLEAR_ALL_IRQS ; 
 int /*<<< orphan*/  VFE_DISABLE_ALL_IRQS ; 
 scalar_t__ VFE_GLOBAL_RESET_CMD ; 
 scalar_t__ VFE_IRQ_CLEAR ; 
 scalar_t__ VFE_IRQ_COMPOSITE_MASK ; 
 scalar_t__ VFE_IRQ_MASK ; 
 int /*<<< orphan*/  VFE_RESET_UPON_RESET_CMD ; 
 TYPE_2__* ctrl ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC3(void)
{
	FUNC1();

	ctrl->vfeImaskLocal.resetAckIrq = TRUE;
	ctrl->vfeImaskPacked = FUNC0(ctrl->vfeImaskLocal);

	/* disable all interrupts. */
	FUNC2(VFE_DISABLE_ALL_IRQS,
		ctrl->vfebase + VFE_IRQ_COMPOSITE_MASK);

	/* clear all pending interrupts*/
	FUNC2(VFE_CLEAR_ALL_IRQS,
		ctrl->vfebase + VFE_IRQ_CLEAR);

	/* enable reset_ack interrupt.  */
	FUNC2(ctrl->vfeImaskPacked,
		ctrl->vfebase + VFE_IRQ_MASK);

	FUNC2(VFE_RESET_UPON_RESET_CMD,
		ctrl->vfebase + VFE_GLOBAL_RESET_CMD);
}