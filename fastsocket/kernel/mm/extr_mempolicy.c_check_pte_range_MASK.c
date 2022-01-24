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
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  nodemask_t ;

/* Variables and functions */
 unsigned long MPOL_MF_INVERT ; 
 unsigned long MPOL_MF_MOVE ; 
 unsigned long MPOL_MF_MOVE_ALL ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,void*,unsigned long) ; 
 int FUNC2 (int,int /*<<< orphan*/  const) ; 
 int FUNC3 (struct page*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct page* FUNC7 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct vm_area_struct *vma, pmd_t *pmd,
		unsigned long addr, unsigned long end,
		const nodemask_t *nodes, unsigned long flags,
		void *private)
{
	pte_t *orig_pte;
	pte_t *pte;
	spinlock_t *ptl;

	orig_pte = pte = FUNC4(vma->vm_mm, pmd, addr, &ptl);
	do {
		struct page *page;
		int nid;

		if (!FUNC5(*pte))
			continue;
		page = FUNC7(vma, addr, *pte);
		if (!page)
			continue;
		/*
		 * vm_normal_page() filters out zero pages, but there might
		 * still be PageReserved pages to skip, perhaps in a VDSO.
		 */
		if (FUNC0(page))
			continue;
		nid = FUNC3(page);
		if (FUNC2(nid, *nodes) == !!(flags & MPOL_MF_INVERT))
			continue;

		if (flags & (MPOL_MF_MOVE | MPOL_MF_MOVE_ALL))
			FUNC1(page, private, flags);
		else
			break;
	} while (pte++, addr += PAGE_SIZE, addr != end);
	FUNC6(orig_pte, ptl);
	return addr != end;
}