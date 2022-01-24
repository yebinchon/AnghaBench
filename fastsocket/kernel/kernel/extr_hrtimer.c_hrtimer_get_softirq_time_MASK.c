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
struct hrtimer_cpu_base {TYPE_1__* clock_base; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_2__ {int /*<<< orphan*/  softirq_time; } ;

/* Variables and functions */
 size_t CLOCK_MONOTONIC ; 
 size_t CLOCK_REALTIME ; 
 int /*<<< orphan*/  FUNC0 (struct timespec*,struct timespec*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec) ; 

__attribute__((used)) static void FUNC3(struct hrtimer_cpu_base *base)
{
	ktime_t xtim, tomono;
	struct timespec xts, tom, slp;

	FUNC0(&xts, &tom, &slp);

	xtim = FUNC2(xts);
	tomono = FUNC2(tom);
	base->clock_base[CLOCK_REALTIME].softirq_time = xtim;
	base->clock_base[CLOCK_MONOTONIC].softirq_time =
		FUNC1(xtim, tomono);
}