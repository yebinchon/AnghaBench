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
struct timespec {int dummy; } ;
typedef  int /*<<< orphan*/  s64 ;
struct TYPE_2__ {struct timespec xtime; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__ timekeeper ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  timekeeping_suspended ; 
 int /*<<< orphan*/  FUNC5 (struct timespec*,int /*<<< orphan*/ ) ; 

void FUNC6(struct timespec *ts)
{
	unsigned long seq;
	s64 nsecs;

	FUNC0(timekeeping_suspended);

	do {
		seq = FUNC2(&timekeeper.lock);

		*ts = timekeeper.xtime;
		nsecs = FUNC4();

		/* If arch requires, add in gettimeoffset() */
		nsecs += FUNC1();

	} while (FUNC3(&timekeeper.lock, seq));

	FUNC5(ts, nsecs);
}