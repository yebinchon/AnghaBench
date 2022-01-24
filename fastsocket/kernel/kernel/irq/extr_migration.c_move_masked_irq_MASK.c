#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct irq_desc {int status; int /*<<< orphan*/  pending_mask; int /*<<< orphan*/  affinity; TYPE_1__* chip; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_affinity ) (int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int IRQ_MOVE_PENDING ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct irq_desc*) ; 
 struct irq_desc* FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

void FUNC12(int irq)
{
	struct irq_desc *desc = FUNC8(irq);

	if (FUNC9(!(desc->status & IRQ_MOVE_PENDING)))
		return;

	/*
	 * Paranoia: cpu-local interrupts shouldn't be calling in here anyway.
	 */
	if (FUNC0(desc->status)) {
		FUNC1(1);
		return;
	}

	desc->status &= ~IRQ_MOVE_PENDING;

	if (FUNC11(FUNC6(desc->pending_mask)))
		return;

	if (!desc->chip->set_affinity)
		return;

	FUNC2(&desc->lock);

	/*
	 * If there was a valid mask to work with, please
	 * do the disable, re-program, enable sequence.
	 * This is *not* particularly important for level triggered
	 * but in a edge trigger case, we might be setting rte
	 * when an active trigger is comming in. This could
	 * cause some ioapics to mal-function.
	 * Being paranoid i guess!
	 *
	 * For correct operation this depends on the caller
	 * masking the irqs.
	 */
	if (FUNC9(FUNC3(desc->pending_mask, cpu_online_mask)
		   < nr_cpu_ids))
		if (!desc->chip->set_affinity(irq, desc->pending_mask)) {
			FUNC5(desc->affinity, desc->pending_mask);
			FUNC7(desc);
		}

	FUNC4(desc->pending_mask);
}