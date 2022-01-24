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
typedef  scalar_t__ u64 ;
struct btrfs_free_space_ctl {int /*<<< orphan*/  tree_lock; } ;
struct btrfs_free_space {scalar_t__ offset; scalar_t__ bytes; int /*<<< orphan*/  bitmap; } ;
struct btrfs_block_group_cache {struct btrfs_free_space_ctl* free_space_ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct btrfs_block_group_cache*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  btrfs_free_space_cachep ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct btrfs_free_space*) ; 
 int FUNC4 (struct btrfs_free_space_ctl*,struct btrfs_free_space*) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (struct btrfs_free_space_ctl*,scalar_t__) ; 
 int FUNC7 (struct btrfs_free_space_ctl*,struct btrfs_free_space*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct btrfs_free_space* FUNC10 (struct btrfs_free_space_ctl*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_free_space_ctl*,struct btrfs_free_space*) ; 

int FUNC12(struct btrfs_block_group_cache *block_group,
			    u64 offset, u64 bytes)
{
	struct btrfs_free_space_ctl *ctl = block_group->free_space_ctl;
	struct btrfs_free_space *info;
	int ret = 0;

	FUNC8(&ctl->tree_lock);

again:
	if (!bytes)
		goto out_lock;

	info = FUNC10(ctl, offset, 0, 0);
	if (!info) {
		/*
		 * oops didn't find an extent that matched the space we wanted
		 * to remove, look for a bitmap instead
		 */
		info = FUNC10(ctl, FUNC6(ctl, offset),
					  1, 0);
		if (!info) {
			/* the tree logging code might be calling us before we
			 * have fully loaded the free space rbtree for this
			 * block group.  So it is possible the entry won't
			 * be in the rbtree yet at all.  The caching code
			 * will make sure not to put it in the rbtree if
			 * the logging code has pinned it.
			 */
			goto out_lock;
		}
	}

	if (!info->bitmap) {
		FUNC11(ctl, info);
		if (offset == info->offset) {
			u64 to_free = FUNC5(bytes, info->bytes);

			info->bytes -= to_free;
			info->offset += to_free;
			if (info->bytes) {
				ret = FUNC4(ctl, info);
				FUNC1(ret);
			} else {
				FUNC3(btrfs_free_space_cachep, info);
			}

			offset += to_free;
			bytes -= to_free;
			goto again;
		} else {
			u64 old_end = info->bytes + info->offset;

			info->bytes = offset - info->offset;
			ret = FUNC4(ctl, info);
			FUNC1(ret);
			if (ret)
				goto out_lock;

			/* Not enough bytes in this entry to satisfy us */
			if (old_end < offset + bytes) {
				bytes -= old_end - offset;
				offset = old_end;
				goto again;
			} else if (old_end == offset + bytes) {
				/* all done */
				goto out_lock;
			}
			FUNC9(&ctl->tree_lock);

			ret = FUNC2(block_group, offset + bytes,
						   old_end - (offset + bytes));
			FUNC1(ret);
			goto out;
		}
	}

	ret = FUNC7(ctl, info, &offset, &bytes);
	if (ret == -EAGAIN)
		goto again;
	FUNC0(ret); /* logic error */
out_lock:
	FUNC9(&ctl->tree_lock);
out:
	return ret;
}