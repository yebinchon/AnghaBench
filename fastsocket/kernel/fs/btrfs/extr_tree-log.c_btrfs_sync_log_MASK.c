#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct btrfs_trans_handle {scalar_t__ transid; } ;
struct btrfs_root {int log_transid; unsigned long log_batch; unsigned long last_log_commit; int /*<<< orphan*/ * log_commit_wait; int /*<<< orphan*/ * log_commit; int /*<<< orphan*/  log_mutex; TYPE_1__* fs_info; TYPE_2__* node; int /*<<< orphan*/  dirty_log_pages; int /*<<< orphan*/  log_writer_wait; int /*<<< orphan*/  log_writers; scalar_t__ log_start_pid; int /*<<< orphan*/  root_item; scalar_t__ log_multiple_pids; struct btrfs_root* log_root; } ;
struct TYPE_5__ {int /*<<< orphan*/  start; } ;
struct TYPE_4__ {scalar_t__ last_trans_log_full_commit; int /*<<< orphan*/  tree_root; int /*<<< orphan*/  super_for_commit; struct btrfs_root* log_root_tree; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOSPC ; 
 int EXTENT_DIRTY ; 
 int EXTENT_NEW ; 
 int /*<<< orphan*/  SSD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_trans_handle*,struct btrfs_root*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_root*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct btrfs_root*,int /*<<< orphan*/ *,int) ; 
 int FUNC13 (struct btrfs_root*,int /*<<< orphan*/ *,int) ; 
 int FUNC14 (struct btrfs_root*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int FUNC19 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC20 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC21 (struct btrfs_trans_handle*,struct btrfs_root*,int) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct btrfs_trans_handle*,int /*<<< orphan*/ ,int) ; 

int FUNC25(struct btrfs_trans_handle *trans,
		   struct btrfs_root *root)
{
	int index1;
	int index2;
	int mark;
	int ret;
	struct btrfs_root *log = root->log_root;
	struct btrfs_root *log_root_tree = root->fs_info->log_root_tree;
	unsigned long log_transid = 0;

	FUNC15(&root->log_mutex);
	index1 = root->log_transid % 2;
	if (FUNC2(&root->log_commit[index1])) {
		FUNC21(trans, root, root->log_transid);
		FUNC16(&root->log_mutex);
		return 0;
	}
	FUNC3(&root->log_commit[index1], 1);

	/* wait for previous tree log sync to complete */
	if (FUNC2(&root->log_commit[(index1 + 1) % 2]))
		FUNC21(trans, root, root->log_transid - 1);
	while (1) {
		unsigned long batch = root->log_batch;
		/* when we're on an ssd, just kick the log commit out */
		if (!FUNC11(root, SSD) && root->log_multiple_pids) {
			FUNC16(&root->log_mutex);
			FUNC17(1);
			FUNC15(&root->log_mutex);
		}
		FUNC20(trans, root);
		if (batch == root->log_batch)
			break;
	}

	/* bail out if we need to do a full commit */
	if (root->fs_info->last_trans_log_full_commit == trans->transid) {
		ret = -EAGAIN;
		FUNC16(&root->log_mutex);
		goto out;
	}

	log_transid = root->log_transid;
	if (log_transid % 2 == 0)
		mark = EXTENT_DIRTY;
	else
		mark = EXTENT_NEW;

	/* we start IO on  all the marked extents here, but we don't actually
	 * wait for them until later.
	 */
	ret = FUNC14(log, &log->dirty_log_pages, mark);
	if (ret) {
		FUNC4(trans, root, ret);
		FUNC16(&root->log_mutex);
		goto out;
	}

	FUNC8(&log->root_item, log->node);

	root->log_batch = 0;
	root->log_transid++;
	log->log_transid = root->log_transid;
	root->log_start_pid = 0;
	FUNC18();
	/*
	 * IO has been started, blocks of the log tree have WRITTEN flag set
	 * in their headers. new modifications of the log will be written to
	 * new positions. so it's safe to allow log writers to go in.
	 */
	FUNC16(&root->log_mutex);

