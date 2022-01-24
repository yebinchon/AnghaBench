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
struct symbol {unsigned long long start; } ;
struct perf_probe_point {char const* function; unsigned long long offset; } ;
struct perf_probe_event {char* event; void* group; struct perf_probe_point point; } ;
struct map {unsigned long long start; unsigned long long pgoff; int /*<<< orphan*/  dso; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int MAX_PROBE_ARGS ; 
 int /*<<< orphan*/  PERFPROBE_GROUP ; 
 int /*<<< orphan*/  available_func_filter ; 
 char const* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct map* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,unsigned long long,...) ; 
 int /*<<< orphan*/  filter_available_functions ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct map*) ; 
 struct symbol* FUNC6 (struct map*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct map*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 char* FUNC10 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC13 (char*,char*) ; 
 void* FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct perf_probe_event *pev, const char *exec)
{
	struct perf_probe_point *pp = &pev->point;
	struct symbol *sym;
	struct map *map = NULL;
	char *function = NULL, *name = NULL;
	int ret = -EINVAL;
	unsigned long long vaddr = 0;

	if (!pp->function) {
		FUNC9("No function specified for uprobes");
		goto out;
	}

	function = FUNC11(pp->function);
	if (!function) {
		FUNC9("Failed to allocate memory by strdup.\n");
		ret = -ENOMEM;
		goto out;
	}

	name = FUNC10(exec, NULL);
	if (!name) {
		FUNC9("Cannot find realpath for %s.\n", exec);
		goto out;
	}
	map = FUNC2(name);
	if (!map) {
		FUNC9("Cannot find appropriate DSO for %s.\n", exec);
		goto out;
	}
	available_func_filter = FUNC12(function, NULL);
	if (FUNC7(map, filter_available_functions)) {
		FUNC8("Failed to load map.\n");
		goto out;
	}

	sym = FUNC6(map, function, NULL);
	if (!sym) {
		FUNC9("Cannot find %s in DSO %s\n", function, exec);
		goto out;
	}

	if (map->start > sym->start)
		vaddr = map->start;
	vaddr += sym->start + pp->offset + map->pgoff;
	pp->offset = 0;

	if (!pev->event) {
		pev->event = function;
		function = NULL;
	}
	if (!pev->group) {
		char *ptr1, *ptr2, *exec_copy;

		pev->group = FUNC14(sizeof(char *) * 64);
		exec_copy = FUNC11(exec);
		if (!exec_copy) {
			ret = -ENOMEM;
			FUNC9("Failed to copy exec string.\n");
			goto out;
		}

		ptr1 = FUNC11(FUNC0(exec_copy));
		if (ptr1) {
			ptr2 = FUNC13(ptr1, "-._");
			if (ptr2)
				*ptr2 = '\0';
			FUNC3(pev->group, 64, "%s_%s", PERFPROBE_GROUP,
					ptr1);
			FUNC4(ptr1);
		}
		FUNC4(exec_copy);
	}
	FUNC4(pp->function);
	pp->function = FUNC14(sizeof(char *) * MAX_PROBE_ARGS);
	if (!pp->function) {
		ret = -ENOMEM;
		FUNC9("Failed to allocate memory by zalloc.\n");
		goto out;
	}
	FUNC3(pp->function, MAX_PROBE_ARGS, "0x%llx", vaddr);
	ret = 0;

out:
	if (map) {
		FUNC1(map->dso);
		FUNC5(map);
	}
	if (function)
		FUNC4(function);
	if (name)
		FUNC4(name);
	return ret;
}