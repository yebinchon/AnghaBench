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
struct vm_area_struct {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_mmap; int /*<<< orphan*/  i_flags; } ;
struct TYPE_4__ {struct inode* d_inode; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 int FUNC1 (struct file*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  i_ever_mapped ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct file *file, struct vm_area_struct *vma)
{
	struct inode *inode;

	inode = file->f_path.dentry->d_inode;
	FUNC2(&(FUNC0(inode)->i_mmap));
	FUNC0(inode)->i_flags |= i_ever_mapped;
	FUNC3(&(FUNC0(inode)->i_mmap));

	return FUNC1(file, vma);
}