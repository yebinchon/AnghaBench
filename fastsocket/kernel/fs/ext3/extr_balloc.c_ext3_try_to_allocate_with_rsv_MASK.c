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
struct ext3_reserve_window_node {unsigned long rsv_goal_size; int rsv_end; int rsv_start; unsigned long rsv_alloc_hit; int /*<<< orphan*/  rsv_window; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int ext3_grpblk_t ;
typedef  int ext3_fsblk_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_rsv_window_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct super_block*) ; 
 TYPE_1__* FUNC3 (struct super_block*) ; 
 int FUNC4 (struct ext3_reserve_window_node*,int,struct super_block*,unsigned int,struct buffer_head*) ; 
 int FUNC5 (struct super_block*,unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC9 (struct super_block*,int /*<<< orphan*/ *,unsigned int,struct buffer_head*,int,unsigned long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,unsigned int,struct super_block*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ext3_reserve_window_node*,struct super_block*,unsigned long) ; 

__attribute__((used)) static ext3_grpblk_t
FUNC14(struct super_block *sb, handle_t *handle,
			unsigned int group, struct buffer_head *bitmap_bh,
			ext3_grpblk_t grp_goal,
			struct ext3_reserve_window_node * my_rsv,
			unsigned long *count, int *errp)
{
	ext3_fsblk_t group_first_block, group_last_block;
	ext3_grpblk_t ret = 0;
	int fatal;
	unsigned long num = *count;

	*errp = 0;

	/*
	 * Make sure we use undo access for the bitmap, because it is critical
	 * that we do the frozen_data COW on bitmap buffers in all cases even
	 * if the buffer is in BJ_Forget state in the committing transaction.
	 */
	FUNC0(bitmap_bh, "get undo access for new block");
	fatal = FUNC7(handle, bitmap_bh);
	if (fatal) {
		*errp = fatal;
		return -1;
	}

	/*
	 * we don't deal with reservation when
	 * filesystem is mounted without reservation
	 * or the file is not a regular file
	 * or last attempt to allocate a block with reservation turned on failed
	 */
	if (my_rsv == NULL ) {
		ret = FUNC9(sb, handle, group, bitmap_bh,
						grp_goal, count, NULL);
		goto out;
	}
	/*
	 * grp_goal is a group relative block number (if there is a goal)
	 * 0 <= grp_goal < EXT3_BLOCKS_PER_GROUP(sb)
	 * first block is a filesystem wide block number
	 * first block is the block number of the first block in this group
	 */
	group_first_block = FUNC5(sb, group);
	group_last_block = group_first_block + (FUNC2(sb) - 1);

	/*
	 * Basically we will allocate a new block from inode's reservation
	 * window.
	 *
	 * We need to allocate a new reservation window, if:
	 * a) inode does not have a reservation window; or
	 * b) last attempt to allocate a block from existing reservation
	 *    failed; or
	 * c) we come here with a goal and with a reservation window
	 *
	 * We do not need to allocate a new reservation window if we come here
	 * at the beginning with a goal and the goal is inside the window, or
	 * we don't have a goal but already have a reservation window.
	 * then we could go to allocate from the reservation window directly.
	 */
	while (1) {
		if (FUNC11(&my_rsv->rsv_window) || (ret < 0) ||
			!FUNC10(&my_rsv->rsv_window,
						grp_goal, group, sb)) {
			if (my_rsv->rsv_goal_size < *count)
				my_rsv->rsv_goal_size = *count;
			ret = FUNC4(my_rsv, grp_goal, sb,
							group, bitmap_bh);
			if (ret < 0)
				break;			/* failed */

			if (!FUNC10(&my_rsv->rsv_window,
							grp_goal, group, sb))
				grp_goal = -1;
		} else if (grp_goal >= 0) {
			int curr = my_rsv->rsv_end -
					(grp_goal + group_first_block) + 1;

			if (curr < *count)
				FUNC13(my_rsv, sb,
							*count - curr);
		}

		if ((my_rsv->rsv_start > group_last_block) ||
				(my_rsv->rsv_end < group_first_block)) {
			FUNC12(&FUNC3(sb)->s_rsv_window_root, 1);
			FUNC1();
		}
		ret = FUNC9(sb, handle, group, bitmap_bh,
					   grp_goal, &num, &my_rsv->rsv_window);
		if (ret >= 0) {
			my_rsv->rsv_alloc_hit += num;
			*count = num;
			break;				/* succeed */
		}
		num = *count;
	}
out:
	if (ret >= 0) {
		FUNC0(bitmap_bh, "journal_dirty_metadata for "
					"bitmap block");
		fatal = FUNC6(handle, bitmap_bh);
		if (fatal) {
			*errp = fatal;
			return -1;
		}
		return ret;
	}

	FUNC0(bitmap_bh, "journal_release_buffer");
	FUNC8(handle, bitmap_bh);
	return ret;
}