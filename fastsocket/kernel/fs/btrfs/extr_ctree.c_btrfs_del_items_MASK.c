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
struct btrfs_root {struct extent_buffer* node; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_map_token {int dummy; } ;
struct btrfs_item {int dummy; } ;
struct btrfs_disk_key {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct btrfs_root*) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct extent_buffer*) ; 
 scalar_t__ FUNC2 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_map_token*) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*,struct btrfs_disk_key*,int /*<<< orphan*/ ) ; 
 struct btrfs_item* FUNC5 (struct extent_buffer*,int) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (struct extent_buffer*,int) ; 
 scalar_t__ FUNC8 (struct extent_buffer*,int) ; 
 scalar_t__ FUNC9 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC11 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC14 (struct extent_buffer*,struct btrfs_item*,int,struct btrfs_map_token*) ; 
 int FUNC15 (struct extent_buffer*,struct btrfs_item*,struct btrfs_map_token*) ; 
 int /*<<< orphan*/  FUNC16 (struct btrfs_trans_handle*,struct btrfs_root*,struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC17 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC18 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct btrfs_disk_key*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct extent_buffer*) ; 
 int FUNC20 (struct btrfs_root*,struct extent_buffer*) ; 
 int FUNC21 (struct extent_buffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (struct extent_buffer*,scalar_t__,scalar_t__,int) ; 
 int FUNC23 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,int,int,int,int) ; 
 int FUNC24 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,int,int,int,int /*<<< orphan*/ ) ; 

int FUNC25(struct btrfs_trans_handle *trans, struct btrfs_root *root,
		    struct btrfs_path *path, int slot, int nr)
{
	struct extent_buffer *leaf;
	struct btrfs_item *item;
	int last_off;
	int dsize = 0;
	int ret = 0;
	int wret;
	int i;
	u32 nritems;
	struct btrfs_map_token token;

	FUNC3(&token);

	leaf = path->nodes[0];
	last_off = FUNC7(leaf, slot + nr - 1);

	for (i = 0; i < nr; i++)
		dsize += FUNC8(leaf, slot + i);

	nritems = FUNC2(leaf);

	if (slot + nr != nritems) {
		int data_end = FUNC20(root, leaf);

		FUNC22(leaf, FUNC9(leaf) +
			      data_end + dsize,
			      FUNC9(leaf) + data_end,
			      last_off - data_end);

		for (i = slot + nr; i < nritems; i++) {
			u32 ioff;

			item = FUNC5(leaf, i);
			ioff = FUNC15(leaf, item, &token);
			FUNC14(leaf, item,
						    ioff + dsize, &token);
		}

		FUNC22(leaf, FUNC6(slot),
			      FUNC6(slot + nr),
			      sizeof(struct btrfs_item) *
			      (nritems - slot - nr));
	}
	FUNC12(leaf, nritems - nr);
	nritems -= nr;

	/* delete the leaf if we've emptied it */
	if (nritems == 0) {
		if (leaf == root->node) {
			FUNC11(leaf, 0);
		} else {
			FUNC13(path);
			FUNC16(trans, root, leaf);
			FUNC1(trans, root, path, leaf);
		}
	} else {
		int used = FUNC21(leaf, 0, nritems);
		if (slot == 0) {
			struct btrfs_disk_key disk_key;

			FUNC4(leaf, &disk_key, 0);
			FUNC18(trans, root, path, &disk_key, 1);
		}

		/* delete the leaf if it is mostly empty */
		if (used < FUNC0(root) / 3) {
			/* push_leaf_left fixes the path.
			 * make sure the path still points to our leaf
			 * for possible call to del_ptr below
			 */
			slot = path->slots[1];
			FUNC17(leaf);

			FUNC13(path);
			wret = FUNC23(trans, root, path, 1, 1,
					      1, (u32)-1);
			if (wret < 0 && wret != -ENOSPC)
				ret = wret;

			if (path->nodes[0] == leaf &&
			    FUNC2(leaf)) {
				wret = FUNC24(trans, root, path, 1,
						       1, 1, 0);
				if (wret < 0 && wret != -ENOSPC)
					ret = wret;
			}

			if (FUNC2(leaf) == 0) {
				path->slots[1] = slot;
				FUNC1(trans, root, path, leaf);
				FUNC19(leaf);
				ret = 0;
			} else {
				/* if we're still in the path, make sure
				 * we're dirty.  Otherwise, one of the
				 * push_leaf functions must have already
				 * dirtied this buffer
				 */
				if (path->nodes[0] == leaf)
					FUNC10(leaf);
				FUNC19(leaf);
			}
		} else {
			FUNC10(leaf);
		}
	}
	return ret;
}