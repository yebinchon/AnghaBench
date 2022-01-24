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
struct vfsmount {int dummy; } ;
struct task_struct {int dummy; } ;
struct kstat {int /*<<< orphan*/  nlink; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*,struct kstat*) ; 
 scalar_t__ FUNC1 (struct task_struct*) ; 
 struct task_struct* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 

__attribute__((used)) static int FUNC4(struct vfsmount *mnt, struct dentry *dentry, struct kstat *stat)
{
	struct inode *inode = dentry->d_inode;
	struct task_struct *p = FUNC2(inode);
	FUNC0(inode, stat);

	if (p) {
		stat->nlink += FUNC1(p);
		FUNC3(p);
	}

	return 0;
}