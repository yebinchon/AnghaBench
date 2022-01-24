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
struct irqaction {int flags; int (* handler ) (unsigned int,int /*<<< orphan*/ ) ;struct irqaction* next; int /*<<< orphan*/  thread; int /*<<< orphan*/  thread_flags; int /*<<< orphan*/  thread_fn; int /*<<< orphan*/  dev_id; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 int IRQF_DISABLED ; 
 unsigned int IRQF_SAMPLE_RANDOM ; 
 int /*<<< orphan*/  IRQTF_DIED ; 
 int /*<<< orphan*/  IRQTF_RUNTHREAD ; 
#define  IRQ_HANDLED 129 
 int IRQ_NONE ; 
#define  IRQ_WAKE_THREAD 128 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,struct irqaction*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,struct irqaction*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,struct irqaction*) ; 

irqreturn_t FUNC12(unsigned int irq, struct irqaction *action)
{
	irqreturn_t ret, retval = IRQ_NONE;
	unsigned int status = 0;

	if (!(action->flags & IRQF_DISABLED))
		FUNC3();

	do {
		FUNC7(irq, action);
		ret = action->handler(irq, action->dev_id);
		FUNC8(irq, action, ret);

		switch (ret) {
		case IRQ_WAKE_THREAD:
			/*
			 * Set result to handled so the spurious check
			 * does not trigger.
			 */
			ret = IRQ_HANDLED;

			/*
			 * Catch drivers which return WAKE_THREAD but
			 * did not set up a thread function
			 */
			if (FUNC9(!action->thread_fn)) {
				FUNC11(irq, action);
				break;
			}

			/*
			 * Wake up the handler thread for this
			 * action. In case the thread crashed and was
			 * killed we just pretend that we handled the
			 * interrupt. The hardirq handler above has
			 * disabled the device interrupt, so no irq
			 * storm is lurking.
			 */
			if (FUNC1(!FUNC6(IRQTF_DIED,
					     &action->thread_flags))) {
				FUNC4(IRQTF_RUNTHREAD, &action->thread_flags);
				FUNC10(action->thread);
			}

			/* Fall through to add to randomness */
		case IRQ_HANDLED:
			status |= action->flags;
			break;

		default:
			break;
		}

		retval |= ret;
		action = action->next;
	} while (action);

	if (status & IRQF_SAMPLE_RANDOM)
		FUNC0(irq);
	FUNC2();

	return retval;
}