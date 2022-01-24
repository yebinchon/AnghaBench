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
typedef  void* u64 ;
struct super_block {unsigned int s_flags; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_fs_info {unsigned long mount_opt; unsigned long compress_type; int thread_pool_size; unsigned int metadata_ratio; void* alloc_start; void* max_inline; int /*<<< orphan*/  super_copy; TYPE_1__* fs_devices; struct btrfs_root* tree_root; } ;
struct TYPE_2__ {scalar_t__ rw_devices; } ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int MS_RDONLY ; 
 int FUNC0 (struct btrfs_fs_info*) ; 
 int FUNC1 (struct btrfs_root*) ; 
 int FUNC2 (struct btrfs_root*,char*) ; 
 int FUNC3 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_fs_info*,int,int) ; 
 int FUNC5 (struct btrfs_fs_info*) ; 
 struct btrfs_fs_info* FUNC6 (struct super_block*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct super_block *sb, int *flags, char *data)
{
	struct btrfs_fs_info *fs_info = FUNC6(sb);
	struct btrfs_root *root = fs_info->tree_root;
	unsigned old_flags = sb->s_flags;
	unsigned long old_opts = fs_info->mount_opt;
	unsigned long old_compress_type = fs_info->compress_type;
	u64 old_max_inline = fs_info->max_inline;
	u64 old_alloc_start = fs_info->alloc_start;
	int old_thread_pool_size = fs_info->thread_pool_size;
	unsigned int old_metadata_ratio = fs_info->metadata_ratio;
	int ret;

	ret = FUNC2(root, data);
	if (ret) {
		ret = -EINVAL;
		goto restore;
	}

	FUNC4(fs_info,
		fs_info->thread_pool_size, old_thread_pool_size);

	if ((*flags & MS_RDONLY) == (sb->s_flags & MS_RDONLY))
		return 0;

	if (*flags & MS_RDONLY) {
		sb->s_flags |= MS_RDONLY;

		ret = FUNC1(root);
		if (ret)
			goto restore;
	} else {
		if (fs_info->fs_devices->rw_devices == 0) {
			ret = -EACCES;
			goto restore;
		}

		if (FUNC7(fs_info->super_copy) != 0) {
			ret = -EINVAL;
			goto restore;
		}

		ret = FUNC0(fs_info);
		if (ret)
			goto restore;

		/* recover relocation */
		ret = FUNC3(root);
		if (ret)
			goto restore;

		ret = FUNC5(fs_info);
		if (ret)
			goto restore;

		sb->s_flags &= ~MS_RDONLY;
	}

	return 0;

restore:
	/* We've hit an error - don't reset MS_RDONLY */
	if (sb->s_flags & MS_RDONLY)
		old_flags |= MS_RDONLY;
	sb->s_flags = old_flags;
	fs_info->mount_opt = old_opts;
	fs_info->compress_type = old_compress_type;
	fs_info->max_inline = old_max_inline;
	fs_info->alloc_start = old_alloc_start;
	FUNC4(fs_info,
		old_thread_pool_size, fs_info->thread_pool_size);
	fs_info->metadata_ratio = old_metadata_ratio;
	return ret;
}