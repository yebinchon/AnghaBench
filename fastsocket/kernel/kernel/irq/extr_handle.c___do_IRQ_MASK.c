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
struct irqaction {int dummy; } ;
struct irq_desc {unsigned int status; int /*<<< orphan*/  lock; TYPE_1__* chip; struct irqaction* action; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* end ) (unsigned int) ;int /*<<< orphan*/  (* ack ) (unsigned int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 unsigned int IRQ_DISABLED ; 
 unsigned int IRQ_INPROGRESS ; 
 unsigned int IRQ_PENDING ; 
 unsigned int IRQ_REPLAY ; 
 unsigned int IRQ_WAITING ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct irqaction*) ; 
 struct irq_desc* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,struct irq_desc*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  noirqdebug ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,struct irq_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 
 scalar_t__ FUNC12 (int) ; 

unsigned int FUNC13(unsigned int irq)
{
	struct irq_desc *desc = FUNC2(irq);
	struct irqaction *action;
	unsigned int status;

	FUNC3(irq, desc);

	if (FUNC0(desc->status)) {
		irqreturn_t action_ret;

		/*
		 * No locking required for CPU-local interrupts:
		 */
		if (desc->chip->ack)
			desc->chip->ack(irq);
		if (FUNC4(!(desc->status & IRQ_DISABLED))) {
			action_ret = FUNC1(irq, desc->action);
			if (!noirqdebug)
				FUNC5(irq, desc, action_ret);
		}
		desc->chip->end(irq);
		return 1;
	}

	FUNC6(&desc->lock);
	if (desc->chip->ack)
		desc->chip->ack(irq);
	/*
	 * REPLAY is when Linux resends an IRQ that was dropped earlier
	 * WAITING is used by probe to mark irqs that are being tested
	 */
	status = desc->status & ~(IRQ_REPLAY | IRQ_WAITING);
	status |= IRQ_PENDING; /* we _want_ to handle it */

	/*
	 * If the IRQ is disabled for whatever reason, we cannot
	 * use the action we have.
	 */
	action = NULL;
	if (FUNC4(!(status & (IRQ_DISABLED | IRQ_INPROGRESS)))) {
		action = desc->action;
		status &= ~IRQ_PENDING; /* we commit to handling */
		status |= IRQ_INPROGRESS; /* we are handling it */
	}
	desc->status = status;

	/*
	 * If there is no IRQ handler or it was disabled, exit early.
	 * Since we set PENDING, if another processor is handling
	 * a different instance of this same irq, the other processor
	 * will take care of it.
	 */
	if (FUNC12(!action))
		goto out;

	/*
	 * Edge triggered interrupts need to remember
	 * pending events.
	 * This applies to any hw interrupts that allow a second
	 * instance of the same irq to arrive while we are in do_IRQ
	 * or in the handler. But the code here only handles the _second_
	 * instance of the irq, not the third or fourth. So it is mostly
	 * useful for irq hardware that does not mask cleanly in an
	 * SMP environment.
	 */
	for (;;) {
		irqreturn_t action_ret;

		FUNC7(&desc->lock);

		action_ret = FUNC1(irq, action);
		if (!noirqdebug)
			FUNC5(irq, desc, action_ret);

		FUNC6(&desc->lock);
		if (FUNC4(!(desc->status & IRQ_PENDING)))
			break;
		desc->status &= ~IRQ_PENDING;
	}
	desc->status &= ~IRQ_INPROGRESS;

out:
	/*
	 * The ->end() handler has to deal with interrupts which got
	 * disabled while the handler was running.
	 */
	desc->chip->end(irq);
	FUNC7(&desc->lock);

	return 1;
}