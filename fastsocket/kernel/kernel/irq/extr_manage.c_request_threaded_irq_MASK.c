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
struct irqaction {unsigned long flags; char const* name; void* dev_id; int /*<<< orphan*/  (* thread_fn ) (unsigned int,void*) ;int /*<<< orphan*/  (* handler ) (unsigned int,void*) ;} ;
struct irq_desc {int status; } ;
typedef  int /*<<< orphan*/  (* irq_handler_t ) (unsigned int,void*) ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long IRQF_DISABLED ; 
 unsigned long IRQF_SHARED ; 
 int IRQ_NOREQUEST ; 
 int FUNC0 (unsigned int,struct irq_desc*,struct irqaction*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,void*) ; 
 struct irq_desc* FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct irqaction*) ; 
 struct irqaction* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (char*,unsigned int,char const*) ; 

int FUNC12(unsigned int irq, irq_handler_t handler,
			 irq_handler_t thread_fn, unsigned long irqflags,
			 const char *devname, void *dev_id)
{
	struct irqaction *action;
	struct irq_desc *desc;
	int retval;

	/*
	 * handle_IRQ_event() always ignores IRQF_DISABLED except for
	 * the _first_ irqaction (sigh).  That can cause oopsing, but
	 * the behavior is classified as "will not fix" so we need to
	 * start nudging drivers away from using that idiom.
	 */
	if ((irqflags & (IRQF_SHARED|IRQF_DISABLED)) ==
					(IRQF_SHARED|IRQF_DISABLED)) {
		FUNC11(
		  "IRQ %d/%s: IRQF_DISABLED is not guaranteed on shared IRQs\n",
			irq, devname);
	}

#ifdef CONFIG_LOCKDEP
	/*
	 * Lockdep wants atomic interrupt handlers:
	 */
	irqflags |= IRQF_DISABLED;
#endif
	/*
	 * Sanity-check: shared interrupts must pass in a real dev-ID,
	 * otherwise we'll have trouble later trying to figure out
	 * which interrupt is which (messes up the interrupt freeing
	 * logic etc).
	 */
	if ((irqflags & IRQF_SHARED) && !dev_id)
		return -EINVAL;

	desc = FUNC6(irq);
	if (!desc)
		return -EINVAL;

	if (desc->status & IRQ_NOREQUEST)
		return -EINVAL;

	if (!handler) {
		if (!thread_fn)
			return -EINVAL;
		handler = irq_default_primary_handler;
	}

	action = FUNC8(sizeof(struct irqaction), GFP_KERNEL);
	if (!action)
		return -ENOMEM;

	action->handler = handler;
	action->thread_fn = thread_fn;
	action->flags = irqflags;
	action->name = devname;
	action->dev_id = dev_id;

	FUNC1(irq, desc);
	retval = FUNC0(irq, desc, action);
	FUNC2(irq, desc);

	if (retval)
		FUNC7(action);

#ifdef CONFIG_DEBUG_SHIRQ
	if (irqflags & IRQF_SHARED) {
		/*
		 * It's a shared IRQ -- the driver ought to be prepared for it
		 * to happen immediately, so let's make sure....
		 * We disable the irq to make sure that a 'real' IRQ doesn't
		 * run in parallel with our fake.
		 */
		unsigned long flags;

		disable_irq(irq);
		local_irq_save(flags);

		handler(irq, dev_id);

		local_irq_restore(flags);
		enable_irq(irq);
	}
#endif
	return retval;
}