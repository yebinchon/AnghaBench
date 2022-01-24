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
struct hw_perf_event {int /*<<< orphan*/  hrtimer; int /*<<< orphan*/  period_left; } ;
struct perf_event {struct hw_perf_event hw; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct perf_event *event)
{
	struct hw_perf_event *hwc = &event->hw;

	if (FUNC2(event)) {
		ktime_t remaining = FUNC1(&hwc->hrtimer);
		FUNC4(&hwc->period_left, FUNC3(remaining));

		FUNC0(&hwc->hrtimer);
	}
}