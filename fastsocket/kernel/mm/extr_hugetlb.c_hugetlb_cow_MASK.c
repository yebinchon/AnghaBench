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
struct vm_area_struct {int vm_flags; } ;
struct page {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  page_table_lock; } ;
struct hstate {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  HPAGE_RESV_OWNER ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int VM_FAULT_OOM ; 
 int VM_MAYSHARE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 struct page* FUNC6 (struct vm_area_struct*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC7 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,struct page*,unsigned long,struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 struct hstate* FUNC9 (struct vm_area_struct*) ; 
 unsigned long FUNC10 (struct hstate*) ; 
 scalar_t__ FUNC11 (struct hstate*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct page*,struct vm_area_struct*,unsigned long) ; 
 scalar_t__ FUNC17 (struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct vm_area_struct*,struct page*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct mm_struct*,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (struct mm_struct*,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (struct page*) ; 
 int /*<<< orphan*/  FUNC23 (struct page*) ; 
 int FUNC24 (struct page*) ; 
 int FUNC25 (struct page*) ; 
 int /*<<< orphan*/  FUNC26 (struct page*,struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC27 (struct page*) ; 
 int /*<<< orphan*/  FUNC28 (struct hstate*) ; 
 struct page* FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC35 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC36 (struct mm_struct*,struct vm_area_struct*,struct page*,unsigned long) ; 

__attribute__((used)) static int FUNC37(struct mm_struct *mm, struct vm_area_struct *vma,
			unsigned long address, pte_t *ptep, pte_t pte,
			struct page *pagecache_page)
{
	struct hstate *h = FUNC9(vma);
	struct page *old_page, *new_page;
	int avoidcopy;
	int outside_reserve = 0;

	old_page = FUNC29(pte);

retry_avoidcopy:
	/* If no-one else is actually using this page, avoid the copy
	 * and just make the page writable */
	avoidcopy = (FUNC25(old_page) == 1);
	if (avoidcopy) {
		if (FUNC3(old_page))
			FUNC26(old_page, vma, address);
		FUNC32(vma, address, ptep);
		return 0;
	}

	/*
	 * If the process that created a MAP_PRIVATE mapping is about to
	 * perform a COW due to a shared page count, attempt to satisfy
	 * the allocation without using the existing reserves. The pagecache
	 * page is used to determine if the reserve at this address was
	 * consumed or not. If reserves were used, a partial faulted mapping
	 * at the time of fork() could consume its reserves on COW instead
	 * of the full address range.
	 */
	if (!(vma->vm_flags & VM_MAYSHARE) &&
			FUNC17(vma, HPAGE_RESV_OWNER) &&
			old_page != pagecache_page)
		outside_reserve = 1;

	FUNC22(old_page);

	/* Drop page_table_lock as buddy allocator may be called */
	FUNC34(&mm->page_table_lock);
	new_page = FUNC6(vma, address, outside_reserve);

	if (FUNC1(new_page)) {
		FUNC23(old_page);

		/*
		 * If a process owning a MAP_PRIVATE mapping fails to COW,
		 * it is due to references held by a child and an insufficient
		 * huge page pool. To guarantee the original mappers
		 * reliability, unmap the page from child processes. The child
		 * may get SIGKILLed if it later faults.
		 */
		if (outside_reserve) {
			FUNC0(FUNC12(pte));
			if (FUNC36(mm, vma, old_page, address)) {
				FUNC0(FUNC24(old_page) != 1);
				FUNC0(FUNC12(pte));
				FUNC33(&mm->page_table_lock);
				goto retry_avoidcopy;
			}
			FUNC4(1);
		}

		/* Caller expects lock to be held */
		FUNC33(&mm->page_table_lock);
		return -FUNC2(new_page);
	}

	/*
	 * When the original hugepage is shared one, it does not have
	 * anon_vma prepared.
	 */
	if (FUNC35(FUNC7(vma))) {
		/* Caller expects lock to be held */
		FUNC33(&mm->page_table_lock);
		return VM_FAULT_OOM;
	}

	FUNC8(new_page, old_page, address, vma,
			    FUNC28(h));
	FUNC5(new_page);

	/*
	 * Retake the page_table_lock to check for racing updates
	 * before the page tables are altered
	 */
	FUNC33(&mm->page_table_lock);
	ptep = FUNC13(mm, address & FUNC10(h));
	if (FUNC18(FUNC30(FUNC15(ptep), pte))) {
		/* Break COW */
		FUNC21(mm,
			address & FUNC10(h),
			(address & FUNC10(h)) + FUNC11(h));
		FUNC14(vma, address, ptep);
		FUNC31(mm, address, ptep,
				FUNC19(vma, new_page, 1));
		FUNC27(old_page);
		FUNC16(new_page, vma, address);
		/* Make the old page be freed below */
		new_page = old_page;
		FUNC20(mm,
			address & FUNC10(h),
			(address & FUNC10(h)) + FUNC11(h));
	}
	FUNC23(new_page);
	FUNC23(old_page);
	return 0;
}