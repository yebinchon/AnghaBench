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
struct perf_target {int /*<<< orphan*/  cpu_list; int /*<<< orphan*/  uses_mmap; int /*<<< orphan*/  uid; int /*<<< orphan*/  tid; int /*<<< orphan*/  pid; } ;
struct perf_evlist {int /*<<< orphan*/ * threads; int /*<<< orphan*/ * cpus; } ;

/* Variables and functions */
 void* FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_target*) ; 
 scalar_t__ FUNC3 (struct perf_target*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct perf_evlist *evlist,
			     struct perf_target *target)
{
	evlist->threads = FUNC5(target->pid, target->tid,
					      target->uid);

	if (evlist->threads == NULL)
		return -1;

	if (FUNC3(target))
		evlist->cpus = FUNC0();
	else if (!FUNC2(target) && !target->uses_mmap)
		evlist->cpus = FUNC0();
	else
		evlist->cpus = FUNC1(target->cpu_list);

	if (evlist->cpus == NULL)
		goto out_delete_threads;

	return 0;

out_delete_threads:
	FUNC4(evlist->threads);
	return -1;
}