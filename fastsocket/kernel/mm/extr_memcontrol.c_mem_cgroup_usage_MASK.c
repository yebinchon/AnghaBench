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
typedef  int u64 ;
struct mem_cgroup {int /*<<< orphan*/  memsw; int /*<<< orphan*/  res; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_CGROUP_STAT_CACHE ; 
 int /*<<< orphan*/  MEM_CGROUP_STAT_RSS ; 
 int /*<<< orphan*/  MEM_CGROUP_STAT_SWAPOUT ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  RES_USAGE ; 
 int FUNC0 (struct mem_cgroup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_cgroup*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u64 FUNC3(struct mem_cgroup *mem, bool swap)
{
	u64 val;

	if (!FUNC1(mem)) {
		if (!swap)
			return FUNC2(&mem->res, RES_USAGE);
		else
			return FUNC2(&mem->memsw, RES_USAGE);
	}

	val = FUNC0(mem, MEM_CGROUP_STAT_CACHE);
	val += FUNC0(mem, MEM_CGROUP_STAT_RSS);

	if (swap)
		val += FUNC0(mem,
				MEM_CGROUP_STAT_SWAPOUT);

	return val << PAGE_SHIFT;
}