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
struct vm_area_struct {int vm_flags; unsigned long vm_start; scalar_t__ vm_pgoff; struct file* vm_file; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {int /*<<< orphan*/  host; } ;
typedef  int loff_t ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 long EACCES ; 
 long EINVAL ; 
 int PAGE_SHIFT ; 
 int VM_HUGETLB ; 
 int VM_LOCKED ; 
 int VM_NONLINEAR ; 
 int VM_SHARED ; 
 int VM_WRITE ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static long FUNC5(struct vm_area_struct *vma,
				struct vm_area_struct **prev,
				unsigned long start, unsigned long end)
{
	struct address_space *mapping;
	loff_t offset, endoff;
	int error;
	struct file *f;

	*prev = NULL;	/* tell sys_madvise we drop mmap_sem */

	if (vma->vm_flags & (VM_LOCKED|VM_NONLINEAR|VM_HUGETLB))
		return -EINVAL;

	f = vma->vm_file;

	if (!f || !f->f_mapping || !f->f_mapping->host) {
			return -EINVAL;
	}

	if ((vma->vm_flags & (VM_SHARED|VM_WRITE)) != (VM_SHARED|VM_WRITE))
		return -EACCES;

	mapping = f->f_mapping;

	offset = (loff_t)(start - vma->vm_start)
			+ ((loff_t)vma->vm_pgoff << PAGE_SHIFT);
	endoff = (loff_t)(end - vma->vm_start - 1)
			+ ((loff_t)vma->vm_pgoff << PAGE_SHIFT);

	/* vmtruncate_range needs to take i_mutex and i_alloc_sem.
	 * We need to explicitly grab a reference because the vma (and
	 * hence the vma's reference to the file) can go away as soon
	 * as we drop mmap_sem.
	 */
	FUNC2(f);
	FUNC3(&current->mm->mmap_sem);
	error = FUNC4(mapping->host, offset, endoff);
	FUNC1(f);
	FUNC0(&current->mm->mmap_sem);
	return error;
}