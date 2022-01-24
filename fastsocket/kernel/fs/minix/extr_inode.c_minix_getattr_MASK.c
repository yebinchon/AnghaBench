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
struct super_block {int s_blocksize; } ;
struct kstat {int blocks; int blksize; int /*<<< orphan*/  size; } ;
struct inode {struct super_block* i_sb; } ;
struct dentry {int /*<<< orphan*/  d_inode; TYPE_1__* d_parent; } ;
struct TYPE_2__ {struct inode* d_inode; } ;

/* Variables and functions */
 int BLOCK_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MINIX_V1 ; 
 int FUNC1 (int /*<<< orphan*/ ,struct super_block*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct kstat*) ; 

int FUNC4(struct vfsmount *mnt, struct dentry *dentry, struct kstat *stat)
{
	struct inode *dir = dentry->d_parent->d_inode;
	struct super_block *sb = dir->i_sb;
	FUNC3(dentry->d_inode, stat);
	if (FUNC0(dentry->d_inode) == MINIX_V1)
		stat->blocks = (BLOCK_SIZE / 512) * FUNC1(stat->size, sb);
	else
		stat->blocks = (sb->s_blocksize / 512) * FUNC2(stat->size, sb);
	stat->blksize = sb->s_blocksize;
	return 0;
}