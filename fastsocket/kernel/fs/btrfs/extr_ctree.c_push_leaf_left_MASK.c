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
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;

/* Variables and functions */
 int ENOSPC ; 
 int FUNC0 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,int,int,struct extent_buffer*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*) ; 
 int FUNC2 (struct btrfs_trans_handle*,struct btrfs_root*,struct extent_buffer*,struct extent_buffer*,int,struct extent_buffer**) ; 
 scalar_t__ FUNC3 (struct extent_buffer*) ; 
 int FUNC4 (struct btrfs_root*,struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*) ; 
 struct extent_buffer* FUNC9 (struct btrfs_root*,struct extent_buffer*,int) ; 

__attribute__((used)) static int FUNC10(struct btrfs_trans_handle *trans, struct btrfs_root
			  *root, struct btrfs_path *path, int min_data_size,
			  int data_size, int empty, u32 max_slot)
{
	struct extent_buffer *right = path->nodes[0];
	struct extent_buffer *left;
	int slot;
	int free_space;
	u32 right_nritems;
	int ret = 0;

	slot = path->slots[1];
	if (slot == 0)
		return 1;
	if (!path->nodes[1])
		return 1;

	right_nritems = FUNC3(right);
	if (right_nritems == 0)
		return 1;

	FUNC1(path->nodes[1]);

	left = FUNC9(root, path->nodes[1], slot - 1);
	if (left == NULL)
		return 1;

	FUNC6(left);
	FUNC5(left);

	free_space = FUNC4(root, left);
	if (free_space < data_size) {
		ret = 1;
		goto out;
	}

	/* cow and double check */
	ret = FUNC2(trans, root, left,
			      path->nodes[1], slot - 1, &left);
	if (ret) {
		/* we hit -ENOSPC, but it isn't fatal here */
		if (ret == -ENOSPC)
			ret = 1;
		goto out;
	}

	free_space = FUNC4(root, left);
	if (free_space < data_size) {
		ret = 1;
		goto out;
	}

	return FUNC0(trans, root, path, min_data_size,
			       empty, left, free_space, right_nritems,
			       max_slot);
out:
	FUNC7(left);
	FUNC8(left);
	return ret;
}