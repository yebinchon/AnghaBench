#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ val; } ;
typedef  TYPE_1__ swp_entry_t ;
struct vm_area_struct {int vm_flags; int /*<<< orphan*/  vm_page_prot; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
struct mem_cgroup {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  DELAYACCT_PF_SWAPIN ; 
 unsigned int FAULT_FLAG_WRITE ; 
 int /*<<< orphan*/  GFP_HIGHUSER_MOVABLE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PGMAJFAULT ; 
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int VM_FAULT_ERROR ; 
 int VM_FAULT_HWPOISON ; 
 int VM_FAULT_MAJOR ; 
 int VM_FAULT_OOM ; 
 int VM_FAULT_RETRY ; 
 int VM_FAULT_SIGBUS ; 
 int VM_LOCKED ; 
 int /*<<< orphan*/  anon_rss ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,struct vm_area_struct*,unsigned long,int) ; 
 int FUNC9 (struct mm_struct*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct vm_area_struct*,struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC12 (struct mm_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_1__) ; 
 scalar_t__ FUNC14 (TYPE_1__) ; 
 struct page* FUNC15 (struct page*,struct vm_area_struct*,unsigned long) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (struct page*,struct mm_struct*,unsigned int) ; 
 struct page* FUNC18 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC20 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC21 (struct page*,struct mem_cgroup*) ; 
 scalar_t__ FUNC22 (struct mm_struct*,struct page*,int /*<<< orphan*/ ,struct mem_cgroup**) ; 
 int /*<<< orphan*/  FUNC23 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC24 (struct page*,int /*<<< orphan*/ ) ; 
 int FUNC25 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC26 (struct page*) ; 
 scalar_t__ FUNC27 (struct page*) ; 
 int /*<<< orphan*/  FUNC28 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC30 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC35 (struct page*) ; 
 int /*<<< orphan*/  FUNC36 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_1__) ; 
 int /*<<< orphan*/  swap_usage ; 
 struct page* FUNC38 (TYPE_1__,int /*<<< orphan*/ ,struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC39 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC40 (struct page*) ; 
 scalar_t__ FUNC41 (int) ; 
 int /*<<< orphan*/  FUNC42 (struct page*) ; 
 int /*<<< orphan*/  FUNC43 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC44 () ; 

__attribute__((used)) static int FUNC45(struct mm_struct *mm, struct vm_area_struct *vma,
		unsigned long address, pte_t *page_table, pmd_t *pmd,
		unsigned int flags, pte_t orig_pte)
{
	spinlock_t *ptl;
	struct page *page = NULL, *swapcache = NULL;
	swp_entry_t entry;
	pte_t pte;
	int locked;
	struct mem_cgroup *ptr = NULL;
	int exclusive = 0;
	int ret = 0;

	if (!FUNC33(mm, pmd, page_table, orig_pte))
		goto out;

	entry = FUNC32(orig_pte);
	if (FUNC41(FUNC25(entry))) {
		if (FUNC14(entry)) {
			FUNC23(mm, pmd, address);
		} else if (FUNC13(entry)) {
			ret = VM_FAULT_HWPOISON;
		} else {
			FUNC28(vma, address, orig_pte, NULL);
			ret = VM_FAULT_SIGBUS;
		}
		goto out;
	}
	FUNC7(DELAYACCT_PF_SWAPIN);
	page = FUNC18(entry);
	if (!page) {
		FUNC11(mm); /* Contend for token _before_ read-in */
		page = FUNC38(entry,
					GFP_HIGHUSER_MOVABLE, vma, address);
		if (!page) {
			/*
			 * Back out if somebody else faulted in this pte
			 * while we released the pte lock.
			 */
			page_table = FUNC30(mm, pmd, address, &ptl);
			if (FUNC16(FUNC31(*page_table, orig_pte)))
				ret = VM_FAULT_OOM;
			FUNC6(DELAYACCT_PF_SWAPIN);
			goto unlock;
		}

		/* Had to read the page from swap area: Major fault */
		ret = VM_FAULT_MAJOR;
		FUNC4(PGMAJFAULT);
	} else if (FUNC0(page)) {
		/*
		 * hwpoisoned dirty swapcache pages are kept for killing
		 * owner processes (which may be unknown at hwpoison time)
		 */
		ret = VM_FAULT_HWPOISON;
		FUNC6(DELAYACCT_PF_SWAPIN);
		goto out_release;
	}

	locked = FUNC17(page, mm, flags);
	FUNC6(DELAYACCT_PF_SWAPIN);
	if (!locked) {
		ret |= VM_FAULT_RETRY;
		goto out_release;
	}

	/*
	 * Make sure try_to_free_swap or reuse_swap_page or swapoff did not
	 * release the swapcache from under us.  The page pin, and pte_same
	 * test below, are not enough to exclude that.  Even if it is still
	 * swapcache, we need to check that the page's swap has not changed.
	 */
	if (FUNC41(!FUNC2(page) || FUNC27(page) != entry.val))
		goto out_page;

	swapcache = page;
	page = FUNC15(page, vma, address);
	if (FUNC41(!page)) {
		ret = VM_FAULT_OOM;
		page = swapcache;
		swapcache = NULL;
		goto out_page;
	}
	if (page == swapcache)
		swapcache = NULL;

	if (FUNC22(mm, page, GFP_KERNEL, &ptr)) {
		ret = VM_FAULT_OOM;
		goto out_page;
	}

	/*
	 * Back out if somebody else already faulted in this pte.
	 */
	page_table = FUNC30(mm, pmd, address, &ptl);
	if (FUNC41(!FUNC31(*page_table, orig_pte)))
		goto out_nomap;

	if (FUNC41(!FUNC3(page))) {
		ret = VM_FAULT_SIGBUS;
		goto out_nomap;
	}

	/*
	 * The page isn't present yet, go ahead with the fault.
	 *
	 * Be careful about the sequence of operations here.
	 * To get its accounting right, reuse_swap_page() must be called
	 * while the page is counted on swap but not yet in mapcount i.e.
	 * before page_add_anon_rmap() and swap_free(); try_to_free_swap()
	 * must be called after the swap_free(), or it will never succeed.
	 * Because delete_from_swap_page() may be called by reuse_swap_page(),
	 * mem_cgroup_commit_charge_swapin() may not be able to find swp_entry
	 * in page->private. In this case, a record in swap_cgroup  is silently
	 * discarded at swap_free().
	 */

	FUNC12(mm, anon_rss);
	FUNC5(mm, swap_usage);
	pte = FUNC24(page, vma->vm_page_prot);
	if ((flags & FAULT_FLAG_WRITE) && FUNC35(page)) {
		pte = FUNC19(FUNC29(pte), vma);
		flags &= ~FAULT_FLAG_WRITE;
		exclusive = 1;
	}
	FUNC10(vma, page);
	FUNC36(mm, address, page_table, pte);
	FUNC8(page, vma, address, exclusive);
	/* It's better to call commit-charge after rmap is established */
	FUNC21(page, ptr);

	FUNC37(entry);
	if (FUNC44() || (vma->vm_flags & VM_LOCKED) || FUNC1(page))
		FUNC40(page);
	FUNC42(page);
	if (swapcache) {
		/*
		 * Hold the lock to avoid the swap entry to be reused
		 * until we take the PT lock for the pte_same() check
		 * (to avoid false positives from pte_same). For
		 * further safety release the lock after the swap_free
		 * so that the swap count won't change under a
		 * parallel locked swapcache.
		 */
		FUNC42(swapcache);
		FUNC26(swapcache);
	}

	if (flags & FAULT_FLAG_WRITE) {
		ret |= FUNC9(mm, vma, address, page_table, pmd, ptl, pte);
		if (ret & VM_FAULT_ERROR)
			ret &= VM_FAULT_ERROR;
		goto out;
	}

	/* No need to invalidate - it was non-present before */
	FUNC43(vma, address, pte);
unlock:
	FUNC34(page_table, ptl);
out:
	FUNC39(mm, address);
	return ret;
out_nomap:
	FUNC20(ptr);
	FUNC34(page_table, ptl);
out_page:
	FUNC42(page);
out_release:
	FUNC26(page);
	if (swapcache) {
		FUNC42(swapcache);
		FUNC26(swapcache);
	}
	return ret;
}