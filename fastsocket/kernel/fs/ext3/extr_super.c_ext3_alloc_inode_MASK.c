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
struct super_block {int dummy; } ;
struct inode {int i_version; } ;
struct ext3_inode_info {struct inode vfs_inode; int /*<<< orphan*/  i_sync_tid; int /*<<< orphan*/  i_datasync_tid; int /*<<< orphan*/ * i_block_alloc_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ext3_inode_cachep ; 
 struct ext3_inode_info* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct inode *FUNC2(struct super_block *sb)
{
	struct ext3_inode_info *ei;

	ei = FUNC1(ext3_inode_cachep, GFP_NOFS);
	if (!ei)
		return NULL;
	ei->i_block_alloc_info = NULL;
	ei->vfs_inode.i_version = 1;
	FUNC0(&ei->i_datasync_tid, 0);
	FUNC0(&ei->i_sync_tid, 0);
	return &ei->vfs_inode;
}