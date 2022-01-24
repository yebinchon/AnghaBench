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
struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_pgoff; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 scalar_t__ HAVE_PTE_SPECIAL ; 
 unsigned long PAGE_SHIFT ; 
 int VM_MIXEDMAP ; 
 int VM_PFNMAP ; 
 unsigned long highest_memmap_pfn ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int) ; 
 struct page* FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

struct page *FUNC9(struct vm_area_struct *vma, unsigned long addr,
				pte_t pte)
{
	unsigned long pfn = FUNC6(pte);

	if (HAVE_PTE_SPECIAL) {
		if (FUNC2(!FUNC7(pte)))
			goto check_pfn;
		if (vma->vm_flags & (VM_PFNMAP | VM_MIXEDMAP))
			return NULL;
		if (!FUNC1(pfn))
			FUNC5(vma, addr, pte, NULL);
		return NULL;
	}

	/* !HAVE_PTE_SPECIAL case follows: */

	if (FUNC8(vma->vm_flags & (VM_PFNMAP|VM_MIXEDMAP))) {
		if (vma->vm_flags & VM_MIXEDMAP) {
			if (!FUNC4(pfn))
				return NULL;
			goto out;
		} else {
			unsigned long off;
			off = (addr - vma->vm_start) >> PAGE_SHIFT;
			if (pfn == vma->vm_pgoff + off)
				return NULL;
			if (!FUNC0(vma->vm_flags))
				return NULL;
		}
	}

	if (FUNC1(pfn))
		return NULL;
check_pfn:
	if (FUNC8(pfn > highest_memmap_pfn)) {
		FUNC5(vma, addr, pte, NULL);
		return NULL;
	}

	/*
	 * NOTE! We still have PageReserved() pages in the page tables.
	 * eg. VDSO mappings can cause them to exist.
	 */
out:
	return FUNC3(pfn);
}