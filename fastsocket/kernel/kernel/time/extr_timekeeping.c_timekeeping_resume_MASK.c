#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timespec {int dummy; } ;
struct sys_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* read ) (TYPE_2__*) ;int /*<<< orphan*/  cycle_last; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; scalar_t__ ntp_error; TYPE_2__* clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_EVT_NOTIFY_RESUME ; 
 int /*<<< orphan*/  FUNC0 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_1__ timekeeper ; 
 int /*<<< orphan*/  timekeeping_suspend_time ; 
 scalar_t__ timekeeping_suspended ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct timespec*,int /*<<< orphan*/ *) ; 
 struct timespec FUNC8 (struct timespec,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC12(struct sys_device *dev)
{
	unsigned long flags;
	struct timespec ts;

	FUNC4(&ts);

	FUNC2();

	FUNC10(&timekeeper.lock, flags);

	if (FUNC7(&ts, &timekeeping_suspend_time) > 0) {
		ts = FUNC8(ts, timekeeping_suspend_time);
		FUNC0(&ts);
	}
	/* re-base the last cycle value */
	timekeeper.clock->cycle_last = timekeeper.clock->read(timekeeper.clock);
	timekeeper.ntp_error = 0;
	timekeeping_suspended = 0;
	FUNC6(false);
	FUNC11(&timekeeper.lock, flags);

	FUNC9();

	FUNC1(CLOCK_EVT_NOTIFY_RESUME, NULL);

	/* Resume hrtimers */
	FUNC3();

	return 0;
}