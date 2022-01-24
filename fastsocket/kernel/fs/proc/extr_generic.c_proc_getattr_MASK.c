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
struct proc_dir_entry {scalar_t__ nlink; } ;
struct kstat {int dummy; } ;
struct inode {scalar_t__ i_nlink; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {struct proc_dir_entry* pde; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct kstat*) ; 

__attribute__((used)) static int FUNC2(struct vfsmount *mnt, struct dentry *dentry,
			struct kstat *stat)
{
	struct inode *inode = dentry->d_inode;
	struct proc_dir_entry *de = FUNC0(inode)->pde;
	if (de && de->nlink)
		inode->i_nlink = de->nlink;

	FUNC1(inode, stat);
	return 0;
}