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
struct mem_cgroup {int memsw_is_minimum; int /*<<< orphan*/  res; int /*<<< orphan*/  memsw; } ;

/* Variables and functions */
 int EINTR ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MEM_CGROUP_RECLAIM_RETRIES ; 
 int /*<<< orphan*/  MEM_CGROUP_RECLAIM_SHRINK ; 
 int /*<<< orphan*/  RES_LIMIT ; 
 int /*<<< orphan*/  RES_USAGE ; 
 int /*<<< orphan*/  current ; 
 int FUNC0 (struct mem_cgroup*) ; 
 int FUNC1 (struct mem_cgroup*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
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
	int progress;
	u64 memswlimit, memlimit;
	int ret = 0;
	int children = FUNC0(memcg);
	u64 curusage, oldusage;
	int enlarge;

	/*
	 * For keeping hierarchical_reclaim simple, how long we should retry
	 * is depends on callers. We set our retry-count to be function
	 * of # of children which we should visit in this loop.
	 */
	retry_count = MEM_CGROUP_RECLAIM_RETRIES * children;

	oldusage = FUNC5(&memcg->res, RES_USAGE);

	enlarge = 0;
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
		memswlimit = FUNC5(&memcg->memsw, RES_LIMIT);
		if (memswlimit < val) {
			ret = -EINVAL;
			FUNC4(&set_limit_mutex);
			break;
		}

		memlimit = FUNC5(&memcg->res, RES_LIMIT);
		if (memlimit < val)
			enlarge = 1;

		ret = FUNC6(&memcg->res, val);
		if (!ret) {
			if (memswlimit == val)
				memcg->memsw_is_minimum = true;
			else
				memcg->memsw_is_minimum = false;
		}
		FUNC4(&set_limit_mutex);

		if (!ret)
			break;

		progress = FUNC1(memcg, GFP_KERNEL,
					      MEM_CGROUP_RECLAIM_SHRINK);
		curusage = FUNC5(&memcg->res, RES_USAGE);
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