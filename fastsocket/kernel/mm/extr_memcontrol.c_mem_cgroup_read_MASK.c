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
typedef  int /*<<< orphan*/  u64 ;
struct mem_cgroup {int /*<<< orphan*/  memsw; int /*<<< orphan*/  res; } ;
struct cgroup {int dummy; } ;
struct cftype {int /*<<< orphan*/  private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int RES_USAGE ; 
#define  _MEM 129 
#define  _MEMSWAP 128 
 struct mem_cgroup* FUNC3 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC4 (struct mem_cgroup*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static u64 FUNC6(struct cgroup *cont, struct cftype *cft)
{
	struct mem_cgroup *mem = FUNC3(cont);
	u64 val;
	int type, name;

	type = FUNC2(cft->private);
	name = FUNC1(cft->private);
	switch (type) {
	case _MEM:
		if (name == RES_USAGE)
			val = FUNC4(mem, false);
		else
			val = FUNC5(&mem->res, name);
		break;
	case _MEMSWAP:
		if (name == RES_USAGE)
			val = FUNC4(mem, true);
		else
			val = FUNC5(&mem->memsw, name);
		break;
	default:
		FUNC0();
		break;
	}
	return val;
}