#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union cpu_time_count {int dummy; } cpu_time_count ;
struct task_struct {int /*<<< orphan*/  exit_state; int /*<<< orphan*/ * signal; } ;
struct TYPE_4__ {scalar_t__ sched; } ;
struct TYPE_5__ {TYPE_1__ expires; struct task_struct* task; } ;
struct TYPE_6__ {TYPE_2__ cpu; } ;
struct k_itimer {int it_overrun_last; int it_overrun; int /*<<< orphan*/  it_requeue_pending; int /*<<< orphan*/  it_clock; TYPE_3__ it; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct k_itimer*,union cpu_time_count) ; 
 int /*<<< orphan*/  FUNC2 (struct k_itimer*,union cpu_time_count) ; 
 int /*<<< orphan*/  FUNC3 (struct k_itimer*,union cpu_time_count) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct task_struct*,union cpu_time_count*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct task_struct*,union cpu_time_count*) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 scalar_t__ FUNC9 (struct task_struct*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(struct k_itimer *timer)
{
	struct task_struct *p = timer->it.cpu.task;
	union cpu_time_count now;

	if (FUNC10(p == NULL))
		/*
		 * The task was cleaned up already, no future firings.
		 */
		goto out;

	/*
	 * Fetch the current sample and update the timer's expiry time.
	 */
	if (FUNC0(timer->it_clock)) {
		FUNC4(timer->it_clock, p, &now);
		FUNC2(timer, now);
		if (FUNC10(p->exit_state)) {
			FUNC3(timer, now);
			goto out;
		}
		FUNC7(&tasklist_lock); /* arm_timer needs it.  */
	} else {
		FUNC7(&tasklist_lock);
		if (FUNC10(p->signal == NULL)) {
			/*
			 * The process has been reaped.
			 * We can't even collect a sample any more.
			 */
			FUNC6(p);
			timer->it.cpu.task = p = NULL;
			timer->it.cpu.expires.sched = 0;
			goto out_unlock;
		} else if (FUNC10(p->exit_state) && FUNC9(p)) {
			/*
			 * We've noticed that the thread is dead, but
			 * not yet reaped.  Take this opportunity to
			 * drop our task ref.
			 */
			FUNC3(timer, now);
			goto out_unlock;
		}
		FUNC5(timer->it_clock, p, &now);
		FUNC2(timer, now);
		/* Leave the tasklist_lock locked for the call below.  */
	}

	/*
	 * Now re-arm for the new expiry time.
	 */
	FUNC1(timer, now);

out_unlock:
	FUNC8(&tasklist_lock);

out:
	timer->it_overrun_last = timer->it_overrun;
	timer->it_overrun = -1;
	++timer->it_requeue_pending;
}