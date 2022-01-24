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
struct hrtimer {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_ABS_PINNED ; 
 int /*<<< orphan*/  FUNC0 (struct hrtimer*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hrtimer*) ; 
 int /*<<< orphan*/  FUNC2 (struct hrtimer*) ; 
 int /*<<< orphan*/  FUNC3 (struct hrtimer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hrtimer*) ; 
 int /*<<< orphan*/  FUNC5 (struct hrtimer*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct hrtimer *period_timer, ktime_t period)
{
	unsigned long delta;
	ktime_t soft, hard, now;

	for (;;) {
		if (FUNC1(period_timer))
			break;

		now = FUNC2(period_timer);
		FUNC3(period_timer, now, period);

		soft = FUNC5(period_timer);
		hard = FUNC4(period_timer);
		delta = FUNC7(FUNC6(hard, soft));
		FUNC0(period_timer, soft, delta,
					 HRTIMER_MODE_ABS_PINNED, 0);
	}
}