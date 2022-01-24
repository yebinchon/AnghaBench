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
struct perf_evsel {int /*<<< orphan*/  name; } ;
struct perf_evlist {int dummy; } ;
struct perf_event_attr {int /*<<< orphan*/  config; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PERF_COUNT_HW_CPU_CYCLES ; 
 int /*<<< orphan*/  PERF_TYPE_HARDWARE ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event_attr*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_evlist*,struct perf_evsel*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_evsel*) ; 
 struct perf_evsel* FUNC3 (struct perf_event_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct perf_evlist *evlist)
{
	struct perf_event_attr attr = {
		.type = PERF_TYPE_HARDWARE,
		.config = PERF_COUNT_HW_CPU_CYCLES,
	};
	struct perf_evsel *evsel;

	FUNC0(&attr);

	evsel = FUNC3(&attr, 0);
	if (evsel == NULL)
		goto error;

	/* use strdup() because free(evsel) assumes name is allocated */
	evsel->name = FUNC4("cycles");
	if (!evsel->name)
		goto error_free;

	FUNC1(evlist, evsel);
	return 0;
error_free:
	FUNC2(evsel);
error:
	return -ENOMEM;
}