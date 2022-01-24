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
struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_end; int /*<<< orphan*/  vm_file; struct mm_struct* vm_mm; } ;
struct rlimit {unsigned long rlim_cur; } ;
struct mm_struct {unsigned long locked_vm; unsigned long total_vm; } ;
struct TYPE_4__ {TYPE_1__* signal; } ;
struct TYPE_3__ {struct rlimit* rlim; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_IPC_LOCK ; 
 int EFAULT ; 
 int ENOMEM ; 
 unsigned long PAGE_SHIFT ; 
 size_t RLIMIT_MEMLOCK ; 
 int VM_GROWSUP ; 
 int VM_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 scalar_t__ FUNC1 (struct mm_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*,unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,int,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct vm_area_struct *vma, unsigned long size, unsigned long grow)
{
	struct mm_struct *mm = vma->vm_mm;
	struct rlimit *rlim = current->signal->rlim;
	unsigned long new_start;

	/* address space limit tests */
	if (!FUNC2(mm, grow))
		return -ENOMEM;

	/* Stack limit test */
	if (FUNC3(size))
		return -ENOMEM;

	/* mlock limit tests */
	if (vma->vm_flags & VM_LOCKED) {
		unsigned long locked;
		unsigned long limit;
		locked = mm->locked_vm + grow;
		limit = rlim[RLIMIT_MEMLOCK].rlim_cur >> PAGE_SHIFT;
		if (locked > limit && !FUNC0(CAP_IPC_LOCK))
			return -ENOMEM;
	}

	/* Check to ensure the stack will not grow into a hugetlb-only region */
	new_start = (vma->vm_flags & VM_GROWSUP) ? vma->vm_start :
			vma->vm_end - size;
	if (FUNC1(vma->vm_mm, new_start, size))
		return -EFAULT;

	/*
	 * Overcommit..  This must be the final test, as it will
	 * update security statistics.
	 */
	if (FUNC4(mm, grow))
		return -ENOMEM;

	/* Ok, everything looks good - let it rip */
	mm->total_vm += grow;
	if (vma->vm_flags & VM_LOCKED)
		mm->locked_vm += grow;
	FUNC5(mm, vma->vm_flags, vma->vm_file, grow);
	return 0;
}