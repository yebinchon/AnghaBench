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
struct TYPE_2__ {struct timespec raw_time; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__ timekeeper ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct timespec*,int /*<<< orphan*/ ) ; 

void FUNC4(struct timespec *ts)
{
	unsigned long seq;
	s64 nsecs;

	do {
		seq = FUNC0(&timekeeper.lock);
		nsecs = FUNC2();
		*ts = timekeeper.raw_time;

	} while (FUNC1(&timekeeper.lock, seq));

	FUNC3(ts, nsecs);
}