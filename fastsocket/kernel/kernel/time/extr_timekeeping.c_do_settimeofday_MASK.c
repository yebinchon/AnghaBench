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
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct timespec xtime; int /*<<< orphan*/  wall_to_monotonic; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ timekeeper ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct timespec) ; 
 int /*<<< orphan*/  FUNC4 (struct timespec const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(const struct timespec *tv)
{
	struct timespec ts_delta;
	unsigned long flags;

	if (!FUNC4(tv))
		return -EINVAL;

	FUNC5(&timekeeper.lock, flags);

	FUNC1();

	ts_delta.tv_sec = tv->tv_sec - timekeeper.xtime.tv_sec;
	ts_delta.tv_nsec = tv->tv_nsec - timekeeper.xtime.tv_nsec;
	timekeeper.wall_to_monotonic =
			FUNC3(timekeeper.wall_to_monotonic, ts_delta);

	timekeeper.xtime = *tv;
	FUNC2(true);

	FUNC6(&timekeeper.lock, flags);

	/* signal hrtimers about time change */
	FUNC0();

	return 0;
}