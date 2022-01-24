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
struct thread_map {int dummy; } ;
struct TYPE_2__ {int pid; } ;
struct perf_evlist {TYPE_1__ workload; int /*<<< orphan*/  entries; int /*<<< orphan*/ * heads; } ;
struct cpu_map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int PERF_EVLIST__HLIST_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct perf_evlist*,struct cpu_map*,struct thread_map*) ; 

void FUNC3(struct perf_evlist *evlist, struct cpu_map *cpus,
		       struct thread_map *threads)
{
	int i;

	for (i = 0; i < PERF_EVLIST__HLIST_SIZE; ++i)
		FUNC0(&evlist->heads[i]);
	FUNC1(&evlist->entries);
	FUNC2(evlist, cpus, threads);
	evlist->workload.pid = -1;
}