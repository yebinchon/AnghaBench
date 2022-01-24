#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct hrtimer {TYPE_2__* base; } ;
typedef  int s64 ;
struct TYPE_13__ {scalar_t__ tv64; } ;
typedef  TYPE_3__ ktime_t ;
struct TYPE_11__ {scalar_t__ tv64; } ;
struct TYPE_12__ {TYPE_1__ resolution; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hrtimer*,TYPE_3__) ; 
 int /*<<< orphan*/  FUNC1 (struct hrtimer*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hrtimer*) ; 
 scalar_t__ FUNC3 (struct hrtimer*) ; 
 int FUNC4 (TYPE_3__,int) ; 
 TYPE_3__ FUNC5 (TYPE_3__,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__) ; 
 scalar_t__ FUNC7 (int) ; 

u64 FUNC8(struct hrtimer *timer, ktime_t now, ktime_t interval)
{
	u64 orun = 1;
	ktime_t delta;

	delta = FUNC5(now, FUNC2(timer));

	if (delta.tv64 < 0)
		return 0;

	if (interval.tv64 < timer->base->resolution.tv64)
		interval.tv64 = timer->base->resolution.tv64;

	if (FUNC7(delta.tv64 >= interval.tv64)) {
		s64 incr = FUNC6(interval);

		orun = FUNC4(delta, incr);
		FUNC1(timer, incr * orun);
		if (FUNC3(timer) > now.tv64)
			return orun;
		/*
		 * This (and the ktime_add() below) is the
		 * correction for exact:
		 */
		orun++;
	}
	FUNC0(timer, interval);

	return orun;
}