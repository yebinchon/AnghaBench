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
struct vm_area_struct {unsigned long vm_start; int vm_flags; scalar_t__ vm_pgoff; } ;
struct page {int dummy; } ;
struct kvm {int dummy; } ;
typedef  scalar_t__ pfn_t ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long PAGE_SHIFT ; 
 int VM_PFNMAP ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct page* fault_page ; 
 struct vm_area_struct* FUNC3 (TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (unsigned long,int,int,struct page**) ; 
 struct page* hwpoison_page ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

pfn_t FUNC11(struct kvm *kvm, unsigned long addr)
{
	struct page *page[1];
	int npages;
	pfn_t pfn;

	FUNC7();

	npages = FUNC5(addr, 1, 1, page);

	if (FUNC9(npages != 1)) {
		struct vm_area_struct *vma;

		FUNC2(&current->mm->mmap_sem);
		if (FUNC1(addr)) {
			FUNC10(&current->mm->mmap_sem);
			FUNC4(hwpoison_page);
			return FUNC8(hwpoison_page);
		}

		vma = FUNC3(current->mm, addr);

		if (vma == NULL || addr < vma->vm_start ||
		    !(vma->vm_flags & VM_PFNMAP)) {
			FUNC10(&current->mm->mmap_sem);
			FUNC4(fault_page);
			return FUNC8(fault_page);
		}

		pfn = ((addr - vma->vm_start) >> PAGE_SHIFT) + vma->vm_pgoff;
		FUNC10(&current->mm->mmap_sem);
		FUNC0(!FUNC6(pfn));
	} else
		pfn = FUNC8(page[0]);

	return pfn;
}