#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ tv64; } ;
struct clock_event_device {scalar_t__ mode; unsigned long long max_delta_ns; unsigned long long min_delta_ns; unsigned long long mult; unsigned long long shift; int (* set_next_event ) (unsigned long,struct clock_event_device*) ;TYPE_1__ next_event; } ;
typedef  TYPE_1__ ktime_t ;
typedef  unsigned long long int64_t ;

/* Variables and functions */
 scalar_t__ CLOCK_EVT_MODE_SHUTDOWN ; 
 int ETIME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,TYPE_1__) ; 
 unsigned long long FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned long,struct clock_event_device*) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct clock_event_device *dev, ktime_t expires,
			      ktime_t now)
{
	unsigned long long clc;
	int64_t delta;

	if (FUNC4(expires.tv64 < 0)) {
		FUNC0(1);
		return -ETIME;
	}

	delta = FUNC2(FUNC1(expires, now));

	if (delta <= 0)
		return -ETIME;

	dev->next_event = expires;

	if (dev->mode == CLOCK_EVT_MODE_SHUTDOWN)
		return 0;

	if (delta > dev->max_delta_ns)
		delta = dev->max_delta_ns;
	if (delta < dev->min_delta_ns)
		delta = dev->min_delta_ns;

	clc = delta * dev->mult;
	clc >>= dev->shift;

	return dev->set_next_event((unsigned long) clc, dev);
}