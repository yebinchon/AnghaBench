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
typedef  int u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;

/* Variables and functions */
 int FUNC0 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,int,int,struct extent_buffer*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*) ; 
 int FUNC2 (struct btrfs_trans_handle*,struct btrfs_root*,struct extent_buffer*,struct extent_buffer*,int,struct extent_buffer**) ; 
 int FUNC3 (struct extent_buffer*) ; 
 int FUNC4 (struct btrfs_root*,struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*) ; 
 struct extent_buffer* FUNC9 (struct btrfs_root*,struct extent_buffer*,int) ; 

__attribute__((used)) static int FUNC10(struct btrfs_trans_handle *trans, struct btrfs_root
			   *root, struct btrfs_path *path,
			   int min_data_size, int data_size,
			   int empty, u32 min_slot)
{
	struct extent_buffer *left = path->nodes[0];
	struct extent_buffer *right;
	struct extent_buffer *upper;
	int slot;
	int free_space;
	u32 left_nritems;
	int ret;

	if (!path->nodes[1])
		return 1;

	slot = path->slots[1];
	upper = path->nodes[1];
	if (slot >= FUNC3(upper) - 1)
		return 1;

	FUNC1(path->nodes[1]);

	right = FUNC9(root, upper, slot + 1);
	if (right == NULL)
		return 1;

	FUNC6(right);
	FUNC5(right);

	free_space = FUNC4(root, right);
	if (free_space < data_size)
		goto out_unlock;

	/* cow and double check */
	ret = FUNC2(trans, root, right, upper,
			      slot + 1, &right);
	if (ret)
		goto out_unlock;

	free_space = FUNC4(root, right);
	if (free_space < data_size)
		goto out_unlock;

	left_nritems = FUNC3(left);
	if (left_nritems == 0)
		goto out_unlock;

	return FUNC0(trans, root, path, min_data_size, empty,
				right, free_space, left_nritems, min_slot);
out_unlock:
	FUNC7(right);
	FUNC8(right);
	return 1;
}