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
typedef  int u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct btrfs_chunk {int dummy; } ;
struct btrfs_balance_args {int flags; } ;
struct btrfs_balance_control {int flags; int /*<<< orphan*/  fs_info; struct btrfs_balance_args meta; struct btrfs_balance_args sys; struct btrfs_balance_args data; } ;
struct TYPE_2__ {struct btrfs_balance_control* balance_ctl; } ;

/* Variables and functions */
 int BTRFS_BALANCE_ARGS_DEVID ; 
 int BTRFS_BALANCE_ARGS_DRANGE ; 
 int BTRFS_BALANCE_ARGS_PROFILES ; 
 int BTRFS_BALANCE_ARGS_SOFT ; 
 int BTRFS_BALANCE_ARGS_USAGE ; 
 int BTRFS_BALANCE_ARGS_VRANGE ; 
 int BTRFS_BALANCE_TYPE_MASK ; 
 int BTRFS_BLOCK_GROUP_DATA ; 
 int BTRFS_BLOCK_GROUP_METADATA ; 
 int BTRFS_BLOCK_GROUP_SYSTEM ; 
 int BTRFS_BLOCK_GROUP_TYPE_MASK ; 
 int FUNC0 (struct extent_buffer*,struct btrfs_chunk*) ; 
 scalar_t__ FUNC1 (struct extent_buffer*,struct btrfs_chunk*,struct btrfs_balance_args*) ; 
 scalar_t__ FUNC2 (struct extent_buffer*,struct btrfs_chunk*,int,struct btrfs_balance_args*) ; 
 scalar_t__ FUNC3 (int,struct btrfs_balance_args*) ; 
 scalar_t__ FUNC4 (int,struct btrfs_balance_args*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,struct btrfs_balance_args*) ; 
 scalar_t__ FUNC6 (struct extent_buffer*,struct btrfs_chunk*,int,struct btrfs_balance_args*) ; 

__attribute__((used)) static int FUNC7(struct btrfs_root *root,
				struct extent_buffer *leaf,
				struct btrfs_chunk *chunk, u64 chunk_offset)
{
	struct btrfs_balance_control *bctl = root->fs_info->balance_ctl;
	struct btrfs_balance_args *bargs = NULL;
	u64 chunk_type = FUNC0(leaf, chunk);

	/* type filter */
	if (!((chunk_type & BTRFS_BLOCK_GROUP_TYPE_MASK) &
	      (bctl->flags & BTRFS_BALANCE_TYPE_MASK))) {
		return 0;
	}

	if (chunk_type & BTRFS_BLOCK_GROUP_DATA)
		bargs = &bctl->data;
	else if (chunk_type & BTRFS_BLOCK_GROUP_SYSTEM)
		bargs = &bctl->sys;
	else if (chunk_type & BTRFS_BLOCK_GROUP_METADATA)
		bargs = &bctl->meta;

	/* profiles filter */
	if ((bargs->flags & BTRFS_BALANCE_ARGS_PROFILES) &&
	    FUNC3(chunk_type, bargs)) {
		return 0;
	}

	/* usage filter */
	if ((bargs->flags & BTRFS_BALANCE_ARGS_USAGE) &&
	    FUNC5(bctl->fs_info, chunk_offset, bargs)) {
		return 0;
	}

	/* devid filter */
	if ((bargs->flags & BTRFS_BALANCE_ARGS_DEVID) &&
	    FUNC1(leaf, chunk, bargs)) {
		return 0;
	}

	/* drange filter, makes sense only with devid filter */
	if ((bargs->flags & BTRFS_BALANCE_ARGS_DRANGE) &&
	    FUNC2(leaf, chunk, chunk_offset, bargs)) {
		return 0;
	}

	/* vrange filter */
	if ((bargs->flags & BTRFS_BALANCE_ARGS_VRANGE) &&
	    FUNC6(leaf, chunk, chunk_offset, bargs)) {
		return 0;
	}

	/* soft profile changing mode */
	if ((bargs->flags & BTRFS_BALANCE_ARGS_SOFT) &&
	    FUNC4(chunk_type, bargs)) {
		return 0;
	}

	return 1;
}