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
struct TYPE_2__ {struct timespec wall_to_monotonic; struct timespec xtime; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct timespec*,scalar_t__,scalar_t__) ; 
 TYPE_1__ timekeeper ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  timekeeping_suspended ; 

void FUNC6(struct timespec *ts)
{
	struct timespec tomono;
	unsigned int seq;
	s64 nsecs;

	FUNC0(timekeeping_suspended);

	do {
		seq = FUNC2(&timekeeper.lock);
		*ts = timekeeper.xtime;
		tomono = timekeeper.wall_to_monotonic;
		nsecs = FUNC5();
		/* If arch requires, add in gettimeoffset() */
		nsecs += FUNC1();

	} while (FUNC3(&timekeeper.lock, seq));

	FUNC4(ts, ts->tv_sec + tomono.tv_sec,
				ts->tv_nsec + tomono.tv_nsec + nsecs);
}