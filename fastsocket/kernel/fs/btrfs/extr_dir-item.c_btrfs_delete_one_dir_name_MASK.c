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
typedef  scalar_t__ u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int /*<<< orphan*/ * slots; struct extent_buffer** nodes; } ;
struct btrfs_dir_item {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*) ; 
 scalar_t__ FUNC1 (struct extent_buffer*,struct btrfs_dir_item*) ; 
 scalar_t__ FUNC2 (struct extent_buffer*,struct btrfs_dir_item*) ; 
 unsigned long FUNC3 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*,unsigned long,unsigned long,scalar_t__) ; 

int FUNC7(struct btrfs_trans_handle *trans,
			      struct btrfs_root *root,
			      struct btrfs_path *path,
			      struct btrfs_dir_item *di)
{

	struct extent_buffer *leaf;
	u32 sub_item_len;
	u32 item_len;
	int ret = 0;

	leaf = path->nodes[0];
	sub_item_len = sizeof(*di) + FUNC2(leaf, di) +
		FUNC1(leaf, di);
	item_len = FUNC4(leaf, path->slots[0]);
	if (sub_item_len == item_len) {
		ret = FUNC0(trans, root, path);
	} else {
		/* MARKER */
		unsigned long ptr = (unsigned long)di;
		unsigned long start;

		start = FUNC3(leaf, path->slots[0]);
		FUNC6(leaf, ptr, ptr + sub_item_len,
			item_len - (ptr + sub_item_len - start));
		FUNC5(trans, root, path,
				    item_len - sub_item_len, 1);
	}
	return ret;
}