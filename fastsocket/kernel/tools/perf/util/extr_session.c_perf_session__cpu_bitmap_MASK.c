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
struct perf_session {int dummy; } ;
struct TYPE_2__ {int sample_type; } ;
struct perf_evsel {TYPE_1__ attr; } ;
struct cpu_map {int nr; int* map; } ;

/* Variables and functions */
 int MAX_NR_CPUS ; 
 int PERF_SAMPLE_CPU ; 
 int PERF_TYPE_MAX ; 
 struct cpu_map* FUNC0 (char const*) ; 
 struct perf_evsel* FUNC1 (struct perf_session*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long*) ; 

int FUNC4(struct perf_session *session,
			     const char *cpu_list, unsigned long *cpu_bitmap)
{
	int i;
	struct cpu_map *map;

	for (i = 0; i < PERF_TYPE_MAX; ++i) {
		struct perf_evsel *evsel;

		evsel = FUNC1(session, i);
		if (!evsel)
			continue;

		if (!(evsel->attr.sample_type & PERF_SAMPLE_CPU)) {
			FUNC2("File does not contain CPU events. "
			       "Remove -c option to proceed.\n");
			return -1;
		}
	}

	map = FUNC0(cpu_list);
	if (map == NULL) {
		FUNC2("Invalid cpu_list\n");
		return -1;
	}

	for (i = 0; i < map->nr; i++) {
		int cpu = map->map[i];

		if (cpu >= MAX_NR_CPUS) {
			FUNC2("Requested CPU %d too large. "
			       "Consider raising MAX_NR_CPUS\n", cpu);
			return -1;
		}

		FUNC3(cpu, cpu_bitmap);
	}

	return 0;
}