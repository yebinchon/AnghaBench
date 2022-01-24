#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
struct hrtimer {int dummy; } ;
struct TYPE_4__ {scalar_t__ tv64; } ;
typedef  TYPE_1__ ktime_t ;

/* Variables and functions */
 scalar_t__ NSEC_PER_USEC ; 
 scalar_t__ FUNC0 (struct hrtimer*) ; 
 TYPE_1__ FUNC1 (struct hrtimer*) ; 
 struct timeval FUNC2 (TYPE_1__) ; 

__attribute__((used)) static struct timeval FUNC3(struct hrtimer *timer)
{
	ktime_t rem = FUNC1(timer);

	/*
	 * Racy but safe: if the itimer expires after the above
	 * hrtimer_get_remtime() call but before this condition
	 * then we return 0 - which is correct.
	 */
	if (FUNC0(timer)) {
		if (rem.tv64 <= 0)
			rem.tv64 = NSEC_PER_USEC;
	} else
		rem.tv64 = 0;

	return FUNC2(rem);
}