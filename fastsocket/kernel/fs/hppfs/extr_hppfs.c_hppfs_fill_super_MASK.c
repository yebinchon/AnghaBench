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
struct vfsmount {TYPE_1__* mnt_sb; } ;
struct super_block {int s_blocksize; int s_blocksize_bits; int /*<<< orphan*/  s_root; struct vfsmount* s_fs_info; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_magic; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_root; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HPPFS_SUPER_MAGIC ; 
 scalar_t__ FUNC0 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct vfsmount* FUNC2 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 struct inode* FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hppfs_sbops ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct vfsmount*) ; 

__attribute__((used)) static int FUNC6(struct super_block *sb, void *d, int silent)
{
	struct inode *root_inode;
	struct vfsmount *proc_mnt;
	int err = -ENOENT;

	proc_mnt = FUNC2("proc", 0, "proc", NULL);
	if (FUNC0(proc_mnt))
		goto out;

	sb->s_blocksize = 1024;
	sb->s_blocksize_bits = 10;
	sb->s_magic = HPPFS_SUPER_MAGIC;
	sb->s_op = &hppfs_sbops;
	sb->s_fs_info = proc_mnt;

	err = -ENOMEM;
	root_inode = FUNC3(sb, proc_mnt->mnt_sb->s_root);
	if (!root_inode)
		goto out_mntput;

	sb->s_root = FUNC1(root_inode);
	if (!sb->s_root)
		goto out_iput;

	return 0;

 out_iput:
	FUNC4(root_inode);
 out_mntput:
	FUNC5(proc_mnt);
 out:
	return(err);
}