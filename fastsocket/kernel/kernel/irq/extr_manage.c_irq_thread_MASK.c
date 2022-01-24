#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sched_param {int sched_priority; } ;
struct irqaction {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev_id; int /*<<< orphan*/  (* thread_fn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct irq_desc {int status; int /*<<< orphan*/  wait_for_threads; int /*<<< orphan*/  threads_active; int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {struct irqaction* irqaction; } ;

/* Variables and functions */
 int IRQ_DISABLED ; 
 int IRQ_ONESHOT ; 
 int IRQ_PENDING ; 
 int MAX_USER_RT_PRIO ; 
 int /*<<< orphan*/  SCHED_FIFO ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_desc*,struct irqaction*) ; 
 struct irq_desc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct irqaction*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,struct sched_param*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(void *data)
{
	struct sched_param param = { .sched_priority = MAX_USER_RT_PRIO/2, };
	struct irqaction *action = data;
	struct irq_desc *desc = FUNC4(action->irq);
	int wake, oneshot = desc->status & IRQ_ONESHOT;

	FUNC6(current, SCHED_FIFO, &param);
	current->irqaction = action;

	while (!FUNC5(action)) {

		FUNC3(desc, action);

		FUNC1(&desc->threads_active);

		FUNC7(&desc->lock);
		if (FUNC10(desc->status & IRQ_DISABLED)) {
			/*
			 * CHECKME: We might need a dedicated
			 * IRQ_THREAD_PENDING flag here, which
			 * retriggers the thread in check_irq_resend()
			 * but AFAICT IRQ_PENDING should be fine as it
			 * retriggers the interrupt itself --- tglx
			 */
			desc->status |= IRQ_PENDING;
			FUNC8(&desc->lock);
		} else {
			FUNC8(&desc->lock);

			action->thread_fn(action->irq, action->dev_id);

			if (oneshot)
				FUNC2(action->irq, desc);
		}

		wake = FUNC0(&desc->threads_active);

		if (wake && FUNC11(&desc->wait_for_threads))
			FUNC12(&desc->wait_for_threads);
	}

	/*
	 * Clear irqaction. Otherwise exit_irq_thread() would make
	 * fuzz about an active irq thread going into nirvana.
	 */
	current->irqaction = NULL;
	return 0;
}