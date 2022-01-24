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
struct mem_cgroup {int /*<<< orphan*/  css; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int FUNC1 (struct mm_struct*,int /*<<< orphan*/ ,struct mem_cgroup**,int,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  do_swap_account ; 
 struct mm_struct init_mm ; 
 scalar_t__ FUNC3 () ; 
 struct mem_cgroup* FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct mm_struct *mm,
				 struct page *page,
				 gfp_t mask, struct mem_cgroup **ptr)
{
	struct mem_cgroup *mem;
	int ret;

	if (FUNC3())
		return 0;

	if (!do_swap_account)
		goto charge_cur_mm;
	/*
	 * A racing thread's fault, or swapoff, may have already updated
	 * the pte, and even removed page from swap cache: in those cases
	 * do_swap_page()'s pte_same() test will fail; but there's also a
	 * KSM case which does need to charge the page.
	 */
	if (!FUNC0(page))
		goto charge_cur_mm;
	mem = FUNC4(page);
	if (!mem)
		goto charge_cur_mm;
	*ptr = mem;
	ret = FUNC1(NULL, mask, ptr, true, page, PAGE_SIZE);
	FUNC2(&mem->css);
	return ret;
charge_cur_mm:
	if (FUNC5(!mm))
		mm = &init_mm;
	return FUNC1(mm, mask, ptr, true, page, PAGE_SIZE);
}