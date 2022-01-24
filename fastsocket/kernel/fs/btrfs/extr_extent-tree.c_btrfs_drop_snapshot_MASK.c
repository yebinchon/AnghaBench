#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  objectid; } ;
struct btrfs_root_item {int drop_level; int /*<<< orphan*/  drop_progress; } ;
struct walk_control {int* refs; int level; int shared_level; scalar_t__ stage; int update_ref; int for_reloc; TYPE_4__* fs_info; int /*<<< orphan*/  commit_root; int /*<<< orphan*/  node; scalar_t__ in_radix; TYPE_1__ root_key; int /*<<< orphan*/  reada_count; scalar_t__ keep_locks; int /*<<< orphan*/ * flags; int /*<<< orphan*/  update_progress; struct btrfs_root_item root_item; } ;
struct btrfs_trans_handle {struct btrfs_block_rsv* block_rsv; } ;
struct btrfs_root {int* refs; int level; int shared_level; scalar_t__ stage; int update_ref; int for_reloc; TYPE_4__* fs_info; int /*<<< orphan*/  commit_root; int /*<<< orphan*/  node; scalar_t__ in_radix; TYPE_1__ root_key; int /*<<< orphan*/  reada_count; scalar_t__ keep_locks; int /*<<< orphan*/ * flags; int /*<<< orphan*/  update_progress; struct btrfs_root_item root_item; } ;
struct btrfs_path {int lowest_level; scalar_t__* slots; TYPE_2__** nodes; int /*<<< orphan*/ * locks; } ;
struct btrfs_key {int dummy; } ;
struct btrfs_block_rsv {int dummy; } ;
struct TYPE_12__ {struct walk_control* tree_root; } ;
struct TYPE_11__ {int /*<<< orphan*/  len; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_MAX_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (struct walk_control*) ; 
 int /*<<< orphan*/  BTRFS_TREE_RELOC_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_WRITE_LOCK_BLOCKING ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ DROP_REFERENCE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC2 (struct btrfs_trans_handle*) ; 
 int FUNC3 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_trans_handle*,struct walk_control*,int) ; 
 struct btrfs_path* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_trans_handle*,struct walk_control*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct btrfs_trans_handle*,struct walk_control*,TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_key*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_trans_handle*,struct walk_control*) ; 
 int FUNC12 (struct walk_control*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,struct walk_control*) ; 
 int /*<<< orphan*/  FUNC14 (struct btrfs_path*) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC16 (struct walk_control*) ; 
 int FUNC17 (struct btrfs_trans_handle*,struct walk_control*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct btrfs_path*) ; 
 int FUNC20 (int /*<<< orphan*/ *,struct walk_control*,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*) ; 
 scalar_t__ FUNC22 (struct btrfs_trans_handle*,struct walk_control*) ; 
 struct btrfs_trans_handle* FUNC23 (struct walk_control*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC27 (struct btrfs_path*,int /*<<< orphan*/ ) ; 
 int FUNC28 (struct btrfs_trans_handle*,struct walk_control*,TYPE_1__*,struct btrfs_root_item*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct walk_control*) ; 
 struct walk_control* FUNC31 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,struct btrfs_key*,int) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC34 (struct btrfs_trans_handle*,struct walk_control*,struct btrfs_path*,struct walk_control*) ; 
 int FUNC35 (struct btrfs_trans_handle*,struct walk_control*,struct btrfs_path*,struct walk_control*,int /*<<< orphan*/ ) ; 

