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
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct hugepage_subpool {int dummy; } ;
struct hstate {int dummy; } ;

/* Variables and functions */
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int /*<<< orphan*/  VM_FAULT_OOM ; 
 int /*<<< orphan*/  VM_FAULT_SIGBUS ; 
 struct page* FUNC1 (struct hstate*,int /*<<< orphan*/ ) ; 
 struct page* FUNC2 (struct hstate*,struct vm_area_struct*,unsigned long,int) ; 
 struct hstate* FUNC3 (struct vm_area_struct*) ; 
 scalar_t__ FUNC4 (struct hugepage_subpool*,long) ; 
 int /*<<< orphan*/  FUNC5 (struct hugepage_subpool*,long) ; 
 int /*<<< orphan*/  hugetlb_lock ; 
 int /*<<< orphan*/  FUNC6 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct hugepage_subpool* FUNC9 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct hstate*,struct vm_area_struct*,unsigned long) ; 
 long FUNC11 (struct hstate*,struct vm_area_struct*,unsigned long) ; 

__attribute__((used)) static struct page *FUNC12(struct vm_area_struct *vma,
				    unsigned long addr, int avoid_reserve)
{
	struct hugepage_subpool *spool = FUNC9(vma);
	struct hstate *h = FUNC3(vma);
	struct page *page;
	long chg;

	/*
	 * Processes that did not create the mapping will have no
	 * reserves and will not have accounted against subpool
	 * limit. Check that the subpool limit can be made before
	 * satisfying the allocation MAP_NORESERVE mappings may also
	 * need pages and subpool limit allocated allocated if no reserve
	 * mapping overlaps.
	 */
	chg = FUNC11(h, vma, addr);
	if (chg < 0)
		return FUNC0(-VM_FAULT_OOM);
	if (chg)
		if (FUNC4(spool, chg))
			return FUNC0(-VM_FAULT_SIGBUS);

	FUNC7(&hugetlb_lock);
	page = FUNC2(h, vma, addr, avoid_reserve);
	FUNC8(&hugetlb_lock);

	if (!page) {
		page = FUNC1(h, NUMA_NO_NODE);
		if (!page) {
			FUNC5(spool, chg);
			return FUNC0(-VM_FAULT_SIGBUS);
		}
	}

	FUNC6(page, (unsigned long)spool);

	FUNC10(h, vma, addr);

	return page;
}