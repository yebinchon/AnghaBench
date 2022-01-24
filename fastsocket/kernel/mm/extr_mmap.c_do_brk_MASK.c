#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; unsigned long vm_pgoff; unsigned long vm_flags; int /*<<< orphan*/  vm_page_prot; struct mm_struct* vm_mm; int /*<<< orphan*/  anon_vma_chain; } ;
struct rb_node {int dummy; } ;
struct mm_struct {unsigned long def_flags; scalar_t__ map_count; unsigned long total_vm; scalar_t__ locked_vm; } ;
typedef  unsigned long pgoff_t ;
struct TYPE_6__ {TYPE_2__* signal; struct mm_struct* mm; } ;
struct TYPE_5__ {TYPE_1__* rlim; } ;
struct TYPE_4__ {unsigned long rlim_cur; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_IPC_LOCK ; 
 unsigned long EAGAIN ; 
 unsigned long ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAP_FIXED ; 
 unsigned long FUNC1 (unsigned long) ; 
 int PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 size_t RLIMIT_MEMLOCK ; 
 unsigned long VM_ACCOUNT ; 
 unsigned long VM_DATA_DEFAULT_FLAGS ; 
 int VM_LOCKED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* current ; 
 scalar_t__ FUNC3 (struct mm_struct*,unsigned long,unsigned long) ; 
 struct vm_area_struct* FUNC4 (struct mm_struct*,unsigned long,struct vm_area_struct**,struct rb_node***,struct rb_node**) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vm_area_struct* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct vm_area_struct*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int) ; 
 scalar_t__ FUNC11 (unsigned long) ; 
 scalar_t__ sysctl_max_map_count ; 
 int /*<<< orphan*/  FUNC12 (struct mm_struct*) ; 
 int /*<<< orphan*/  vm_area_cachep ; 
 int /*<<< orphan*/  FUNC13 (unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*,struct rb_node**,struct rb_node*) ; 
 struct vm_area_struct* FUNC16 (struct mm_struct*,struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *) ; 

unsigned long FUNC17(unsigned long addr, unsigned long len)
{
	struct mm_struct * mm = current->mm;
	struct vm_area_struct * vma, * prev;
	unsigned long flags;
	struct rb_node ** rb_link, * rb_parent;
	pgoff_t pgoff = addr >> PAGE_SHIFT;
	int error;

	len = FUNC1(len);
	if (!len)
		return addr;

	error = FUNC10(NULL, 0, 0, 0, addr, 1);
	if (error)
		return error;

	flags = VM_DATA_DEFAULT_FLAGS | VM_ACCOUNT | mm->def_flags;

	error = FUNC5(NULL, addr, len, 0, MAP_FIXED);
	if (error & ~PAGE_MASK)
		return error;

	/*
	 * mlock MCL_FUTURE?
	 */
	if (mm->def_flags & VM_LOCKED) {
		unsigned long locked, lock_limit;
		locked = len >> PAGE_SHIFT;
		locked += mm->locked_vm;
		lock_limit = current->signal->rlim[RLIMIT_MEMLOCK].rlim_cur;
		lock_limit >>= PAGE_SHIFT;
		if (locked > lock_limit && !FUNC2(CAP_IPC_LOCK))
			return -EAGAIN;
	}

	/*
	 * mm->mmap_sem is required to protect against another thread
	 * changing the mappings in case we sleep.
	 */
	FUNC12(mm);

	/*
	 * Clear old maps.  this also does some error checking for us
	 */
 munmap_back:
	vma = FUNC4(mm, addr, &prev, &rb_link, &rb_parent);
	if (vma && vma->vm_start < addr + len) {
		if (FUNC3(mm, addr, len))
			return -ENOMEM;
		goto munmap_back;
	}

	/* Check against address space limits *after* clearing old maps... */
	if (!FUNC7(mm, len >> PAGE_SHIFT))
		return -ENOMEM;

	if (mm->map_count > sysctl_max_map_count)
		return -ENOMEM;

	if (FUNC11(len >> PAGE_SHIFT))
		return -ENOMEM;

	/* Can we just expand an old private anonymous mapping? */
	vma = FUNC16(mm, prev, addr, addr + len, flags,
					NULL, NULL, pgoff, NULL);
	if (vma)
		goto out;

	/*
	 * create a vma struct for an anonymous mapping
	 */
	vma = FUNC6(vm_area_cachep, GFP_KERNEL);
	if (!vma) {
		FUNC14(len >> PAGE_SHIFT);
		return -ENOMEM;
	}

	FUNC0(&vma->anon_vma_chain);
	vma->vm_mm = mm;
	vma->vm_start = addr;
	vma->vm_end = addr + len;
	vma->vm_pgoff = pgoff;
	vma->vm_flags = flags;
	vma->vm_page_prot = FUNC13(flags);
	FUNC15(mm, vma, prev, rb_link, rb_parent);
out:
	FUNC9(vma);
	mm->total_vm += len >> PAGE_SHIFT;
	if (flags & VM_LOCKED) {
		if (!FUNC8(vma, addr, addr + len))
			mm->locked_vm += (len >> PAGE_SHIFT);
	}
	return addr;
}