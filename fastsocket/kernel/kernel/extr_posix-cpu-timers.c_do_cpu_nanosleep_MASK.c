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
struct timespec {int tv_sec; int tv_nsec; } ;
struct TYPE_6__ {scalar_t__ sched; } ;
struct TYPE_4__ {TYPE_3__ expires; } ;
struct TYPE_5__ {TYPE_1__ cpu; } ;
struct k_itimer {int it_overrun; struct timespec it_value; int /*<<< orphan*/  it_lock; TYPE_2__ it; int /*<<< orphan*/  it_process; int /*<<< orphan*/  it_clock; } ;
struct itimerspec {int it_overrun; struct timespec it_value; int /*<<< orphan*/  it_lock; TYPE_2__ it; int /*<<< orphan*/  it_process; int /*<<< orphan*/  it_clock; } ;
typedef  int /*<<< orphan*/  clockid_t ;

/* Variables and functions */
 int ERESTART_RESTARTBLOCK ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (struct k_itimer*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct k_itimer*) ; 
 int FUNC3 (struct k_itimer*,int,struct k_itimer*,struct k_itimer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,TYPE_3__,struct timespec*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(const clockid_t which_clock, int flags,
			    struct timespec *rqtp, struct itimerspec *it)
{
	struct k_itimer timer;
	int error;

	/*
	 * Set up a temporary timer and then wait for it to go off.
	 */
	FUNC1(&timer, 0, sizeof timer);
	FUNC7(&timer.it_lock);
	timer.it_clock = which_clock;
	timer.it_overrun = -1;
	error = FUNC2(&timer);
	timer.it_process = current;
	if (!error) {
		static struct itimerspec zero_it;

		FUNC1(it, 0, sizeof *it);
		it->it_value = *rqtp;

		FUNC8(&timer.it_lock);
		error = FUNC3(&timer, flags, it, NULL);
		if (error) {
			FUNC9(&timer.it_lock);
			return error;
		}

		while (!FUNC6(current)) {
			if (timer.it.cpu.expires.sched == 0) {
				/*
				 * Our timer fired and was reset.
				 */
				FUNC9(&timer.it_lock);
				return 0;
			}

			/*
			 * Block until cpu_timer_fire (or a signal) wakes us.
			 */
			FUNC0(TASK_INTERRUPTIBLE);
			FUNC9(&timer.it_lock);
			FUNC5();
			FUNC8(&timer.it_lock);
		}

		/*
		 * We were interrupted by a signal.
		 */
		FUNC4(which_clock, timer.it.cpu.expires, rqtp);
		FUNC3(&timer, 0, &zero_it, it);
		FUNC9(&timer.it_lock);

		if ((it->it_value.tv_sec | it->it_value.tv_nsec) == 0) {
			/*
			 * It actually did fire already.
			 */
			return 0;
		}

		error = -ERESTART_RESTARTBLOCK;
	}

	return error;
}