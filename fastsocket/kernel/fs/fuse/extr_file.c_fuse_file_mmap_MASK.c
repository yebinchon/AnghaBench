#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int vm_flags; int /*<<< orphan*/ * vm_ops; } ;
struct inode {int dummy; } ;
struct fuse_inode {int /*<<< orphan*/  write_files; } ;
struct fuse_file {int /*<<< orphan*/  write_entry; } ;
struct fuse_conn {int /*<<< orphan*/  lock; } ;
struct file {struct fuse_file* private_data; TYPE_1__* f_dentry; } ;
struct TYPE_2__ {struct inode* d_inode; } ;

/* Variables and functions */
 int VM_MAYWRITE ; 
 int VM_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 int /*<<< orphan*/  fuse_file_vm_ops ; 
 struct fuse_conn* FUNC1 (struct inode*) ; 
 struct fuse_inode* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct file *file, struct vm_area_struct *vma)
{
	if ((vma->vm_flags & VM_SHARED) && (vma->vm_flags & VM_MAYWRITE)) {
		struct inode *inode = file->f_dentry->d_inode;
		struct fuse_conn *fc = FUNC1(inode);
		struct fuse_inode *fi = FUNC2(inode);
		struct fuse_file *ff = file->private_data;
		/*
		 * file may be written through mmap, so chain it onto the
		 * inodes's write_file list
		 */
		FUNC5(&fc->lock);
		if (FUNC4(&ff->write_entry))
			FUNC3(&ff->write_entry, &fi->write_files);
		FUNC6(&fc->lock);
	}
	FUNC0(file);
	vma->vm_ops = &fuse_file_vm_ops;
	return 0;
}