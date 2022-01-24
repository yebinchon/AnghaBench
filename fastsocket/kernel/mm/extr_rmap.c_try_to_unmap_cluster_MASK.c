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
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int vm_flags; struct mm_struct* vm_mm; } ;
struct page {scalar_t__ index; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long CLUSTER_MASK ; 
 unsigned long CLUSTER_SIZE ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int SWAP_AGAIN ; 
 int SWAP_MLOCK ; 
 int VM_LOCKED ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  file_rss ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/ * FUNC9 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct page*) ; 
 int /*<<< orphan*/  FUNC24 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct mm_struct*) ; 
 struct page* FUNC27 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC28(unsigned long cursor, unsigned int *mapcount,
		struct vm_area_struct *vma, struct page *check_page)
{
	struct mm_struct *mm = vma->vm_mm;
	pgd_t *pgd;
	pud_t *pud;
	pmd_t *pmd;
	pte_t *pte;
	pte_t pteval;
	spinlock_t *ptl;
	struct page *page;
	unsigned long address;
	unsigned long end;
	int ret = SWAP_AGAIN;
	int locked_vma = 0;

	address = (vma->vm_start + cursor) & CLUSTER_MASK;
	end = address + CLUSTER_SIZE;
	if (address < vma->vm_start)
		address = vma->vm_start;
	if (end > vma->vm_end)
		end = vma->vm_end;

	pgd = FUNC9(mm, address);
	if (!FUNC10(*pgd))
		return ret;

	pud = FUNC21(pgd, address);
	if (!FUNC22(*pud))
		return ret;

	pmd = FUNC12(pud, address);
	if (!FUNC13(*pmd))
		return ret;

	/*
	 * If we can acquire the mmap_sem for read, and vma is VM_LOCKED,
	 * keep the sem while scanning the cluster for mlocking pages.
	 */
	if (FUNC3(&vma->vm_mm->mmap_sem)) {
		locked_vma = (vma->vm_flags & VM_LOCKED);
		if (!locked_vma)
			FUNC25(&vma->vm_mm->mmap_sem); /* don't need it */
	}

	pte = FUNC15(mm, pmd, address, &ptl);

	/* Update high watermark before we lower rss */
	FUNC26(mm);

	for (; address < end; pte++, address += PAGE_SIZE) {
		if (!FUNC17(*pte))
			continue;
		page = FUNC27(vma, address, *pte);
		FUNC0(!page || FUNC1(page));

		if (locked_vma) {
			FUNC6(page);   /* no-op if already mlocked */
			if (page == check_page)
				ret = SWAP_MLOCK;
			continue;	/* don't unmap */
		}

		if (FUNC20(vma, address, pte))
			continue;

		/* Nuke the page table entry. */
		FUNC4(vma, address, FUNC16(*pte));
		pteval = FUNC19(vma, address, pte);

		/* If nonlinear, store the file page offset in the pte. */
		if (page->index != FUNC5(vma, address))
			FUNC24(mm, address, pte, FUNC11(page->index));

		/* Move the dirty bit to the physical page now the pte is gone. */
		if (FUNC14(pteval))
			FUNC23(page);

		FUNC8(page);
		FUNC7(page);
		FUNC2(mm, file_rss);
		(*mapcount)--;
	}
	FUNC18(pte - 1, ptl);
	if (locked_vma)
		FUNC25(&vma->vm_mm->mmap_sem);
	return ret;
}