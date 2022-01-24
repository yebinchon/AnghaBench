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
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_4__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_5__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_6__ {TYPE_1__ wall_to_monotonic; TYPE_2__ xtime; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 TYPE_3__ timekeeper ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  timekeeping_suspended ; 

ktime_t FUNC7(void)
{
	unsigned int seq;
	s64 secs, nsecs;

	FUNC0(timekeeping_suspended);

	do {
		seq = FUNC4(&timekeeper.lock);
		secs = timekeeper.xtime.tv_sec +
				timekeeper.wall_to_monotonic.tv_sec;
		nsecs = timekeeper.xtime.tv_nsec +
				timekeeper.wall_to_monotonic.tv_nsec;
		nsecs += FUNC6();
		/* If arch requires, add in gettimeoffset() */
		nsecs += FUNC1();

	} while (FUNC5(&timekeeper.lock, seq));
	/*
	 * Use ktime_set/ktime_add_ns to create a proper ktime on
	 * 32-bit architectures without CONFIG_KTIME_SCALAR.
	 */
	return FUNC2(FUNC3(secs, 0), nsecs);
}