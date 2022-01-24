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
typedef  unsigned long long u64 ;
struct mem_cgroup {int memsw_is_minimum; int /*<<< orphan*/  memsw; int /*<<< orphan*/  res; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINTR ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MEM_CGROUP_RECLAIM_NOSWAP ; 
 int MEM_CGROUP_RECLAIM_RETRIES ; 
 int MEM_CGROUP_RECLAIM_SHRINK ; 
 int /*<<< orphan*/  RES_LIMIT ; 
 int /*<<< orphan*/  RES_USAGE ; 
 int /*<<< orphan*/  current ; 
 int FUNC0 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_cgroup*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long long FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned long long) ; 
 int /*<<< orphan*/  set_limit_mutex ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct mem_cgroup *memcg,
					unsigned long long val)
{
	int retry_count;
	u64 memlimit, memswlimit, oldusage, curusage;
	int children = FUNC0(memcg);
	int ret = -EBUSY;
	int enlarge = 0;

	/* see mem_cgroup_resize_res_limit */
 	retry_count = children * MEM_CGROUP_RECLAIM_RETRIES;
	oldusage = FUNC5(&memcg->memsw, RES_USAGE);
	while (retry_count) {
		if (FUNC7(current)) {
			ret = -EINTR;
			break;
		}
		/*
		 * Rather than hide all in some function, I do this in
		 * open coded manner. You see what this really does.
		 * We have to guarantee mem->res.limit < mem->memsw.limit.
		 */
		FUNC3(&set_limit_mutex);
		memlimit = FUNC5(&memcg->res, RES_LIMIT);
		if (memlimit > val) {
			ret = -EINVAL;
			FUNC4(&set_limit_mutex);
			break;
		}
		memswlimit = FUNC5(&memcg->memsw, RES_LIMIT);
		if (memswlimit < val)
			enlarge = 1;
		ret = FUNC6(&memcg->memsw, val);
		if (!ret) {
			if (memlimit == val)
				memcg->memsw_is_minimum = true;
			else
				memcg->memsw_is_minimum = false;
		}
		FUNC4(&set_limit_mutex);

		if (!ret)
			break;

		FUNC1(memcg, GFP_KERNEL,
				   MEM_CGROUP_RECLAIM_NOSWAP |
				   MEM_CGROUP_RECLAIM_SHRINK);
		curusage = FUNC5(&memcg->memsw, RES_USAGE);
		/* Usage is reduced ? */
		if (curusage >= oldusage)
			retry_count--;
		else
			oldusage = curusage;
	}
	if (!ret && enlarge)
		FUNC2(memcg);
	return ret;
}