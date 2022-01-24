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
struct irqaction {void* dev_id; int flags; scalar_t__ thread; int /*<<< orphan*/  thread_flags; int /*<<< orphan*/  (* handler ) (unsigned int,void*) ;struct irqaction* next; } ;
struct irq_desc {int /*<<< orphan*/  lock; int /*<<< orphan*/ * affinity_hint; TYPE_1__* chip; int /*<<< orphan*/  status; struct irqaction* action; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable ) (unsigned int) ;int /*<<< orphan*/  (* shutdown ) (unsigned int) ;int /*<<< orphan*/  (* release ) (unsigned int,void*) ;} ;

/* Variables and functions */
 int IRQF_SHARED ; 
 int /*<<< orphan*/  IRQTF_DIED ; 
 int /*<<< orphan*/  IRQ_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 struct irq_desc* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,void*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int,void*) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (unsigned int,struct irqaction*) ; 

__attribute__((used)) static struct irqaction *FUNC17(unsigned int irq, void *dev_id)
{
	struct irq_desc *desc = FUNC3(irq);
	struct irqaction *action, **action_ptr;
	unsigned long flags;

	FUNC0(FUNC2(), "Trying to free IRQ %d from IRQ context!\n", irq);

	if (!desc)
		return NULL;

	FUNC8(&desc->lock, flags);

	/*
	 * There can be multiple actions per IRQ descriptor, find the right
	 * one based on the dev_id:
	 */
	action_ptr = &desc->action;
	for (;;) {
		action = *action_ptr;

		if (!action) {
			FUNC0(1, "Trying to free already-free IRQ %d\n", irq);
			FUNC9(&desc->lock, flags);

			return NULL;
		}

		if (action->dev_id == dev_id)
			break;
		action_ptr = &action->next;
	}

	/* Found it - now remove it from the list of entries: */
	*action_ptr = action->next;

	/* Currently used only by UML, might disappear one day: */
#ifdef CONFIG_IRQ_RELEASE_METHOD
	if (desc->chip->release)
		desc->chip->release(irq, dev_id);
#endif

	/* If this was the last handler, shut down the IRQ line: */
	if (!desc->action) {
		desc->status |= IRQ_DISABLED;
		if (desc->chip->shutdown)
			desc->chip->shutdown(irq);
		else
			desc->chip->disable(irq);
	}

#ifdef CONFIG_SMP
	/* make sure affinity_hint is cleaned up */
	if (WARN_ON_ONCE(desc->affinity_hint))
		desc->affinity_hint = NULL;
#endif

	FUNC9(&desc->lock, flags);

	FUNC16(irq, action);

	/* Make sure it's not being used on another CPU: */
	FUNC14(irq);

#ifdef CONFIG_DEBUG_SHIRQ
	/*
	 * It's a shared IRQ -- the driver ought to be prepared for an IRQ
	 * event to happen even now it's being freed, so let's make sure that
	 * is so by doing an extra call to the handler ....
	 *
	 * ( We do this after actually deregistering it, to make sure that a
	 *   'real' IRQ doesn't run in * parallel with our fake. )
	 */
	if (action->flags & IRQF_SHARED) {
		local_irq_save(flags);
		action->handler(irq, dev_id);
		local_irq_restore(flags);
	}
#endif

	if (action->thread) {
		if (!FUNC15(IRQTF_DIED, &action->thread_flags))
			FUNC4(action->thread);
		FUNC7(action->thread);
	}

	return action;
}