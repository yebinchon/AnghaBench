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
typedef  void* u64 ;
struct walk_control {scalar_t__ stage; int pin; int /*<<< orphan*/  process_func; struct btrfs_trans_handle* replay_dest; struct btrfs_trans_handle* trans; } ;
struct btrfs_trans_handle {struct btrfs_trans_handle* log_root; int /*<<< orphan*/  node; int /*<<< orphan*/  commit_root; struct btrfs_fs_info* fs_info; } ;
struct btrfs_root {struct btrfs_root* log_root; int /*<<< orphan*/  node; int /*<<< orphan*/  commit_root; struct btrfs_fs_info* fs_info; } ;
struct btrfs_path {scalar_t__* slots; int /*<<< orphan*/ * nodes; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ offset; int /*<<< orphan*/  type; } ;
struct btrfs_fs_info {int log_root_recovering; int /*<<< orphan*/  tree_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_ROOT_ITEM_KEY ; 
 scalar_t__ BTRFS_TREE_LOG_OBJECTID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (struct btrfs_trans_handle*) ; 
 scalar_t__ LOG_WALK_REPLAY_ALL ; 
 scalar_t__ LOG_WALK_REPLAY_INODES ; 
 int FUNC2 (struct btrfs_trans_handle*) ; 
 struct btrfs_path* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_trans_handle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_fs_info*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct btrfs_key*,scalar_t__) ; 
 struct btrfs_trans_handle* FUNC8 (struct btrfs_fs_info*,struct btrfs_key*) ; 
 struct btrfs_trans_handle* FUNC9 (struct btrfs_trans_handle*,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_trans_handle*,struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_path*) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct btrfs_trans_handle*,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct btrfs_key*,int /*<<< orphan*/ ) ; 
 struct btrfs_trans_handle* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct btrfs_trans_handle*,struct btrfs_trans_handle*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  process_one_buffer ; 
 int /*<<< orphan*/  replay_one_buffer ; 
 int FUNC18 (struct btrfs_trans_handle*,struct btrfs_trans_handle*,struct walk_control*) ; 

int FUNC19(struct btrfs_root *log_root_tree)
{
	int ret;
	struct btrfs_path *path;
	struct btrfs_trans_handle *trans;
	struct btrfs_key key;
	struct btrfs_key found_key;
	struct btrfs_key tmp_key;
	struct btrfs_root *log;
	struct btrfs_fs_info *fs_info = log_root_tree->fs_info;
	struct walk_control wc = {
		.process_func = process_one_buffer,
		.stage = 0,
	};

	path = FUNC3();
	if (!path)
		return -ENOMEM;

	fs_info->log_root_recovering = 1;

	trans = FUNC14(fs_info->tree_root, 0);
	if (FUNC1(trans)) {
		ret = FUNC2(trans);
		goto error;
	}

	wc.trans = trans;
	wc.pin = 1;

	ret = FUNC18(trans, log_root_tree, &wc);
	if (ret) {
		FUNC5(fs_info, ret, "Failed to pin buffers while "
			    "recovering log root tree.");
		goto error;
	}

again:
	key.objectid = BTRFS_TREE_LOG_OBJECTID;
	key.offset = (u64)-1;
	FUNC13(&key, BTRFS_ROOT_ITEM_KEY);

	while (1) {
		ret = FUNC12(NULL, log_root_tree, &key, path, 0, 0);

		if (ret < 0) {
			FUNC5(fs_info, ret,
				    "Couldn't find tree log root.");
			goto error;
		}
		if (ret > 0) {
			if (path->slots[0] == 0)
				break;
			path->slots[0]--;
		}
		FUNC7(path->nodes[0], &found_key,
				      path->slots[0]);
		FUNC11(path);
		if (found_key.objectid != BTRFS_TREE_LOG_OBJECTID)
			break;

		log = FUNC9(log_root_tree,
						  &found_key);
		if (FUNC1(log)) {
			ret = FUNC2(log);
			FUNC5(fs_info, ret,
				    "Couldn't read tree log root.");
			goto error;
		}

		tmp_key.objectid = found_key.offset;
		tmp_key.type = BTRFS_ROOT_ITEM_KEY;
		tmp_key.offset = (u64)-1;

		wc.replay_dest = FUNC8(fs_info, &tmp_key);
		if (FUNC1(wc.replay_dest)) {
			ret = FUNC2(wc.replay_dest);
			FUNC5(fs_info, ret, "Couldn't read target root "
				    "for tree log recovery.");
			goto error;
		}

		wc.replay_dest->log_root = log;
		FUNC10(trans, wc.replay_dest);
		ret = FUNC18(trans, log, &wc);
		FUNC0(ret);

		if (wc.stage == LOG_WALK_REPLAY_ALL) {
			ret = FUNC15(trans, wc.replay_dest,
						      path);
			FUNC0(ret);
		}

		key.offset = found_key.offset - 1;
		wc.replay_dest->log_root = NULL;
		FUNC16(log->node);
		FUNC16(log->commit_root);
		FUNC17(log);

		if (found_key.offset == 0)
			break;
	}
	FUNC11(path);

	/* step one is to pin it all, step two is to replay just inodes */
	if (wc.pin) {
		wc.pin = 0;
		wc.process_func = replay_one_buffer;
		wc.stage = LOG_WALK_REPLAY_INODES;
		goto again;
	}
	/* step three is to replay everything */
	if (wc.stage < LOG_WALK_REPLAY_ALL) {
		wc.stage++;
		goto again;
	}

	FUNC6(path);

	FUNC16(log_root_tree->node);
	log_root_tree->log_root = NULL;
	fs_info->log_root_recovering = 0;

	/* step 4: commit the transaction, which also unpins the blocks */
	FUNC4(trans, fs_info->tree_root);

	FUNC17(log_root_tree);
	return 0;

error:
	FUNC6(path);
	return ret;
}