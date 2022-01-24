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
struct timespec {int /*<<< orphan*/  tv_sec; } ;
struct sys_device {int dummy; } ;
typedef  int /*<<< orphan*/  pm_message_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct timespec xtime; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_EVT_NOTIFY_SUSPEND ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct timespec*) ; 
 TYPE_1__ timekeeper ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct timespec timekeeping_suspend_time ; 
 int timekeeping_suspended ; 
 struct timespec FUNC5 (struct timespec,struct timespec) ; 
 struct timespec FUNC6 (struct timespec,struct timespec) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct sys_device *dev, pm_message_t state)
{
	unsigned long flags;
	struct timespec		delta, delta_delta;
	static struct timespec	old_delta;

	FUNC3(&timekeeping_suspend_time);

	FUNC7(&timekeeper.lock, flags);
	FUNC4();
	timekeeping_suspended = 1;

	/*
	 * To avoid drift caused by repeated suspend/resumes,
	 * which each can add ~1 second drift error,
	 * try to compensate so the difference in system time
	 * and persistent_clock time stays close to constant.
	 */
	delta = FUNC6(timekeeper.xtime, timekeeping_suspend_time);
	delta_delta = FUNC6(delta, old_delta);
	if (FUNC0(delta_delta.tv_sec)  >= 2) {
		/*
		 * if delta_delta is too large, assume time correction
		 * has occured and set old_delta to the current delta.
		 */
		old_delta = delta;
	} else {
		/* Otherwise try to adjust old_system to compensate */
		timekeeping_suspend_time =
			FUNC5(timekeeping_suspend_time, delta_delta);
	}
	FUNC8(&timekeeper.lock, flags);

	FUNC1(CLOCK_EVT_NOTIFY_SUSPEND, NULL);
	FUNC2();

	return 0;
}