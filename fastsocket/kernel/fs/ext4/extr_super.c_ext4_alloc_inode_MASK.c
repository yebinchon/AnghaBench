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
struct super_block {int dummy; } ;
struct TYPE_2__ {scalar_t__ writeback_index; } ;
struct inode {int i_version; TYPE_1__ i_data; } ;
struct ext4_inode_info {struct inode vfs_inode; int /*<<< orphan*/  i_aiodio_unwritten; scalar_t__ i_datasync_tid; scalar_t__ i_sync_tid; int /*<<< orphan*/ * cur_aio_dio; int /*<<< orphan*/  i_completed_io_lock; int /*<<< orphan*/  i_aio_dio_complete_list; scalar_t__ i_reserved_quota; int /*<<< orphan*/  i_block_reservation_lock; scalar_t__ i_delalloc_reserved_flag; scalar_t__ i_da_metadata_calc_len; scalar_t__ i_allocated_meta_blocks; scalar_t__ i_reserved_meta_blocks; scalar_t__ i_reserved_data_blocks; int /*<<< orphan*/  jinode; int /*<<< orphan*/  i_prealloc_lock; int /*<<< orphan*/  i_prealloc_list; int /*<<< orphan*/  i_cached_extent; } ;
struct ext4_ext_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ext4_inode_cachep ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct inode*) ; 
 struct ext4_inode_info* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct inode *FUNC6(struct super_block *sb)
{
	struct ext4_inode_info *ei;

	ei = FUNC3(ext4_inode_cachep, GFP_NOFS);
	if (!ei)
		return NULL;

	ei->vfs_inode.i_version = 1;
	ei->vfs_inode.i_data.writeback_index = 0;
	FUNC4(&ei->i_cached_extent, 0, sizeof(struct ext4_ext_cache));
	FUNC0(&ei->i_prealloc_list);
	FUNC5(&ei->i_prealloc_lock);
	/*
	 * Note:  We can be called before EXT4_SB(sb)->s_journal is set,
	 * therefore it can be null here.  Don't check it, just initialize
	 * jinode.
	 */
	FUNC2(&ei->jinode, &ei->vfs_inode);
	ei->i_reserved_data_blocks = 0;
	ei->i_reserved_meta_blocks = 0;
	ei->i_allocated_meta_blocks = 0;
	ei->i_da_metadata_calc_len = 0;
	ei->i_delalloc_reserved_flag = 0;
	FUNC5(&(ei->i_block_reservation_lock));
#ifdef CONFIG_QUOTA
	ei->i_reserved_quota = 0;
#endif
	FUNC0(&ei->i_aio_dio_complete_list);
	FUNC5(&ei->i_completed_io_lock);
	ei->cur_aio_dio = NULL;
	ei->i_sync_tid = 0;
	ei->i_datasync_tid = 0;
	FUNC1(&ei->i_aiodio_unwritten, 0);

	return &ei->vfs_inode;
}