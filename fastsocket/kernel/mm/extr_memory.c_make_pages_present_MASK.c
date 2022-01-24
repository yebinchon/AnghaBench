#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int vm_flags; unsigned long vm_end; } ;
struct TYPE_3__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 int EFAULT ; 
 int ENOMEM ; 
 unsigned long PAGE_SIZE ; 
 int VM_SHARED ; 
 int VM_WRITE ; 
 TYPE_1__* current ; 
 struct vm_area_struct* FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,unsigned long,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(unsigned long addr, unsigned long end)
{
	int ret, len, write;
	struct vm_area_struct * vma;

	vma = FUNC2(current->mm, addr);
	if (!vma)
		return -ENOMEM;
	/*
	 * We want to touch writable mappings with a write fault in order
	 * to break COW, except for shared mappings because these don't COW
	 * and we would not want to dirty them for nothing.
	 */
	write = (vma->vm_flags & (VM_WRITE | VM_SHARED)) == VM_WRITE;
	FUNC0(addr >= end);
	FUNC0(end > vma->vm_end);
	len = FUNC1(end, PAGE_SIZE) - addr/PAGE_SIZE;
	ret = FUNC3(current, current->mm, addr,
			len, write, 0, NULL, NULL);
	if (ret < 0)
		return ret;
	return ret == len ? 0 : -EFAULT;
}