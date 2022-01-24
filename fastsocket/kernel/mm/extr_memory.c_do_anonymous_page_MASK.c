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
struct vm_area_struct {int vm_flags; int /*<<< orphan*/  vm_page_prot; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 unsigned int FAULT_FLAG_WRITE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int VM_FAULT_OOM ; 
 int VM_FAULT_SIGBUS ; 
 int VM_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  anon_rss ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*) ; 
 scalar_t__ FUNC3 (struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct page*,struct mm_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct mm_struct*,unsigned long) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC23(struct mm_struct *mm, struct vm_area_struct *vma,
		unsigned long address, pte_t *page_table, pmd_t *pmd,
		unsigned int flags)
{
	struct page *page;
	spinlock_t *ptl;
	pte_t entry;

	FUNC17(page_table);

	/* Check if we need to add a guard page to the stack */
	if (FUNC3(vma, address) < 0)
		return VM_FAULT_SIGBUS;

	/* Use the zero-page for reads */
	if (!(flags & FAULT_FLAG_WRITE)) {
		entry = FUNC13(FUNC11(FUNC8(address),
						vma->vm_page_prot));
		page_table = FUNC16(mm, pmd, address, &ptl);
		if (!FUNC15(*page_table))
			goto unlock;
		goto setpte;
	}

	/* Allocate our own private page. */
	if (FUNC21(FUNC2(vma)))
		goto oom;
	page = FUNC1(vma, address);
	if (!page)
		goto oom;
	FUNC0(page);

	FUNC20(mm, address);
	if (FUNC5(page, mm, GFP_KERNEL))
		goto oom_free_page;

	entry = FUNC7(page, vma->vm_page_prot);
	if (vma->vm_flags & VM_WRITE)
		entry = FUNC14(FUNC12(entry));

	page_table = FUNC16(mm, pmd, address, &ptl);
	if (!FUNC15(*page_table))
		goto release;

	FUNC4(mm, anon_rss);
	FUNC9(page, vma, address);
setpte:
	FUNC19(mm, address, page_table, entry);

	/* No need to invalidate - it was non-present before */
	FUNC22(vma, address, entry);
unlock:
	FUNC18(page_table, ptl);
	return 0;
release:
	FUNC6(page);
	FUNC10(page);
	goto unlock;
oom_free_page:
	FUNC10(page);
oom:
	return VM_FAULT_OOM;
}