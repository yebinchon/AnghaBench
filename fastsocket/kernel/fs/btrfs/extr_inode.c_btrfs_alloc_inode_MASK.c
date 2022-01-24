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
typedef  scalar_t__ u64 ;
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/  i_data; } ;
struct TYPE_2__ {int track_uptodate; } ;
struct btrfs_inode {int /*<<< orphan*/  rb_node; int /*<<< orphan*/  ordered_operations; int /*<<< orphan*/  delalloc_inodes; int /*<<< orphan*/  ordered_tree; int /*<<< orphan*/  delalloc_mutex; int /*<<< orphan*/  log_mutex; TYPE_1__ io_failure_tree; TYPE_1__ io_tree; int /*<<< orphan*/  extent_tree; struct inode vfs_inode; int /*<<< orphan*/ * delayed_node; int /*<<< orphan*/  force_compress; scalar_t__ runtime_flags; scalar_t__ reserved_extents; scalar_t__ outstanding_extents; int /*<<< orphan*/  lock; scalar_t__ last_unlink_trans; scalar_t__ index_cnt; scalar_t__ csum_bytes; scalar_t__ flags; scalar_t__ disk_i_size; scalar_t__ delalloc_bytes; scalar_t__ logged_trans; scalar_t__ last_sub_trans; scalar_t__ last_trans; scalar_t__ generation; int /*<<< orphan*/ * space_info; int /*<<< orphan*/ * root; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_COMPRESS_NONE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  btrfs_inode_cachep ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct btrfs_inode* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct inode *FUNC8(struct super_block *sb)
{
	struct btrfs_inode *ei;
	struct inode *inode;

	ei = FUNC5(btrfs_inode_cachep, GFP_NOFS);
	if (!ei)
		return NULL;

	ei->root = NULL;
	ei->space_info = NULL;
	ei->generation = 0;
	ei->last_trans = 0;
	ei->last_sub_trans = 0;
	ei->logged_trans = 0;
	ei->delalloc_bytes = 0;
	ei->disk_i_size = 0;
	ei->flags = 0;
	ei->csum_bytes = 0;
	ei->index_cnt = (u64)-1;
	ei->last_unlink_trans = 0;

	FUNC7(&ei->lock);
	ei->outstanding_extents = 0;
	ei->reserved_extents = 0;

	ei->runtime_flags = 0;
	ei->force_compress = BTRFS_COMPRESS_NONE;

	ei->delayed_node = NULL;

	inode = &ei->vfs_inode;
	FUNC4(&ei->extent_tree);
	FUNC3(&ei->io_tree, &inode->i_data);
	FUNC3(&ei->io_failure_tree, &inode->i_data);
	ei->io_tree.track_uptodate = 1;
	ei->io_failure_tree.track_uptodate = 1;
	FUNC6(&ei->log_mutex);
	FUNC6(&ei->delalloc_mutex);
	FUNC2(&ei->ordered_tree);
	FUNC0(&ei->delalloc_inodes);
	FUNC0(&ei->ordered_operations);
	FUNC1(&ei->rb_node);

	return inode;
}