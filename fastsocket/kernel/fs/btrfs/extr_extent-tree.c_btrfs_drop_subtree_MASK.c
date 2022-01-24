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
struct walk_control {int* refs; int level; int shared_level; int keep_locks; int for_reloc; int /*<<< orphan*/  reada_count; scalar_t__ update_ref; int /*<<< orphan*/  stage; int /*<<< orphan*/ * flags; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct TYPE_2__ {scalar_t__ objectid; } ;
struct btrfs_root {TYPE_1__ root_key; } ;
struct btrfs_path {int /*<<< orphan*/ * locks; scalar_t__* slots; struct extent_buffer** nodes; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_BLOCK_FLAG_FULL_BACKREF ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_root*) ; 
 scalar_t__ BTRFS_TREE_RELOC_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_WRITE_LOCK_BLOCKING ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DROP_REFERENCE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 struct btrfs_path* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_path*) ; 
 int FUNC5 (struct extent_buffer*) ; 
 scalar_t__ FUNC6 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (struct walk_control*) ; 
 struct walk_control* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct walk_control*) ; 
 int FUNC11 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct walk_control*,int) ; 

int FUNC12(struct btrfs_trans_handle *trans,
			struct btrfs_root *root,
			struct extent_buffer *node,
			struct extent_buffer *parent)
{
	struct btrfs_path *path;
	struct walk_control *wc;
	int level;
	int parent_level;
	int ret = 0;
	int wret;

	FUNC1(root->root_key.objectid != BTRFS_TREE_RELOC_OBJECTID);

	path = FUNC2();
	if (!path)
		return -ENOMEM;

	wc = FUNC9(sizeof(*wc), GFP_NOFS);
	if (!wc) {
		FUNC4(path);
		return -ENOMEM;
	}

	FUNC3(parent);
	parent_level = FUNC5(parent);
	FUNC7(parent);
	path->nodes[parent_level] = parent;
	path->slots[parent_level] = FUNC6(parent);

	FUNC3(node);
	level = FUNC5(node);
	path->nodes[level] = node;
	path->slots[level] = 0;
	path->locks[level] = BTRFS_WRITE_LOCK_BLOCKING;

	wc->refs[parent_level] = 1;
	wc->flags[parent_level] = BTRFS_BLOCK_FLAG_FULL_BACKREF;
	wc->level = level;
	wc->shared_level = -1;
	wc->stage = DROP_REFERENCE;
	wc->update_ref = 0;
	wc->keep_locks = 1;
	wc->for_reloc = 1;
	wc->reada_count = FUNC0(root);

	while (1) {
		wret = FUNC10(trans, root, path, wc);
		if (wret < 0) {
			ret = wret;
			break;
		}

		wret = FUNC11(trans, root, path, wc, parent_level);
		if (wret < 0)
			ret = wret;
		if (wret != 0)
			break;
	}

	FUNC8(wc);
	FUNC4(path);
	return ret;
}