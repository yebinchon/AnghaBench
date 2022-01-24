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
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  DEFINE_MUTEX ;

/* Variables and functions */
 unsigned int FAULT_FLAG_WRITE ; 
 int VM_FAULT_HWPOISON_LARGE ; 
 int VM_FAULT_OOM ; 
 int FUNC0 (struct hstate*) ; 
 int VM_MAYSHARE ; 
 struct hstate* FUNC1 (struct vm_area_struct*) ; 
 int hstates ; 
 int /*<<< orphan*/  FUNC2 (struct hstate*) ; 
 int /*<<< orphan*/ * FUNC3 (struct mm_struct*,unsigned long,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC8 (struct mm_struct*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct page*) ; 
 int FUNC9 (struct mm_struct*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,unsigned int) ; 
 struct page* FUNC10 (struct hstate*,struct vm_area_struct*,unsigned long) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 struct page* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct page*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (struct page*) ; 
 int /*<<< orphan*/  FUNC27 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (struct hstate*,struct vm_area_struct*,unsigned long) ; 

int FUNC29(struct mm_struct *mm, struct vm_area_struct *vma,
			unsigned long address, unsigned int flags)
{
	pte_t *ptep;
	pte_t entry;
	int ret;
	struct page *page = NULL;
	struct page *pagecache_page = NULL;
	static DEFINE_MUTEX(hugetlb_instantiation_mutex);
	struct hstate *h = FUNC1(vma);
	bool shared = false;

	ptep = FUNC5(mm, address);
	if (ptep) {
		entry = FUNC6(ptep);
		if (FUNC25(FUNC12(entry))) {
			FUNC14(mm, (pmd_t *)ptep, address);
			return 0;
		} else if (FUNC25(FUNC11(entry)))
			return VM_FAULT_HWPOISON_LARGE | 
			       FUNC0(h - hstates);
	}

	ptep = FUNC3(mm, address, FUNC2(h), &shared);
	if (!ptep)
		return VM_FAULT_OOM;

	/* If the pagetable is shared, no other work is necessary */
	if (shared)
		return 0;

	/*
	 * Serialize hugepage allocation and instantiation, so that we don't
	 * get spurious allocation failures if two CPUs race to instantiate
	 * the same page in the page cache.
	 */
	FUNC15(&hugetlb_instantiation_mutex);
	entry = FUNC6(ptep);
	if (FUNC4(entry)) {
		ret = FUNC9(mm, vma, address, ptep, flags);
		goto out_mutex;
	}

	ret = 0;

	/*
	 * If we are going to COW the mapping later, we examine the pending
	 * reservations for this page now. This will ensure that any
	 * allocations necessary to record that reservation occur outside the
	 * spinlock. For private mappings, we also lookup the pagecache
	 * page now as it is used to determine if a reservation has been
	 * consumed.
	 */
	if ((flags & FAULT_FLAG_WRITE) && !FUNC21(entry)) {
		if (FUNC28(h, vma, address) < 0) {
			ret = VM_FAULT_OOM;
			goto out_mutex;
		}

		if (!(vma->vm_flags & VM_MAYSHARE))
			pagecache_page = FUNC10(h,
								vma, address);
	}

	/*
	 * hugetlb_cow() requires page locks of pte_page(entry) and
	 * pagecache_page, so here we need take the former one
	 * when page != pagecache_page or !pagecache_page.
	 * Note that locking order is always pagecache_page -> page,
	 * so no worry about deadlock.
	 */
	page = FUNC19(entry);
	if (page != pagecache_page)
		FUNC13(page);

	FUNC23(&mm->page_table_lock);
	/* Check for a racing update before calling hugetlb_cow */
	if (FUNC25(!FUNC20(entry, FUNC6(ptep))))
		goto out_page_table_lock;


	if (flags & FAULT_FLAG_WRITE) {
		if (!FUNC21(entry)) {
			ret = FUNC8(mm, vma, address, ptep, entry,
							pagecache_page);
			goto out_page_table_lock;
		}
		entry = FUNC17(entry);
	}
	entry = FUNC18(entry);
	if (FUNC7(vma, address, ptep, entry,
						flags & FAULT_FLAG_WRITE))
		FUNC27(vma, address, entry);

out_page_table_lock:
	FUNC24(&mm->page_table_lock);

	if (pagecache_page) {
		FUNC26(pagecache_page);
		FUNC22(pagecache_page);
	}
	if (page != pagecache_page)
		FUNC26(page);

out_mutex:
	FUNC16(&hugetlb_instantiation_mutex);

	return ret;
}