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
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; unsigned long vm_pgoff; int vm_flags; struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pgprot_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long PAGE_SHIFT ; 
 int VM_IO ; 
 int VM_PFNMAP ; 
 int VM_PFN_AT_MMAP ; 
 int VM_RESERVED ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (int) ; 
 unsigned long FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * FUNC5 (struct mm_struct*,unsigned long) ; 
 int FUNC6 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct vm_area_struct*,unsigned long,unsigned long) ; 

int FUNC9(struct vm_area_struct *vma, unsigned long addr,
		    unsigned long pfn, unsigned long size, pgprot_t prot)
{
	pgd_t *pgd;
	unsigned long next;
	unsigned long end = addr + FUNC1(size);
	struct mm_struct *mm = vma->vm_mm;
	int err;

	/*
	 * Physically remapped pages are special. Tell the
	 * rest of the world about it:
	 *   VM_IO tells people not to look at these pages
	 *	(accesses can have side effects).
	 *   VM_RESERVED is specified all over the place, because
	 *	in 2.4 it kept swapout's vma scan off this vma; but
	 *	in 2.6 the LRU scan won't even find its pages, so this
	 *	flag means no more than count its pages in reserved_vm,
	 * 	and omit it from core dump, even when VM_IO turned off.
	 *   VM_PFNMAP tells the core MM that the base pages are just
	 *	raw PFN mappings, and do not have a "struct page" associated
	 *	with them.
	 *
	 * There's a horrible special case to handle copy-on-write
	 * behaviour that some programs depend on. We mark the "original"
	 * un-COW'ed pages by matching them up with "vma->vm_pgoff".
	 */
	if (addr == vma->vm_start && end == vma->vm_end) {
		vma->vm_pgoff = pfn;
		vma->vm_flags |= VM_PFN_AT_MMAP;
	} else if (FUNC3(vma->vm_flags))
		return -EINVAL;

	vma->vm_flags |= VM_IO | VM_RESERVED | VM_PFNMAP;

	err = FUNC7(vma, &prot, pfn, FUNC1(size));
	if (err) {
		/*
		 * To indicate that track_pfn related cleanup is not
		 * needed from higher level routine calling unmap_vmas
		 */
		vma->vm_flags &= ~(VM_IO | VM_RESERVED | VM_PFNMAP);
		vma->vm_flags &= ~VM_PFN_AT_MMAP;
		return -EINVAL;
	}

	FUNC0(addr >= end);
	pfn -= addr >> PAGE_SHIFT;
	pgd = FUNC5(mm, addr);
	FUNC2(vma, addr, end);
	do {
		next = FUNC4(addr, end);
		err = FUNC6(mm, pgd, addr, next,
				pfn + (addr >> PAGE_SHIFT), prot);
		if (err)
			break;
	} while (pgd++, addr = next, addr != end);

	if (err)
		FUNC8(vma, pfn, FUNC1(size));

	return err;
}