int FUNC36(struct btrfs_root *root,
			 struct btrfs_block_rsv *block_rsv, int update_ref,
			 int for_reloc)
{
	struct btrfs_path *path;
	struct btrfs_trans_handle *trans;
	struct btrfs_root *tree_root = root->fs_info->tree_root;
	struct btrfs_root_item *root_item = &root->root_item;
	struct walk_control *wc;
	struct btrfs_key key;
	int err = 0;
	int ret;
	int level;

	path = FUNC6();
	if (!path) {
		err = -ENOMEM;
		goto out;
	}

	wc = FUNC31(sizeof(*wc), GFP_NOFS);
	if (!wc) {
		FUNC14(path);
		err = -ENOMEM;
		goto out;
	}

	trans = FUNC23(tree_root, 0);
	if (FUNC2(trans)) {
		err = FUNC3(trans);
		goto out_free;
	}

	if (block_rsv)
		trans->block_rsv = block_rsv;

	if (FUNC9(&root_item->drop_progress) == 0) {
		level = FUNC15(root->node);
		path->nodes[level] = FUNC16(root);
		FUNC21(path->nodes[level]);
		path->slots[level] = 0;
		path->locks[level] = BTRFS_WRITE_LOCK_BLOCKING;
		FUNC33(&wc->update_progress, 0,
		       sizeof(wc->update_progress));
	} else {
		FUNC10(&key, &root_item->drop_progress);
		FUNC32(&wc->update_progress, &key,
		       sizeof(wc->update_progress));

		level = root_item->drop_level;
		FUNC1(level == 0);
		path->lowest_level = level;
		ret = FUNC20(NULL, root, &key, path, 0, 0);
		path->lowest_level = 0;
		if (ret < 0) {
			err = ret;
			goto out_end_trans;
		}
		FUNC4(ret > 0);

		/*
		 * unlock our path, this is safe because only this
		 * function is allowed to delete this snapshot
		 */
		FUNC27(path, 0);

		level = FUNC15(root->node);
		while (1) {
			FUNC25(path->nodes[level]);
			FUNC21(path->nodes[level]);

			ret = FUNC17(trans, root,
						path->nodes[level]->start,
						path->nodes[level]->len,
						&wc->refs[level],
						&wc->flags[level]);
			if (ret < 0) {
				err = ret;
				goto out_end_trans;
			}
			FUNC1(wc->refs[level] == 0);

			if (level == root_item->drop_level)
				break;

			FUNC26(path->nodes[level]);
			FUNC4(wc->refs[level] != 1);
			level--;
		}
	}

	wc->level = level;
	wc->shared_level = -1;
	wc->stage = DROP_REFERENCE;
	wc->update_ref = update_ref;
	wc->keep_locks = 0;
	wc->for_reloc = for_reloc;
	wc->reada_count = FUNC0(root);

	while (1) {
		ret = FUNC34(trans, root, path, wc);
		if (ret < 0) {
			err = ret;
			break;
		}

		ret = FUNC35(trans, root, path, wc, BTRFS_MAX_LEVEL);
		if (ret < 0) {
			err = ret;
			break;
		}

		if (ret > 0) {
			FUNC1(wc->stage != DROP_REFERENCE);
			break;
		}

		if (wc->stage == DROP_REFERENCE) {
			level = wc->level;
			FUNC18(path->nodes[level],
				       &root_item->drop_progress,
				       path->slots[level]);
			root_item->drop_level = level;
		}

		FUNC1(wc->level == 0);
		if (FUNC22(trans, tree_root)) {
			ret = FUNC28(trans, tree_root,
						&root->root_key,
						root_item);
			if (ret) {
				FUNC5(trans, tree_root, ret);
				err = ret;
				goto out_end_trans;
			}

			FUNC11(trans, tree_root);
			trans = FUNC23(tree_root, 0);
			if (FUNC2(trans)) {
				err = FUNC3(trans);
				goto out_free;
			}
			if (block_rsv)
				trans->block_rsv = block_rsv;
		}
	}
	FUNC19(path);
	if (err)
		goto out_end_trans;

	ret = FUNC8(trans, tree_root, &root->root_key);
	if (ret) {
		FUNC5(trans, tree_root, ret);
		goto out_end_trans;
	}

	if (root->root_key.objectid != BTRFS_TREE_RELOC_OBJECTID) {
		ret = FUNC12(tree_root, root->root_key.objectid,
					   NULL, NULL);
		if (ret < 0) {
			FUNC5(trans, tree_root, ret);
			err = ret;
			goto out_end_trans;
		} else if (ret > 0) {
			/* if we fail to delete the orphan item this time
			 * around, it'll get picked up the next time.
			 *
			 * The most common failure here is just -ENOENT.
			 */
			FUNC7(trans, tree_root,
					      root->root_key.objectid);
		}
	}

	if (root->in_radix) {
		FUNC13(tree_root->fs_info, root);
	} else {
		FUNC29(root->node);
		FUNC29(root->commit_root);
		FUNC30(root);
	}
out_end_trans:
	FUNC11(trans, tree_root);
out_free:
	FUNC30(wc);
	FUNC14(path);
out:
	if (err)
		FUNC24(root->fs_info, err);
	return err;
}