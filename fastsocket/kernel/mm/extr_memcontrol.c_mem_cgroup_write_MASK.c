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
struct mem_cgroup {int /*<<< orphan*/  res; } ;
struct cgroup {int dummy; } ;
struct cftype {int /*<<< orphan*/  private; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  RES_LIMIT 129 
#define  RES_SOFT_LIMIT 128 
 int _MEM ; 
 struct mem_cgroup* FUNC2 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_cgroup*) ; 
 int FUNC4 (struct mem_cgroup*,unsigned long long) ; 
 int FUNC5 (struct mem_cgroup*,unsigned long long) ; 
 int FUNC6 (char const*,unsigned long long*) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned long long) ; 

__attribute__((used)) static int FUNC8(struct cgroup *cont, struct cftype *cft,
			    const char *buffer)
{
	struct mem_cgroup *memcg = FUNC2(cont);
	int type, name;
	unsigned long long val;
	int ret;

	type = FUNC1(cft->private);
	name = FUNC0(cft->private);
	switch (name) {
	case RES_LIMIT:
		if (FUNC3(memcg)) { /* Can't set limit on root */
			ret = -EINVAL;
			break;
		}
		/* This function does all necessary parse...reuse it */
		ret = FUNC6(buffer, &val);
		if (ret)
			break;
		if (type == _MEM)
			ret = FUNC4(memcg, val);
		else
			ret = FUNC5(memcg, val);
		break;
	case RES_SOFT_LIMIT:
		ret = FUNC6(buffer, &val);
		if (ret)
			break;
		/*
		 * For memsw, soft limits are hard to implement in terms
		 * of semantics, for now, we support soft limits for
		 * control without swap
		 */
		if (type == _MEM)
			ret = FUNC7(&memcg->res, val);
		else
			ret = -EINVAL;
		break;
	default:
		ret = -EINVAL; /* should be BUG() ? */
		break;
	}
	return ret;
}