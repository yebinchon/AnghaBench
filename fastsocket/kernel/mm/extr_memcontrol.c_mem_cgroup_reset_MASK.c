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
struct mem_cgroup {int /*<<< orphan*/  memsw; int /*<<< orphan*/  res; } ;
struct cgroup {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
#define  RES_FAILCNT 129 
#define  RES_MAX_USAGE 128 
 int _MEM ; 
 struct mem_cgroup* FUNC2 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct cgroup *cont, unsigned int event)
{
	struct mem_cgroup *mem;
	int type, name;

	mem = FUNC2(cont);
	type = FUNC1(event);
	name = FUNC0(event);
	switch (name) {
	case RES_MAX_USAGE:
		if (type == _MEM)
			FUNC4(&mem->res);
		else
			FUNC4(&mem->memsw);
		break;
	case RES_FAILCNT:
		if (type == _MEM)
			FUNC3(&mem->res);
		else
			FUNC3(&mem->memsw);
		break;
	}

	return 0;
}