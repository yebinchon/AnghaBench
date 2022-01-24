#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {TYPE_2__* vm_file; struct mm_struct* vm_mm; } ;
struct mm_struct {int /*<<< orphan*/  page_table_lock; } ;
struct hstate {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pgprot_t ;
struct TYPE_4__ {TYPE_1__* f_mapping; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_mmap_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 struct hstate* FUNC3 (struct vm_area_struct*) ; 
 scalar_t__ FUNC4 (struct hstate*) ; 
 scalar_t__ FUNC5 (struct mm_struct*,unsigned long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

void FUNC15(struct vm_area_struct *vma,
		unsigned long address, unsigned long end, pgprot_t newprot)
{
	struct mm_struct *mm = vma->vm_mm;
	unsigned long start = address;
	pte_t *ptep;
	pte_t pte;
	struct hstate *h = FUNC3(vma);

	FUNC0(address >= end);
	FUNC1(vma, address, end);

	FUNC13(&vma->vm_file->f_mapping->i_mmap_lock);
	FUNC13(&mm->page_table_lock);
	for (; address < end; address += FUNC4(h)) {
		ptep = FUNC7(mm, address);
		if (!ptep)
			continue;
		if (FUNC5(mm, &address, ptep))
			continue;
		if (!FUNC6(FUNC8(ptep))) {
			pte = FUNC9(mm, address, ptep);
			pte = FUNC10(FUNC11(pte, newprot));
			FUNC12(mm, address, ptep, pte);
		}
	}
	FUNC14(&mm->page_table_lock);
	/*
	 * Must flush TLB before releasing i_mmap_lock: x86's huge_pmd_unshare
	 * may have cleared our pud entry and done put_page on the page table:
	 * once we release i_mmap_lock, another task can do the final put_page
	 * and that page table be reused and filled with junk.
	 */
	FUNC2(vma, start, end);
	FUNC14(&vma->vm_file->f_mapping->i_mmap_lock);
}