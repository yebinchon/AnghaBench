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
struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_end; int /*<<< orphan*/  vm_page_prot; } ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int VM_MIXEDMAP ; 
 int VM_PFNMAP ; 
 int FUNC1 (struct vm_area_struct*,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 

int FUNC6(struct vm_area_struct *vma, unsigned long addr,
			unsigned long pfn)
{
	int ret;
	pgprot_t pgprot = vma->vm_page_prot;
	/*
	 * Technically, architectures with pte_special can avoid all these
	 * restrictions (same for remap_pfn_range).  However we would like
	 * consistency in testing and feature parity among all, so we should
	 * try to keep these invariants in place for everybody.
	 */
	FUNC0(!(vma->vm_flags & (VM_PFNMAP|VM_MIXEDMAP)));
	FUNC0((vma->vm_flags & (VM_PFNMAP|VM_MIXEDMAP)) ==
						(VM_PFNMAP|VM_MIXEDMAP));
	FUNC0((vma->vm_flags & VM_PFNMAP) && FUNC2(vma->vm_flags));
	FUNC0((vma->vm_flags & VM_MIXEDMAP) && FUNC3(pfn));

	if (addr < vma->vm_start || addr >= vma->vm_end)
		return -EFAULT;
	if (FUNC4(vma, &pgprot, pfn, PAGE_SIZE))
		return -EINVAL;

	ret = FUNC1(vma, addr, pfn, pgprot);

	if (ret)
		FUNC5(vma, pfn, PAGE_SIZE);

	return ret;
}