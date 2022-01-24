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
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 unsigned int PERF_COUNT_HW_CACHE_MAX ; 
 unsigned int PERF_COUNT_HW_CACHE_OP_MAX ; 
 unsigned int PERF_COUNT_HW_CACHE_RESULT_MAX ; 
 size_t PERF_TYPE_HW_CACHE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,unsigned int,char*,int) ; 
 char** event_type_descriptors ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

int FUNC4(const char *event_glob, bool name_only)
{
	unsigned int type, op, i, printed = 0;
	char name[64];

	for (type = 0; type < PERF_COUNT_HW_CACHE_MAX; type++) {
		for (op = 0; op < PERF_COUNT_HW_CACHE_OP_MAX; op++) {
			/* skip invalid cache type */
			if (!FUNC1(type, op))
				continue;

			for (i = 0; i < PERF_COUNT_HW_CACHE_RESULT_MAX; i++) {
				FUNC0(type, op, i,
									name, sizeof(name));
				if (event_glob != NULL && !FUNC3(name, event_glob))
					continue;

				if (name_only)
					FUNC2("%s ", name);
				else
					FUNC2("  %-50s [%s]\n", name,
					       event_type_descriptors[PERF_TYPE_HW_CACHE]);
				++printed;
			}
		}
	}

	return printed;
}