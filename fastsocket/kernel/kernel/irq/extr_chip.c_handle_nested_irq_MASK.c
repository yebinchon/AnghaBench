#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct irqaction {int /*<<< orphan*/  dev_id; int /*<<< orphan*/  irq; int /*<<< orphan*/  (* thread_fn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct irq_desc {int status; int /*<<< orphan*/  lock; struct irqaction* action; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int IRQ_DISABLED ; 
 int IRQ_INPROGRESS ; 
 struct irq_desc* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  noirqdebug ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,struct irq_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

void FUNC8(unsigned int irq)
{
	struct irq_desc *desc = FUNC0(irq);
	struct irqaction *action;
	irqreturn_t action_ret;

	FUNC2();

	FUNC4(&desc->lock);

	FUNC1(irq, desc);

	action = desc->action;
	if (FUNC7(!action || (desc->status & IRQ_DISABLED)))
		goto out_unlock;

	desc->status |= IRQ_INPROGRESS;
	FUNC5(&desc->lock);

	action_ret = action->thread_fn(action->irq, action->dev_id);
	if (!noirqdebug)
		FUNC3(irq, desc, action_ret);

	FUNC4(&desc->lock);
	desc->status &= ~IRQ_INPROGRESS;

out_unlock:
	FUNC5(&desc->lock);
}