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
struct perf_sample {size_t cpu; } ;
struct perf_evsel {int dummy; } ;

/* Variables and functions */
 int* cpunode_map ; 
 int /*<<< orphan*/  nr_cross_allocs ; 
 int FUNC0 (struct perf_evsel*,struct perf_sample*,char*) ; 
 int FUNC1 (struct perf_evsel*,struct perf_sample*) ; 

__attribute__((used)) static int FUNC2(struct perf_evsel *evsel,
						struct perf_sample *sample)
{
	int ret = FUNC1(evsel, sample);

	if (!ret) {
		int node1 = cpunode_map[sample->cpu],
		    node2 = FUNC0(evsel, sample, "node");

		if (node1 != node2)
			nr_cross_allocs++;
	}

	return ret;
}