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
typedef  int /*<<< orphan*/  swp_entry_t ;
struct vm_area_struct {int /*<<< orphan*/  vm_page_prot; int /*<<< orphan*/  vm_mm; } ;
struct page {int dummy; } ;
struct mem_cgroup {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  anon_rss ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct page* FUNC4 (struct page*,struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,struct mem_cgroup*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,struct mem_cgroup**) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  swap_usage ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (struct page*) ; 

__attribute__((used)) static int FUNC21(struct vm_area_struct *vma, pmd_t *pmd,
		unsigned long addr, swp_entry_t entry, struct page *page)
{
	struct mem_cgroup *ptr = NULL;
	struct page *swapcache;
	spinlock_t *ptl;
	pte_t *pte;
	int ret = 1;

	swapcache = page;
	page = FUNC4(page, vma, addr);
	if (FUNC19(!page))
		return -ENOMEM;

	if (FUNC7(vma->vm_mm, page, GFP_KERNEL, &ptr)) {
		ret = -ENOMEM;
		goto out_nolock;
	}

	pte = FUNC12(vma->vm_mm, pmd, addr, &ptl);
	if (FUNC19(!FUNC13(*pte, FUNC18(entry)))) {
		if (ret > 0)
			FUNC5(ptr);
		ret = 0;
		goto out;
	}

	FUNC3(vma->vm_mm, anon_rss);
	FUNC1(vma->vm_mm, swap_usage);
	FUNC2(page);
	FUNC16(vma->vm_mm, addr, pte,
		   FUNC11(FUNC8(page, vma->vm_page_prot)));

	if (page == swapcache)
		FUNC9(page, vma, addr);
	else /* ksm created a completely new copy */
		FUNC10(page, vma, addr);

	FUNC6(page, ptr);
	FUNC17(entry);
	/*
	 * Move the page to the active list so it is not
	 * immediately swapped out again after swapon.
	 */
	FUNC0(page);
out:
	FUNC14(pte, ptl);
out_nolock:
	if (page != swapcache) {
		FUNC20(page);
		FUNC15(page);
	}
	return ret;
}