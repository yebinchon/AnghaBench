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
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hrtimer const*) ; 
 struct hrtimer_clock_base* FUNC1 (struct hrtimer const*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct hrtimer const*,unsigned long*) ; 

ktime_t FUNC3(const struct hrtimer *timer)
{
	struct hrtimer_clock_base *base;
	unsigned long flags;
	ktime_t rem;

	base = FUNC1(timer, &flags);
	rem = FUNC0(timer);
	FUNC2(timer, &flags);

	return rem;
}