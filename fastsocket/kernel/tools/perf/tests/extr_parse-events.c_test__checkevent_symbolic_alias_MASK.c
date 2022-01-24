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
struct TYPE_2__ {scalar_t__ type; scalar_t__ config; } ;
struct perf_evsel {TYPE_1__ attr; } ;
struct perf_evlist {int nr_entries; } ;

/* Variables and functions */
 scalar_t__ PERF_COUNT_SW_PAGE_FAULTS ; 
 scalar_t__ PERF_TYPE_SOFTWARE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct perf_evsel* FUNC1 (struct perf_evlist*) ; 

__attribute__((used)) static int FUNC2(struct perf_evlist *evlist)
{
	struct perf_evsel *evsel = FUNC1(evlist);

	FUNC0("wrong number of entries", 1 == evlist->nr_entries);
	FUNC0("wrong type", PERF_TYPE_SOFTWARE == evsel->attr.type);
	FUNC0("wrong config",
			PERF_COUNT_SW_PAGE_FAULTS == evsel->attr.config);
	return 0;
}