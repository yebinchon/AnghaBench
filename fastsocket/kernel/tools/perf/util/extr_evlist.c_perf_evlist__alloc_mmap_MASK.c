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
struct perf_mmap {int dummy; } ;
struct perf_evlist {int nr_mmaps; int /*<<< orphan*/ * mmap; TYPE_1__* threads; int /*<<< orphan*/  cpus; } ;
struct TYPE_2__ {int nr; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct perf_evlist *evlist)
{
	evlist->nr_mmaps = FUNC1(evlist->cpus);
	if (FUNC0(evlist->cpus))
		evlist->nr_mmaps = evlist->threads->nr;
	evlist->mmap = FUNC2(evlist->nr_mmaps * sizeof(struct perf_mmap));
	return evlist->mmap != NULL ? 0 : -ENOMEM;
}