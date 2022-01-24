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
struct inode {int dummy; } ;
struct fuse_conn {int dummy; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int EACCES ; 
 int /*<<< orphan*/  FUNC0 (struct fuse_conn*) ; 
 int FUNC1 (struct inode*,struct kstat*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct fuse_conn* FUNC2 (struct inode*) ; 

__attribute__((used)) static int FUNC3(struct vfsmount *mnt, struct dentry *entry,
			struct kstat *stat)
{
	struct inode *inode = entry->d_inode;
	struct fuse_conn *fc = FUNC2(inode);

	if (!FUNC0(fc))
		return -EACCES;

	return FUNC1(inode, stat, NULL, NULL);
}