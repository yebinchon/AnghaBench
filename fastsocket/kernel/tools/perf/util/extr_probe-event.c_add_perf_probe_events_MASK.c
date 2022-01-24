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
struct perf_probe_event {int /*<<< orphan*/  uprobes; } ;
struct __event_package {int ntevs; struct __event_package* tevs; struct perf_probe_event* pev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct perf_probe_event*,struct __event_package*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct __event_package*) ; 
 int FUNC2 (struct perf_probe_event*,struct __event_package**,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct __event_package*) ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 struct __event_package* FUNC6 (int) ; 

int FUNC7(struct perf_probe_event *pevs, int npevs,
			  int max_tevs, const char *target, bool force_add)
{
	int i, j, ret;
	struct __event_package *pkgs;

	ret = 0;
	pkgs = FUNC6(sizeof(struct __event_package) * npevs);

	if (pkgs == NULL)
		return -ENOMEM;

	if (!pevs->uprobes)
		/* Init vmlinux path */
		ret = FUNC5();
	else
		ret = FUNC4();

	if (ret < 0) {
		FUNC3(pkgs);
		return ret;
	}

	/* Loop 1: convert all events */
	for (i = 0; i < npevs; i++) {
		pkgs[i].pev = &pevs[i];
		/* Convert with or without debuginfo */
		ret  = FUNC2(pkgs[i].pev,
						     &pkgs[i].tevs,
						     max_tevs,
						     target);
		if (ret < 0)
			goto end;
		pkgs[i].ntevs = ret;
	}

	/* Loop 2: add all events */
	for (i = 0; i < npevs; i++) {
		ret = FUNC0(pkgs[i].pev, pkgs[i].tevs,
						pkgs[i].ntevs, force_add);
		if (ret < 0)
			break;
	}
end:
	/* Loop 3: cleanup and free trace events  */
	for (i = 0; i < npevs; i++) {
		for (j = 0; j < pkgs[i].ntevs; j++)
			FUNC1(&pkgs[i].tevs[j]);
		FUNC3(pkgs[i].tevs);
	}
	FUNC3(pkgs);

	return ret;
}