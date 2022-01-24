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
struct timespec {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*) ; 
 TYPE_1__ timekeeper ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct timespec *delta)
{
	unsigned long flags;
	struct timespec ts;

	/* Make sure we don't set the clock twice */
	FUNC2(&ts);
	if (!(ts.tv_sec == 0 && ts.tv_nsec == 0))
		return;

	FUNC5(&timekeeper.lock, flags);

	FUNC3();

	FUNC0(delta);

	FUNC4(true);

	FUNC6(&timekeeper.lock, flags);

	/* signal hrtimers about time change */
	FUNC1();
}