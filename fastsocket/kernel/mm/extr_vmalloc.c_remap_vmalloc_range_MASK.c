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
struct vm_struct {int flags; int size; } ;
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int /*<<< orphan*/  vm_flags; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  VM_RESERVED ; 
 int VM_USERMAP ; 
 struct vm_struct* FUNC0 (void*) ; 
 int FUNC1 (struct vm_area_struct*,unsigned long,struct page*) ; 
 struct page* FUNC2 (void*) ; 

int FUNC3(struct vm_area_struct *vma, void *addr,
						unsigned long pgoff)
{
	struct vm_struct *area;
	unsigned long uaddr = vma->vm_start;
	unsigned long usize = vma->vm_end - vma->vm_start;

	if ((PAGE_SIZE-1) & (unsigned long)addr)
		return -EINVAL;

	area = FUNC0(addr);
	if (!area)
		return -EINVAL;

	if (!(area->flags & VM_USERMAP))
		return -EINVAL;

	if (usize + (pgoff << PAGE_SHIFT) > area->size - PAGE_SIZE)
		return -EINVAL;

	addr += pgoff << PAGE_SHIFT;
	do {
		struct page *page = FUNC2(addr);
		int ret;

		ret = FUNC1(vma, uaddr, page);
		if (ret)
			return ret;

		uaddr += PAGE_SIZE;
		addr += PAGE_SIZE;
		usize -= PAGE_SIZE;
	} while (usize > 0);

	/* Prevent "things" like memory migration? VM_flags need a cleanup... */
	vma->vm_flags |= VM_RESERVED;

	return 0;
}