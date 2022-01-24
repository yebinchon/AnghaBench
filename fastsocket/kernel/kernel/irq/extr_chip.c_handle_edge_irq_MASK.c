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
struct irq_desc {int status; int /*<<< orphan*/  lock; TYPE_1__* chip; struct irqaction* action; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* unmask ) (unsigned int) ;int /*<<< orphan*/  (* mask ) (unsigned int) ;int /*<<< orphan*/  (* ack ) (unsigned int) ;} ;

/* Variables and functions */
 int IRQ_DISABLED ; 
 int IRQ_INPROGRESS ; 
 int IRQ_MASKED ; 
 int IRQ_PENDING ; 
 int IRQ_REPLAY ; 
 int IRQ_WAITING ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,struct irqaction*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_desc*,unsigned int) ; 
 int /*<<< orphan*/  noirqdebug ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,struct irq_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 scalar_t__ FUNC9 (int) ; 

void
FUNC10(unsigned int irq, struct irq_desc *desc)
{
	FUNC4(&desc->lock);

	desc->status &= ~(IRQ_REPLAY | IRQ_WAITING);

	/*
	 * If we're currently running this IRQ, or its disabled,
	 * we shouldn't process the IRQ. Mark it pending, handle
	 * the necessary masking and go out
	 */
	if (FUNC9((desc->status & (IRQ_INPROGRESS | IRQ_DISABLED)) ||
		    !desc->action)) {
		desc->status |= (IRQ_PENDING | IRQ_MASKED);
		FUNC2(desc, irq);
		goto out_unlock;
	}
	FUNC1(irq, desc);

	/* Start handling the irq */
	if (desc->chip->ack)
		desc->chip->ack(irq);

	/* Mark the IRQ currently in progress.*/
	desc->status |= IRQ_INPROGRESS;

	do {
		struct irqaction *action = desc->action;
		irqreturn_t action_ret;

		if (FUNC9(!action)) {
			desc->chip->mask(irq);
			goto out_unlock;
		}

		/*
		 * When another irq arrived while we were handling
		 * one, we could have masked the irq.
		 * Renable it, if it was not disabled in meantime.
		 */
		if (FUNC9((desc->status &
			       (IRQ_PENDING | IRQ_MASKED | IRQ_DISABLED)) ==
			      (IRQ_PENDING | IRQ_MASKED))) {
			desc->chip->unmask(irq);
			desc->status &= ~IRQ_MASKED;
		}

		desc->status &= ~IRQ_PENDING;
		FUNC5(&desc->lock);
		action_ret = FUNC0(irq, action);
		if (!noirqdebug)
			FUNC3(irq, desc, action_ret);
		FUNC4(&desc->lock);

	} while ((desc->status & (IRQ_PENDING | IRQ_DISABLED)) == IRQ_PENDING);

	desc->status &= ~IRQ_INPROGRESS;
out_unlock:
	FUNC5(&desc->lock);
}