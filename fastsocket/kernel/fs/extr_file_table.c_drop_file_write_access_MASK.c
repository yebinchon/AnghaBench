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
struct vfsmount {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct TYPE_2__ {struct dentry* dentry; struct vfsmount* mnt; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vfsmount*) ; 
 scalar_t__ FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct file *file)
{
	struct vfsmount *mnt = file->f_path.mnt;
	struct dentry *dentry = file->f_path.dentry;
	struct inode *inode = dentry->d_inode;

	FUNC3(inode);

	if (FUNC4(inode->i_mode))
		return;
	if (FUNC1(file) != 0)
		return;
	FUNC0(mnt);
	FUNC2(file);
}