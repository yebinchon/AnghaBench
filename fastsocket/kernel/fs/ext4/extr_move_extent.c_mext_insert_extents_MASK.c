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
struct inode {int dummy; } ;
struct ext4_extent_header {int /*<<< orphan*/  eh_entries; int /*<<< orphan*/  eh_max; } ;
struct ext4_extent {scalar_t__ ee_len; } ;
struct ext4_ext_path {int p_depth; int /*<<< orphan*/  p_bh; struct ext4_extent_header* p_hdr; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct inode*,struct ext4_extent*,struct ext4_extent*,struct ext4_extent*,struct ext4_extent*,struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC5 (struct ext4_extent*,struct ext4_extent*,struct ext4_extent*,struct ext4_extent*,struct ext4_extent*,struct ext4_extent_header*,int) ; 

__attribute__((used)) static int
FUNC6(handle_t *handle, struct inode *orig_inode,
			 struct ext4_ext_path *orig_path,
			 struct ext4_extent *o_start,
			 struct ext4_extent *o_end,
			 struct ext4_extent *start_ext,
			 struct ext4_extent *new_ext,
			 struct ext4_extent *end_ext)
{
	struct  ext4_extent_header *eh;
	unsigned long need_slots, slots_range;
	int	range_to_move, depth, ret;

	/*
	 * The extents need to be inserted
	 * start_extent + new_extent + end_extent.
	 */
	need_slots = (start_ext->ee_len ? 1 : 0) + (end_ext->ee_len ? 1 : 0) +
		(new_ext->ee_len ? 1 : 0);

	/* The number of slots between start and end */
	slots_range = ((unsigned long)(o_end + 1) - (unsigned long)o_start + 1)
		/ sizeof(struct ext4_extent);

	/* Range to move the end of extent */
	range_to_move = need_slots - slots_range;
	depth = orig_path->p_depth;
	orig_path += depth;
	eh = orig_path->p_hdr;

	if (depth) {
		/* Register to journal */
		ret = FUNC1(handle, orig_path->p_bh);
		if (ret)
			return ret;
	}

	/* Expansion */
	if (range_to_move > 0 &&
		(range_to_move > FUNC3(eh->eh_max)
			- FUNC3(eh->eh_entries))) {

		ret = FUNC4(handle, orig_inode, o_start,
					o_end, start_ext, new_ext, end_ext);
		if (ret < 0)
			return ret;
	} else
		FUNC5(o_start, o_end, start_ext, new_ext,
						end_ext, eh, range_to_move);

	if (depth) {
		ret = FUNC0(handle, orig_inode,
						 orig_path->p_bh);
		if (ret)
			return ret;
	} else {
		ret = FUNC2(handle, orig_inode);
		if (ret < 0)
			return ret;
	}

	return 0;
}