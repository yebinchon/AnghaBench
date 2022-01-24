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
struct perf_evsel {int /*<<< orphan*/  node; } ;
struct perf_evlist {int /*<<< orphan*/  nr_entries; int /*<<< orphan*/  entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC1(struct perf_evlist *evlist, struct perf_evsel *entry)
{
	FUNC0(&entry->node, &evlist->entries);
	++evlist->nr_entries;
}