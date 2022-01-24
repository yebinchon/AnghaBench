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
union cpu_time_count {scalar_t__ sched; } ;
struct task_struct {int exit_state; int /*<<< orphan*/ * signal; } ;
struct TYPE_4__ {union cpu_time_count expires; union cpu_time_count incr; struct task_struct* task; } ;
struct TYPE_5__ {TYPE_1__ cpu; } ;
struct k_itimer {int it_sigev_notify; TYPE_2__ it; int /*<<< orphan*/  it_clock; } ;
struct TYPE_6__ {int tv_sec; int tv_nsec; } ;
struct itimerspec {TYPE_3__ it_value; TYPE_3__ it_interval; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int SIGEV_NONE ; 
 int SIGEV_THREAD_ID ; 
 int /*<<< orphan*/  FUNC1 (struct k_itimer*,union cpu_time_count) ; 
 int /*<<< orphan*/  FUNC2 (struct k_itimer*,union cpu_time_count) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct task_struct*,union cpu_time_count*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,union cpu_time_count,union cpu_time_count) ; 
 union cpu_time_count FUNC5 (int /*<<< orphan*/ ,union cpu_time_count,union cpu_time_count) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct task_struct*,union cpu_time_count*) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,union cpu_time_count,TYPE_3__*) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 scalar_t__ FUNC11 (struct task_struct*) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(struct k_itimer *timer, struct itimerspec *itp)
{
	union cpu_time_count now;
	struct task_struct *p = timer->it.cpu.task;
	int clear_dead;

	/*
	 * Easy part: convert the reload time.
	 */
	FUNC10(timer->it_clock,
			   timer->it.cpu.incr, &itp->it_interval);

	if (timer->it.cpu.expires.sched == 0) {	/* Timer not armed at all.  */
		itp->it_value.tv_sec = itp->it_value.tv_nsec = 0;
		return;
	}

	if (FUNC12(p == NULL)) {
		/*
		 * This task already died and the timer will never fire.
		 * In this case, expires is actually the dead value.
		 */
	dead:
		FUNC10(timer->it_clock, timer->it.cpu.expires,
				   &itp->it_value);
		return;
	}

	/*
	 * Sample the clock to take the difference with the expiry time.
	 */
	if (FUNC0(timer->it_clock)) {
		FUNC3(timer->it_clock, p, &now);
		clear_dead = p->exit_state;
	} else {
		FUNC8(&tasklist_lock);
		if (FUNC12(p->signal == NULL)) {
			/*
			 * The process has been reaped.
			 * We can't even collect a sample any more.
			 * Call the timer disarmed, nothing else to do.
			 */
			FUNC7(p);
			timer->it.cpu.task = NULL;
			timer->it.cpu.expires.sched = 0;
			FUNC9(&tasklist_lock);
			goto dead;
		} else {
			FUNC6(timer->it_clock, p, &now);
			clear_dead = (FUNC12(p->exit_state) &&
				      FUNC11(p));
		}
		FUNC9(&tasklist_lock);
	}

	if ((timer->it_sigev_notify & ~SIGEV_THREAD_ID) == SIGEV_NONE) {
		if (timer->it.cpu.incr.sched == 0 &&
		    FUNC4(timer->it_clock,
				    timer->it.cpu.expires, now)) {
			/*
			 * Do-nothing timer expired and has no reload,
			 * so it's as if it was never set.
			 */
			timer->it.cpu.expires.sched = 0;
			itp->it_value.tv_sec = itp->it_value.tv_nsec = 0;
			return;
		}
		/*
		 * Account for any expirations and reloads that should
		 * have happened.
		 */
		FUNC1(timer, now);
	}

	if (FUNC12(clear_dead)) {
		/*
		 * We've noticed that the thread is dead, but
		 * not yet reaped.  Take this opportunity to
		 * drop our task ref.
		 */
		FUNC2(timer, now);
		goto dead;
	}

	if (FUNC4(timer->it_clock, now, timer->it.cpu.expires)) {
		FUNC10(timer->it_clock,
				   FUNC5(timer->it_clock,
						timer->it.cpu.expires, now),
				   &itp->it_value);
	} else {
		/*
		 * The timer should have expired already, but the firing
		 * hasn't taken place yet.  Say it's just about to expire.
		 */
		itp->it_value.tv_nsec = 1;
		itp->it_value.tv_sec = 0;
	}
}