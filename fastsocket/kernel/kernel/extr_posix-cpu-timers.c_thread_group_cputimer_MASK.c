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
struct task_cputime {int dummy; } ;
struct thread_group_cputimer {int running; int /*<<< orphan*/  lock; struct task_cputime cputime; } ;
struct task_struct {TYPE_1__* signal; } ;
struct TYPE_2__ {struct thread_group_cputimer cputimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,struct task_cputime*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_cputime*,struct task_cputime*) ; 

void FUNC4(struct task_struct *tsk, struct task_cputime *times)
{
	struct thread_group_cputimer *cputimer = &tsk->signal->cputimer;
	struct task_cputime sum;
	unsigned long flags;

	FUNC0(&cputimer->lock, flags);
	if (!cputimer->running) {
		cputimer->running = 1;
		/*
		 * The POSIX timer interface allows for absolute time expiry
		 * values through the TIMER_ABSTIME flag, therefore we have
		 * to synchronize the timer to the clock every time we start
		 * it.
		 */
		FUNC2(tsk, &sum);
		FUNC3(&cputimer->cputime, &sum);
	}
	*times = cputimer->cputime;
	FUNC1(&cputimer->lock, flags);
}