#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; unsigned int vm_flags; unsigned long vm_pgoff; struct file* vm_file; void* vm_page_prot; int /*<<< orphan*/  anon_vma_chain; struct mm_struct* vm_mm; } ;
struct rb_node {int dummy; } ;
struct mm_struct {unsigned long total_vm; unsigned long locked_vm; } ;
struct inode {int /*<<< orphan*/  i_writecount; } ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct file {TYPE_3__* f_op; TYPE_2__ f_path; } ;
struct TYPE_8__ {struct mm_struct* mm; } ;
struct TYPE_7__ {int (* mmap ) (struct file*,struct vm_area_struct*) ;} ;
struct TYPE_5__ {struct inode* d_inode; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long MAP_NONBLOCK ; 
 unsigned long MAP_NORESERVE ; 
 unsigned long MAP_POPULATE ; 
 scalar_t__ OVERCOMMIT_NEVER ; 
 unsigned long PAGE_SHIFT ; 
 unsigned int VM_ACCOUNT ; 
 unsigned int VM_DENYWRITE ; 
 unsigned int VM_EXECUTABLE ; 
 unsigned int VM_GROWSDOWN ; 
 unsigned int VM_GROWSUP ; 
 unsigned int VM_LOCKED ; 
 unsigned int VM_NORESERVE ; 
 unsigned int VM_SHARED ; 
 scalar_t__ FUNC1 (struct file*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_4__* current ; 
 int FUNC4 (struct file*) ; 
 scalar_t__ FUNC5 (struct mm_struct*,unsigned long,unsigned long) ; 
 struct vm_area_struct* FUNC6 (struct mm_struct*,unsigned long,struct vm_area_struct**,struct rb_node***,struct rb_node**) ; 
 int /*<<< orphan*/  FUNC7 (struct file*) ; 
 int /*<<< orphan*/  FUNC8 (struct file*) ; 
 scalar_t__ FUNC9 (struct file*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 struct vm_area_struct* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct mm_struct*,unsigned long) ; 
 long FUNC14 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (struct vm_area_struct*) ; 
 scalar_t__ FUNC16 (unsigned long) ; 
 int FUNC17 (struct vm_area_struct*) ; 
 int FUNC18 (struct file*,struct vm_area_struct*) ; 
 scalar_t__ sysctl_overcommit_memory ; 
 int /*<<< orphan*/  FUNC19 (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  vm_area_cachep ; 
 void* FUNC20 (unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (struct mm_struct*,unsigned int,struct file*,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (unsigned long) ; 
 int /*<<< orphan*/  FUNC23 (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*,struct rb_node**,struct rb_node*) ; 
 struct vm_area_struct* FUNC24 (struct mm_struct*,struct vm_area_struct*,unsigned long,unsigned long,unsigned int,int /*<<< orphan*/ *,struct file*,unsigned long,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (struct vm_area_struct*) ; 

unsigned long FUNC26(struct file *file, unsigned long addr,
			  unsigned long len, unsigned long flags,
			  unsigned int vm_flags, unsigned long pgoff)
{
	struct mm_struct *mm = current->mm;
	struct vm_area_struct *vma, *prev;
	int correct_wcount = 0;
	int error;
	struct rb_node **rb_link, *rb_parent;
	unsigned long charged = 0;
	struct inode *inode =  file ? file->f_path.dentry->d_inode : NULL;

	/* Clear old maps */
	error = -ENOMEM;
munmap_back:
	vma = FUNC6(mm, addr, &prev, &rb_link, &rb_parent);
	if (vma && vma->vm_start < addr + len) {
		if (FUNC5(mm, addr, len))
			return -ENOMEM;
		goto munmap_back;
	}

	/* Check against address space limit. */
	if (!FUNC13(mm, len >> PAGE_SHIFT))
		return -ENOMEM;

	/*
	 * Set 'VM_NORESERVE' if we should not account for the
	 * memory use of this mapping.
	 */
	if ((flags & MAP_NORESERVE)) {
		/* We honor MAP_NORESERVE if allowed to overcommit */
		if (sysctl_overcommit_memory != OVERCOMMIT_NEVER)
			vm_flags |= VM_NORESERVE;

		/* hugetlb applies strict overcommit unless MAP_NORESERVE */
		if (file && FUNC9(file))
			vm_flags |= VM_NORESERVE;
	}

	/*
	 * Private writable mapping: check memory availability
	 */
	if (FUNC1(file, vm_flags)) {
		charged = len >> PAGE_SHIFT;
		if (FUNC16(charged))
			return -ENOMEM;
		vm_flags |= VM_ACCOUNT;
	}

	/*
	 * Can we just expand an old mapping?
	 */
	vma = FUNC24(mm, prev, addr, addr + len, vm_flags, NULL, file, pgoff, NULL);
	if (vma)
		goto out;

	/*
	 * Determine the object being mapped and call the appropriate
	 * specific mapper. the address has already been validated, but
	 * not unmapped, but the maps are removed from the list.
	 */
	vma = FUNC11(vm_area_cachep, GFP_KERNEL);
	if (!vma) {
		error = -ENOMEM;
		goto unacct_error;
	}

	vma->vm_mm = mm;
	vma->vm_start = addr;
	vma->vm_end = addr + len;
	vma->vm_flags = vm_flags;
	vma->vm_page_prot = FUNC20(vm_flags);
	vma->vm_pgoff = pgoff;
	FUNC0(&vma->anon_vma_chain);

	if (file) {
		error = -EINVAL;
		if (vm_flags & (VM_GROWSDOWN|VM_GROWSUP))
			goto free_vma;
		if (vm_flags & VM_DENYWRITE) {
			error = FUNC4(file);
			if (error)
				goto free_vma;
			correct_wcount = 1;
		}
		vma->vm_file = file;
		FUNC8(file);
		error = file->f_op->mmap(file, vma);
		if (error)
			goto unmap_and_free_vma;
		if (vm_flags & VM_EXECUTABLE)
			FUNC2(mm);

		/* Can addr have changed??
		 *
		 * Answer: Yes, several device drivers can do it in their
		 *         f_op->mmap method. -DaveM
		 */
		addr = vma->vm_start;
		pgoff = vma->vm_pgoff;
		vm_flags = vma->vm_flags;
	} else if (vm_flags & VM_SHARED) {
		error = FUNC17(vma);
		if (error)
			goto free_vma;
	}

	if (FUNC25(vma))
		vma->vm_page_prot = FUNC20(vm_flags & ~VM_SHARED);

	FUNC23(mm, vma, prev, rb_link, rb_parent);
	file = vma->vm_file;

	/* Once vma denies write, undo our temporary denial count */
	if (correct_wcount)
		FUNC3(&inode->i_writecount);
out:
	FUNC15(vma);

	mm->total_vm += len >> PAGE_SHIFT;
	FUNC21(mm, vm_flags, file, len >> PAGE_SHIFT);
	if (vm_flags & VM_LOCKED) {
		/*
		 * makes pages present; downgrades, drops, reacquires mmap_sem
		 */
		long nr_pages = FUNC14(vma, addr, addr + len);
		if (nr_pages < 0)
			return nr_pages;	/* vma gone! */
		mm->locked_vm += (len >> PAGE_SHIFT) - nr_pages;
	} else if ((flags & MAP_POPULATE) && !(flags & MAP_NONBLOCK))
		FUNC12(addr, addr + len);
	return addr;

unmap_and_free_vma:
	if (correct_wcount)
		FUNC3(&inode->i_writecount);
	vma->vm_file = NULL;
	FUNC7(file);

	/* Undo any partial mapping done by a device driver. */
	FUNC19(mm, vma, prev, vma->vm_start, vma->vm_end);
	charged = 0;
free_vma:
	FUNC10(vm_area_cachep, vma);
unacct_error:
	if (charged)
		FUNC22(charged);
	return error;
}