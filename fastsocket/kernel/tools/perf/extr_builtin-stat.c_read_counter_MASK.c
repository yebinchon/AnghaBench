#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct perf_evsel {TYPE_2__* counts; } ;
struct TYPE_4__ {TYPE_1__* cpu; } ;
struct TYPE_3__ {int /*<<< orphan*/ * values; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct perf_evsel*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct perf_evsel*) ; 
 int /*<<< orphan*/  scale ; 
 int /*<<< orphan*/  FUNC2 (struct perf_evsel*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct perf_evsel *counter)
{
	u64 *count;
	int cpu;

	for (cpu = 0; cpu < FUNC1(counter); cpu++) {
		if (FUNC0(counter, cpu, 0, scale) < 0)
			return -1;

		count = counter->counts->cpu[cpu].values;

		FUNC2(counter, count);
	}

	return 0;
}