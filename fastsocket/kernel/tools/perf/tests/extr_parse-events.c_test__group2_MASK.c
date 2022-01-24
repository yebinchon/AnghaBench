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
struct TYPE_2__ {scalar_t__ type; scalar_t__ config; int exclude_user; int exclude_kernel; int exclude_hv; int /*<<< orphan*/  precise_ip; int /*<<< orphan*/  exclude_host; int /*<<< orphan*/  exclude_guest; } ;
struct perf_evsel {TYPE_1__ attr; struct perf_evsel* leader; } ;
struct perf_evlist {int nr_entries; } ;

/* Variables and functions */
 scalar_t__ PERF_COUNT_HW_CACHE_REFERENCES ; 
 scalar_t__ PERF_COUNT_HW_CPU_CYCLES ; 
 scalar_t__ PERF_COUNT_SW_PAGE_FAULTS ; 
 scalar_t__ PERF_TYPE_HARDWARE ; 
 scalar_t__ PERF_TYPE_SOFTWARE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct perf_evsel* FUNC1 (struct perf_evlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_evsel*) ; 
 struct perf_evsel* FUNC3 (struct perf_evsel*) ; 

__attribute__((used)) static int FUNC4(struct perf_evlist *evlist)
{
	struct perf_evsel *evsel, *leader;

	FUNC0("wrong number of entries", 3 == evlist->nr_entries);

	/* faults + :ku modifier */
	evsel = leader = FUNC1(evlist);
	FUNC0("wrong type", PERF_TYPE_SOFTWARE == evsel->attr.type);
	FUNC0("wrong config",
			PERF_COUNT_SW_PAGE_FAULTS == evsel->attr.config);
	FUNC0("wrong exclude_user", !evsel->attr.exclude_user);
	FUNC0("wrong exclude_kernel", !evsel->attr.exclude_kernel);
	FUNC0("wrong exclude_hv", evsel->attr.exclude_hv);
	FUNC0("wrong exclude guest", !evsel->attr.exclude_guest);
	FUNC0("wrong exclude host", !evsel->attr.exclude_host);
	FUNC0("wrong precise_ip", !evsel->attr.precise_ip);
	FUNC0("wrong leader", !FUNC2(evsel));

	/* cache-references + :u modifier */
	evsel = FUNC3(evsel);
	FUNC0("wrong type", PERF_TYPE_HARDWARE == evsel->attr.type);
	FUNC0("wrong config",
			PERF_COUNT_HW_CACHE_REFERENCES == evsel->attr.config);
	FUNC0("wrong exclude_user", !evsel->attr.exclude_user);
	FUNC0("wrong exclude_kernel", evsel->attr.exclude_kernel);
	FUNC0("wrong exclude_hv", evsel->attr.exclude_hv);
	FUNC0("wrong exclude guest", !evsel->attr.exclude_guest);
	FUNC0("wrong exclude host", !evsel->attr.exclude_host);
	FUNC0("wrong precise_ip", !evsel->attr.precise_ip);
	FUNC0("wrong leader", evsel->leader == leader);

	/* cycles:k */
	evsel = FUNC3(evsel);
	FUNC0("wrong type", PERF_TYPE_HARDWARE == evsel->attr.type);
	FUNC0("wrong config",
			PERF_COUNT_HW_CPU_CYCLES == evsel->attr.config);
	FUNC0("wrong exclude_user", evsel->attr.exclude_user);
	FUNC0("wrong exclude_kernel", !evsel->attr.exclude_kernel);
	FUNC0("wrong exclude_hv", evsel->attr.exclude_hv);
	FUNC0("wrong exclude guest", !evsel->attr.exclude_guest);
	FUNC0("wrong exclude host", !evsel->attr.exclude_host);
	FUNC0("wrong precise_ip", !evsel->attr.precise_ip);
	FUNC0("wrong leader", !FUNC2(evsel));

	return 0;
}