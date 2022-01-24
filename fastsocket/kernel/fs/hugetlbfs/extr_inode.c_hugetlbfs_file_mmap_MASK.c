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
struct vm_area_struct {int vm_flags; int vm_pgoff; int /*<<< orphan*/  vm_mm; scalar_t__ vm_start; scalar_t__ vm_end; int /*<<< orphan*/ * vm_ops; } ;
struct inode {int i_size; int /*<<< orphan*/  i_mutex; } ;
struct hstate {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
typedef  int loff_t ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int PAGE_SHIFT ; 
 int VM_HUGETLB ; 
 int VM_RESERVED ; 
 int VM_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 struct hstate* FUNC1 (struct file*) ; 
 int FUNC2 (struct hstate*) ; 
 int FUNC3 (struct hstate*) ; 
 int FUNC4 (struct hstate*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct inode*,int,int,struct vm_area_struct*,int) ; 
 int /*<<< orphan*/  hugetlb_vm_ops ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct file *file, struct vm_area_struct *vma)
{
	struct inode *inode = file->f_path.dentry->d_inode;
	loff_t len, vma_len;
	int ret;
	struct hstate *h = FUNC1(file);

	/*
	 * vma address alignment (but not the pgoff alignment) has
	 * already been checked by prepare_hugepage_range.  If you add
	 * any error returns here, do so after setting VM_HUGETLB, so
	 * is_vm_hugetlb_page tests below unmap_region go the right
	 * way when do_mmap_pgoff unwinds (may be important on powerpc
	 * and ia64).
	 */
	vma->vm_flags |= VM_HUGETLB | VM_RESERVED;
	vma->vm_ops = &hugetlb_vm_ops;

	if (vma->vm_pgoff & ~(FUNC2(h) >> PAGE_SHIFT))
		return -EINVAL;

	vma_len = (loff_t)(vma->vm_end - vma->vm_start);

	FUNC7(&inode->i_mutex);
	FUNC0(file);

	ret = -ENOMEM;
	len = vma_len + ((loff_t)vma->vm_pgoff << PAGE_SHIFT);

	if (FUNC6(inode,
				vma->vm_pgoff >> FUNC3(h),
				len >> FUNC4(h), vma,
				vma->vm_flags))
		goto out;

	ret = 0;
	FUNC5(vma->vm_mm);
	if (vma->vm_flags & VM_WRITE && inode->i_size < len)
		inode->i_size = len;
out:
	FUNC8(&inode->i_mutex);

	return ret;
}