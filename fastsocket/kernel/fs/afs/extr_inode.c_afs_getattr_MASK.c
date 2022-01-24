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
struct kstat {int dummy; } ;
struct inode {scalar_t__ i_version; int /*<<< orphan*/  i_ino; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct kstat*) ; 

int FUNC2(struct vfsmount *mnt, struct dentry *dentry,
		      struct kstat *stat)
{
	struct inode *inode;

	inode = dentry->d_inode;

	FUNC0("{ ino=%lu v=%llu }", inode->i_ino,
		(unsigned long long)inode->i_version);

	FUNC1(inode, stat);
	return 0;
}