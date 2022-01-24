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
typedef  int u64 ;
struct pt_regs {int dummy; } ;
struct perf_sample_data {int period; } ;
struct TYPE_2__ {int sample_type; int /*<<< orphan*/  freq; } ;
struct hw_perf_event {int last_period; int sample_period; int /*<<< orphan*/  period_left; } ;
struct perf_event {TYPE_1__ attr; struct hw_perf_event hw; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int PERF_SAMPLE_PERIOD ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *) ; 
 void FUNC3 (struct perf_event*,int,struct perf_sample_data*,struct pt_regs*) ; 

__attribute__((used)) static void FUNC4(struct perf_event *event, u64 nr,
			       struct perf_sample_data *data,
			       struct pt_regs *regs)
{
	struct hw_perf_event *hwc = &event->hw;

	FUNC1(nr, &event->count);

	if (!regs)
		return;

	if (!FUNC0(event))
		return;

	if ((event->attr.sample_type & PERF_SAMPLE_PERIOD) && !event->attr.freq) {
		data->period = nr;
		return FUNC3(event, 1, data, regs);
	} else
		data->period = event->hw.last_period;

	if (nr == 1 && hwc->sample_period == 1 && !event->attr.freq)
		return FUNC3(event, 1, data, regs);

	if (FUNC2(nr, &hwc->period_left))
		return;

	FUNC3(event, 0, data, regs);
}