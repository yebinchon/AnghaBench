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
struct vm_area_struct {unsigned long vm_end; int vm_flags; } ;
struct task_struct {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int VM_MAYREAD ; 
 int VM_MAYWRITE ; 
 scalar_t__ FUNC0 (void*,void*,int) ; 
 scalar_t__ FUNC1 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vm_area_struct* FUNC3 (struct mm_struct*,unsigned long) ; 
 struct mm_struct* FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct task_struct *tsk, unsigned long addr, void *buf, int len, int write)
{
	struct vm_area_struct *vma;
	struct mm_struct *mm;

	if (addr + len < addr)
		return 0;

	mm = FUNC4(tsk);
	if (!mm)
		return 0;

	FUNC2(&mm->mmap_sem);

	/* the access must start within one of the target process's mappings */
	vma = FUNC3(mm, addr);
	if (vma) {
		/* don't overrun this mapping */
		if (addr + len >= vma->vm_end)
			len = vma->vm_end - addr;

		/* only read or write mappings where it is permitted */
		if (write && vma->vm_flags & VM_MAYWRITE)
			len -= FUNC1((void *) addr, buf, len);
		else if (!write && vma->vm_flags & VM_MAYREAD)
			len -= FUNC0(buf, (void *) addr, len);
		else
			len = 0;
	} else {
		len = 0;
	}

	FUNC6(&mm->mmap_sem);
	FUNC5(mm);
	return len;
}