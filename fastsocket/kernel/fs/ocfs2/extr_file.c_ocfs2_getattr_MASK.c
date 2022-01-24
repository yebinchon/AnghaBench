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
struct super_block {struct ocfs2_super* s_fs_info; } ;
struct ocfs2_super {int /*<<< orphan*/  s_clustersize; } ;
struct kstat {int /*<<< orphan*/  blksize; } ;
struct inode {struct super_block* i_sb; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,struct kstat*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct dentry*) ; 

int FUNC5(struct vfsmount *mnt,
		  struct dentry *dentry,
		  struct kstat *stat)
{
	struct inode *inode = dentry->d_inode;
	struct super_block *sb = dentry->d_inode->i_sb;
	struct ocfs2_super *osb = sb->s_fs_info;
	int err;

	FUNC1();

	err = FUNC4(dentry);
	if (err) {
		if (err != -ENOENT)
			FUNC2(err);
		goto bail;
	}

	FUNC0(inode, stat);

	/* We set the blksize from the cluster size for performance */
	stat->blksize = osb->s_clustersize;

bail:
	FUNC3(err);

	return err;
}