	FUNC15(&log_root_tree->log_mutex);
	log_root_tree->log_batch++;
	FUNC1(&log_root_tree->log_writers);
	FUNC16(&log_root_tree->log_mutex);

	ret = FUNC19(trans, log);

	FUNC15(&log_root_tree->log_mutex);
	if (FUNC0(&log_root_tree->log_writers)) {
		FUNC18();
		if (FUNC22(&log_root_tree->log_writer_wait))
			FUNC23(&log_root_tree->log_writer_wait);
	}

	if (ret) {
		if (ret != -ENOSPC) {
			FUNC4(trans, root, ret);
			FUNC16(&log_root_tree->log_mutex);
			goto out;
		}
		root->fs_info->last_trans_log_full_commit = trans->transid;
		FUNC12(log, &log->dirty_log_pages, mark);
		FUNC16(&log_root_tree->log_mutex);
		ret = -EAGAIN;
		goto out;
	}

	index2 = log_root_tree->log_transid % 2;
	if (FUNC2(&log_root_tree->log_commit[index2])) {
		FUNC12(log, &log->dirty_log_pages, mark);
		FUNC21(trans, log_root_tree,
				log_root_tree->log_transid);
		FUNC16(&log_root_tree->log_mutex);
		ret = 0;
		goto out;
	}
	FUNC3(&log_root_tree->log_commit[index2], 1);

	if (FUNC2(&log_root_tree->log_commit[(index2 + 1) % 2])) {
		FUNC21(trans, log_root_tree,
				log_root_tree->log_transid - 1);
	}

	FUNC20(trans, log_root_tree);

	/*
	 * now that we've moved on to the tree of log tree roots,
	 * check the full commit flag again
	 */
	if (root->fs_info->last_trans_log_full_commit == trans->transid) {
		FUNC12(log, &log->dirty_log_pages, mark);
		FUNC16(&log_root_tree->log_mutex);
		ret = -EAGAIN;
		goto out_wake_log_root;
	}

	ret = FUNC13(log_root_tree,
				&log_root_tree->dirty_log_pages,
				EXTENT_DIRTY | EXTENT_NEW);
	if (ret) {
		FUNC4(trans, root, ret);
		FUNC16(&log_root_tree->log_mutex);
		goto out_wake_log_root;
	}
	FUNC12(log, &log->dirty_log_pages, mark);

	FUNC9(root->fs_info->super_for_commit,
				log_root_tree->node->start);
	FUNC10(root->fs_info->super_for_commit,
				FUNC5(log_root_tree->node));

	log_root_tree->log_batch = 0;
	log_root_tree->log_transid++;
	FUNC18();

	FUNC16(&log_root_tree->log_mutex);

	/*
	 * nobody else is going to jump in and write the the ctree
	 * super here because the log_commit atomic below is protecting
	 * us.  We must be called with a transaction handle pinning
	 * the running transaction open, so a full commit can't hop
	 * in and cause problems either.
	 */
	FUNC7(root);
	FUNC24(trans, root->fs_info->tree_root, 1);
	FUNC6(root);
	ret = 0;

	FUNC15(&root->log_mutex);
	if (root->last_log_commit < log_transid)
		root->last_log_commit = log_transid;
	FUNC16(&root->log_mutex);

out_wake_log_root:
	FUNC3(&log_root_tree->log_commit[index2], 0);
	FUNC18();
	if (FUNC22(&log_root_tree->log_commit_wait[index2]))
		FUNC23(&log_root_tree->log_commit_wait[index2]);
out:
	FUNC3(&root->log_commit[index1], 0);
	FUNC18();
	if (FUNC22(&root->log_commit_wait[index1]))
		FUNC23(&root->log_commit_wait[index1]);
	return ret;
}