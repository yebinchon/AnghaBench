#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hrtimer_clock_base {int dummy; } ;
struct hrtimer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hrtimer*) ; 
 struct hrtimer_clock_base* FUNC1 (struct hrtimer*,unsigned long*) ; 
 int FUNC2 (struct hrtimer*,struct hrtimer_clock_base*) ; 
 int /*<<< orphan*/  FUNC3 (struct hrtimer*,unsigned long*) ; 

int FUNC4(struct hrtimer *timer)
{
	struct hrtimer_clock_base *base;
	unsigned long flags;
	int ret = -1;

	base = FUNC1(timer, &flags);

	if (!FUNC0(timer))
		ret = FUNC2(timer, base);

	FUNC3(timer, &flags);

	return ret;

}