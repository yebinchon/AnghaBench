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
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
struct mem_cgroup {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_CGROUP_CHARGE_TYPE_CACHE ; 
 int /*<<< orphan*/  MEM_CGROUP_CHARGE_TYPE_SHMEM ; 
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,struct mem_cgroup*,int /*<<< orphan*/ ) ; 
 struct mm_struct init_mm ; 
 int FUNC3 (struct page*,struct mm_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mem_cgroup*) ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (struct mm_struct*,struct page*,int /*<<< orphan*/ ,struct mem_cgroup**) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct page *page, struct mm_struct *mm,
				gfp_t gfp_mask)
{
	struct mem_cgroup *mem = NULL;
	int ret;

	if (FUNC4())
		return 0;
	if (FUNC0(page))
		return 0;

	if (FUNC7(!mm))
		mm = &init_mm;

	if (FUNC6(page))
		return FUNC3(page, mm, gfp_mask,
				MEM_CGROUP_CHARGE_TYPE_CACHE, NULL);

	/* shmem */
	if (FUNC1(page)) {
		ret = FUNC5(mm, page, gfp_mask, &mem);
		if (!ret)
			FUNC2(page, mem,
					MEM_CGROUP_CHARGE_TYPE_SHMEM);
	} else
		ret = FUNC3(page, mm, gfp_mask,
					MEM_CGROUP_CHARGE_TYPE_SHMEM, mem);

	return ret;
}