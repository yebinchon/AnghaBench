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
struct irq_desc {unsigned int status; int /*<<< orphan*/  threads_active; int /*<<< orphan*/  wait_for_threads; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned int IRQ_INPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct irq_desc* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

void FUNC6(unsigned int irq)
{
	struct irq_desc *desc = FUNC2(irq);
	unsigned int status;

	if (!desc)
		return;

	do {
		unsigned long flags;

		/*
		 * Wait until we're out of the critical section.  This might
		 * give the wrong answer due to the lack of memory barriers.
		 */
		while (desc->status & IRQ_INPROGRESS)
			FUNC1();

		/* Ok, that indicated we're done: double-check carefully. */
		FUNC3(&desc->lock, flags);
		status = desc->status;
		FUNC4(&desc->lock, flags);

		/* Oops, that failed? */
	} while (status & IRQ_INPROGRESS);

	/*
	 * We made sure that no hardirq handler is running. Now verify
	 * that no threaded handlers are active.
	 */
	FUNC5(desc->wait_for_threads, !FUNC0(&desc->threads_active));
}