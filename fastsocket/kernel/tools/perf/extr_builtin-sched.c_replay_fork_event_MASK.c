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
typedef  int u32 ;
struct perf_sched {int dummy; } ;
struct perf_sample {int dummy; } ;
struct perf_evsel {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct perf_evsel*,struct perf_sample*,char*) ; 
 char* FUNC1 (struct perf_evsel*,struct perf_sample*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_sched*,int const,char const*) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int FUNC4(struct perf_sched *sched, struct perf_evsel *evsel,
			     struct perf_sample *sample)
{
	const char *parent_comm = FUNC1(evsel, sample, "parent_comm"),
		   *child_comm  = FUNC1(evsel, sample, "child_comm");
	const u32 parent_pid  = FUNC0(evsel, sample, "parent_pid"),
		  child_pid  = FUNC0(evsel, sample, "child_pid");

	if (verbose) {
		FUNC2("sched_fork event %p\n", evsel);
		FUNC2("... parent: %s/%d\n", parent_comm, parent_pid);
		FUNC2("...  child: %s/%d\n", child_comm, child_pid);
	}

	FUNC3(sched, parent_pid, parent_comm);
	FUNC3(sched, child_pid, child_comm);
	return 0;
}