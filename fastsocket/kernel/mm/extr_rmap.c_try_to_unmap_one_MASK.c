#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ swp_entry_t ;
struct vm_area_struct {int vm_flags; scalar_t__ vm_start; struct mm_struct* vm_mm; } ;
struct page {scalar_t__ index; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; int /*<<< orphan*/  mmlist; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  enum ttu_flags { ____Placeholder_ttu_flags } ttu_flags ;
struct TYPE_8__ {int /*<<< orphan*/  mmlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PAGE_MIGRATION ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int SWAP_AGAIN ; 
 int SWAP_FAIL ; 
 int SWAP_MLOCK ; 
 scalar_t__ FUNC4 (int) ; 
 int TTU_IGNORE_ACCESS ; 
 int TTU_IGNORE_HWPOISON ; 
 int TTU_IGNORE_MLOCK ; 
 scalar_t__ TTU_MIGRATION ; 
 scalar_t__ TTU_MUNLOCK ; 
 int VM_LOCKED ; 
 int /*<<< orphan*/  anon_rss ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  file_rss ; 
 int /*<<< orphan*/  FUNC7 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mm_struct*,int /*<<< orphan*/ ) ; 
 TYPE_6__ init_mm ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__ FUNC11 (struct page*) ; 
 TYPE_1__ FUNC12 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  mmlist_lock ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int /*<<< orphan*/ * FUNC15 (struct page*,struct mm_struct*,unsigned long,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (struct page*) ; 
 int /*<<< orphan*/  FUNC26 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC29 (TYPE_1__) ; 
 int /*<<< orphan*/  swap_usage ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC31 (struct mm_struct*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (struct mm_struct*) ; 

int FUNC34(struct page *page, struct vm_area_struct *vma,
		     unsigned long address, enum ttu_flags flags)
{
	struct mm_struct *mm = vma->vm_mm;
	pte_t *pte;
	pte_t pteval;
	spinlock_t *ptl;
	int ret = SWAP_AGAIN;

	pte = FUNC15(page, mm, address, &ptl, 0);
	if (!pte)
		goto out;

	/*
	 * If the page is mlock()d, we cannot swap it out.
	 * If it's recently referenced (perhaps page_referenced
	 * skipped over this mm) then we should reactivate it.
	 */
	if (!(flags & TTU_IGNORE_MLOCK)) {
		if (vma->vm_flags & VM_LOCKED) {
			ret = SWAP_MLOCK;
			goto out_unmap;
		}
		if (FUNC4(flags) == TTU_MUNLOCK)
			goto out_unmap;
	}
	if (!(flags & TTU_IGNORE_ACCESS)) {
		if (FUNC24(vma, address, pte)) {
			ret = SWAP_FAIL;
			goto out_unmap;
		}
  	}

	/* Nuke the page table entry. */
	FUNC7(vma, address, FUNC18(page));
	pteval = FUNC23(vma, address, pte);

	/* Move the dirty bit to the physical page now the pte is gone. */
	if (FUNC19(pteval))
		FUNC25(page);

	/* Update high watermark before we lower rss */
	FUNC33(mm);

	if (FUNC2(page) && !(flags & TTU_IGNORE_HWPOISON)) {
		if (FUNC1(page))
			FUNC5(mm, anon_rss);
		else
			FUNC5(mm, file_rss);
		FUNC26(mm, address, pte,
				FUNC30(FUNC11(page)));
	} else if (FUNC1(page)) {
		swp_entry_t entry = { .val = FUNC16(page) };

		if (FUNC3(page)) {
			/*
			 * Store the swap location in the pte.
			 * See handle_pte_fault() ...
			 */
			if (FUNC29(entry) < 0) {
				FUNC26(mm, address, pte, pteval);
				ret = SWAP_FAIL;
				goto out_unmap;
			}
			if (FUNC10(&mm->mmlist)) {
				FUNC27(&mmlist_lock);
				if (FUNC10(&mm->mmlist))
					FUNC9(&mm->mmlist, &init_mm.mmlist);
				FUNC28(&mmlist_lock);
			}
			FUNC5(mm, anon_rss);
			FUNC8(mm, swap_usage);
		} else if (PAGE_MIGRATION) {
			/*
			 * Store the pfn of the page in a special migration
			 * pte. do_swap_page() will wait until the migration
			 * pte is removed and then restart fault handling.
			 */
			FUNC0(FUNC4(flags) != TTU_MIGRATION);
			entry = FUNC12(page, FUNC22(pteval));
		}
		FUNC26(mm, address, pte, FUNC30(entry));
		FUNC0(FUNC20(*pte));
	} else if (PAGE_MIGRATION && (FUNC4(flags) == TTU_MIGRATION)) {
		/* Establish migration entry for a file page */
		swp_entry_t entry;
		entry = FUNC12(page, FUNC22(pteval));
		FUNC26(mm, address, pte, FUNC30(entry));
	} else
		FUNC5(mm, file_rss);

	FUNC17(page);
	FUNC14(page);

out_unmap:
	FUNC21(pte, ptl);

	if (ret == SWAP_MLOCK) {
		ret = SWAP_AGAIN;
		if (FUNC6(&vma->vm_mm->mmap_sem)) {
			if (vma->vm_flags & VM_LOCKED) {
				FUNC13(page);
				ret = SWAP_MLOCK;
			}
			FUNC32(&vma->vm_mm->mmap_sem);
		}
		FUNC31(vma->vm_mm, vma->vm_start+page->index);
	}
out:
	return ret;
}