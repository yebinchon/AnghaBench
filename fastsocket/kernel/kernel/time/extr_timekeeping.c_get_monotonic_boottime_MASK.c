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
typedef  scalar_t__ s64 ;
struct TYPE_2__ {struct timespec total_sleep_time; struct timespec wall_to_monotonic; struct timespec xtime; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct timespec*,scalar_t__,scalar_t__) ; 
 TYPE_1__ timekeeper ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  timekeeping_suspended ; 

void FUNC5(struct timespec *ts)
{
	struct timespec tomono, sleep;
	unsigned int seq;
	s64 nsecs;

	FUNC0(timekeeping_suspended);

	do {
		seq = FUNC1(&timekeeper.lock);
		*ts = timekeeper.xtime;
		tomono = timekeeper.wall_to_monotonic;
		sleep = timekeeper.total_sleep_time;
		nsecs = FUNC4();

	} while (FUNC2(&timekeeper.lock, seq));

	FUNC3(ts, ts->tv_sec + tomono.tv_sec + sleep.tv_sec,
			ts->tv_nsec + tomono.tv_nsec + sleep.tv_nsec + nsecs);
}