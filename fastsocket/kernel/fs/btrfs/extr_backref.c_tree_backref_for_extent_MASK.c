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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_tree_block_info {int dummy; } ;
struct btrfs_extent_item {int dummy; } ;
struct btrfs_extent_inline_ref {int dummy; } ;

/* Variables and functions */
 int BTRFS_SHARED_BLOCK_REF_KEY ; 
 int BTRFS_TREE_BLOCK_REF_KEY ; 
 int FUNC0 (unsigned long*,struct extent_buffer*,struct btrfs_extent_item*,int /*<<< orphan*/ ,struct btrfs_extent_inline_ref**,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*,struct btrfs_extent_inline_ref*) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*,struct btrfs_tree_block_info*) ; 

int FUNC3(unsigned long *ptr, struct extent_buffer *eb,
				struct btrfs_extent_item *ei, u32 item_size,
				u64 *out_root, u8 *out_level)
{
	int ret;
	int type;
	struct btrfs_tree_block_info *info;
	struct btrfs_extent_inline_ref *eiref;

	if (*ptr == (unsigned long)-1)
		return 1;

	while (1) {
		ret = FUNC0(ptr, eb, ei, item_size,
						&eiref, &type);
		if (ret < 0)
			return ret;

		if (type == BTRFS_TREE_BLOCK_REF_KEY ||
		    type == BTRFS_SHARED_BLOCK_REF_KEY)
			break;

		if (ret == 1)
			return 1;
	}

	/* we can treat both ref types equally here */
	info = (struct btrfs_tree_block_info *)(ei + 1);
	*out_root = FUNC1(eb, eiref);
	*out_level = FUNC2(eb, info);

	if (ret == 1)
		*ptr = (unsigned long)-1;

	return 0;
}