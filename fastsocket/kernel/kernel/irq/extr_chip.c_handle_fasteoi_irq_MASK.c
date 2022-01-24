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
struct TYPE_2__ {int /*<<< orphan*/  (* eoi ) (unsigned int) ;int /*<<< orphan*/  (* mask ) (unsigned int) ;} ;

/* Variables and functions */
 int IRQ_DISABLED ; 
 int IRQ_INPROGRESS ; 
 int IRQ_PENDING ; 
 int IRQ_REPLAY ; 
 int IRQ_WAITING ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,struct irqaction*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct irq_desc*) ; 
 int /*<<< orphan*/  noirqdebug ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,struct irq_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 scalar_t__ FUNC7 (int) ; 

void
FUNC8(unsigned int irq, struct irq_desc *desc)
{
	struct irqaction *action;
	irqreturn_t action_ret;

	FUNC3(&desc->lock);

	if (FUNC7(desc->status & IRQ_INPROGRESS))
		goto out;

	desc->status &= ~(IRQ_REPLAY | IRQ_WAITING);
	FUNC1(irq, desc);

	/*
	 * If its disabled or no action available
	 * then mask it and get out of here:
	 */
	action = desc->action;
	if (FUNC7(!action || (desc->status & IRQ_DISABLED))) {
		desc->status |= IRQ_PENDING;
		if (desc->chip->mask)
			desc->chip->mask(irq);
		goto out;
	}

	desc->status |= IRQ_INPROGRESS;
	desc->status &= ~IRQ_PENDING;
	FUNC4(&desc->lock);

	action_ret = FUNC0(irq, action);
	if (!noirqdebug)
		FUNC2(irq, desc, action_ret);

	FUNC3(&desc->lock);
	desc->status &= ~IRQ_INPROGRESS;
out:
	desc->chip->eoi(irq);

	FUNC4(&desc->lock);
}