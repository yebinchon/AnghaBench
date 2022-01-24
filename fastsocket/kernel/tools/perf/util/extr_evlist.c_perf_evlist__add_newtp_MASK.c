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
struct TYPE_2__ {void* func; } ;
struct perf_evsel {TYPE_1__ handler; } ;
struct perf_evlist {int /*<<< orphan*/  nr_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_evlist*,struct perf_evsel*) ; 
 struct perf_evsel* FUNC1 (char const*,char const*,int /*<<< orphan*/ ) ; 

int FUNC2(struct perf_evlist *evlist,
			   const char *sys, const char *name, void *handler)
{
	struct perf_evsel *evsel;

	evsel = FUNC1(sys, name, evlist->nr_entries);
	if (evsel == NULL)
		return -1;

	evsel->handler.func = handler;
	FUNC0(evlist, evsel);
	return 0;
}