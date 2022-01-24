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
struct vm_area_struct {int vm_flags; struct file* vm_file; } ;
struct TYPE_6__ {TYPE_2__* dentry; } ;
struct file {TYPE_3__ f_path; struct address_space* f_mapping; } ;
struct address_space {int /*<<< orphan*/  i_mmap; int /*<<< orphan*/  i_mmap_nonlinear; int /*<<< orphan*/  i_mmap_writable; } ;
struct TYPE_5__ {TYPE_1__* d_inode; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_writecount; } ;

/* Variables and functions */
 int VM_DENYWRITE ; 
 int VM_NONLINEAR ; 
 int VM_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC2 (struct address_space*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct vm_area_struct*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct vm_area_struct *vma)
{
	struct file *file;

	file = vma->vm_file;
	if (file) {
		struct address_space *mapping = file->f_mapping;

		if (vma->vm_flags & VM_DENYWRITE)
			FUNC0(&file->f_path.dentry->d_inode->i_writecount);
		if (vma->vm_flags & VM_SHARED)
			mapping->i_mmap_writable++;

		FUNC1(mapping);
		if (FUNC3(vma->vm_flags & VM_NONLINEAR))
			FUNC4(vma, &mapping->i_mmap_nonlinear);
		else
			FUNC5(vma, &mapping->i_mmap);
		FUNC2(mapping);
	}
}