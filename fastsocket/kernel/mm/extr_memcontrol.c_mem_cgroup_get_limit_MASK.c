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
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  RES_LIMIT ; 
 scalar_t__ FUNC0 (struct mem_cgroup*) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int total_swap_pages ; 

u64 FUNC3(struct mem_cgroup *memcg)
{
	u64 limit;

	limit = FUNC2(&memcg->res, RES_LIMIT);

	/*
	 * Do not consider swap space if we cannot swap due to swappiness
	 */
	if (FUNC0(memcg)) {
		u64 memsw;

		limit += total_swap_pages << PAGE_SHIFT;
		memsw = FUNC2(&memcg->memsw, RES_LIMIT);

		/*
		 * If memsw is finite and limits the amount of swap space
		 * available to this memcg, return that limit.
		 */
		limit = FUNC1(limit, memsw);
	}

	return limit;
}