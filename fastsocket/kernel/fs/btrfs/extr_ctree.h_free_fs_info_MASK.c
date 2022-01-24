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
struct btrfs_fs_info {struct btrfs_fs_info* super_for_commit; struct btrfs_fs_info* super_copy; struct btrfs_fs_info* csum_root; struct btrfs_fs_info* dev_root; struct btrfs_fs_info* chunk_root; struct btrfs_fs_info* tree_root; struct btrfs_fs_info* extent_root; struct btrfs_fs_info* delayed_root; struct btrfs_fs_info* balance_ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_fs_info*) ; 

__attribute__((used)) static inline void FUNC1(struct btrfs_fs_info *fs_info)
{
	FUNC0(fs_info->balance_ctl);
	FUNC0(fs_info->delayed_root);
	FUNC0(fs_info->extent_root);
	FUNC0(fs_info->tree_root);
	FUNC0(fs_info->chunk_root);
	FUNC0(fs_info->dev_root);
	FUNC0(fs_info->csum_root);
	FUNC0(fs_info->super_copy);
	FUNC0(fs_info->super_for_commit);
	FUNC0(fs_info);
}