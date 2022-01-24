#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct btrfs_transaction {scalar_t__ blocked; int /*<<< orphan*/  transid; } ;
struct btrfs_trans_handle {int use_count; scalar_t__ bytes_reserved; int /*<<< orphan*/ * block_rsv; int /*<<< orphan*/  transid; scalar_t__ aborted; int /*<<< orphan*/ * orig_rsv; scalar_t__ delayed_ref_updates; scalar_t__ blocks_used; struct btrfs_transaction* transaction; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_4__ {struct btrfs_trans_handle* journal_info; } ;
struct TYPE_3__ {int fs_state; int /*<<< orphan*/  trans_block_rsv; struct btrfs_transaction* running_transaction; int /*<<< orphan*/  sb; struct btrfs_root* chunk_root; } ;

/* Variables and functions */
 int BTRFS_SUPER_FLAG_ERROR ; 
 int EBUSY ; 
 int ENOMEM ; 
 int EROFS ; 
 struct btrfs_trans_handle* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int TRANS_JOIN ; 
 int TRANS_JOIN_NOLOCK ; 
 int TRANS_USERSPACE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct btrfs_root*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (struct btrfs_root*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int /*<<< orphan*/  btrfs_trans_handle_cachep ; 
 TYPE_2__* current ; 
 int FUNC6 (struct btrfs_root*,int) ; 
 struct btrfs_trans_handle* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct btrfs_trans_handle*) ; 
 scalar_t__ FUNC9 (struct btrfs_root*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (struct btrfs_root*) ; 

__attribute__((used)) static struct btrfs_trans_handle *FUNC15(struct btrfs_root *root,
						    u64 num_items, int type)
{
	struct btrfs_trans_handle *h;
	struct btrfs_transaction *cur_trans;
	u64 num_bytes = 0;
	int ret;

	if (root->fs_info->fs_state & BTRFS_SUPER_FLAG_ERROR)
		return FUNC0(-EROFS);

	if (current->journal_info) {
		FUNC1(type != TRANS_JOIN && type != TRANS_JOIN_NOLOCK);
		h = current->journal_info;
		h->use_count++;
		h->orig_rsv = h->block_rsv;
		h->block_rsv = NULL;
		goto got_it;
	}

	/*
	 * Do the reservation before we join the transaction so we can do all
	 * the appropriate flushing if need be.
	 */
	if (num_items > 0 && root != root->fs_info->chunk_root) {
		num_bytes = FUNC3(root, num_items);
		ret = FUNC2(root,
					  &root->fs_info->trans_block_rsv,
					  num_bytes);
		if (ret)
			return FUNC0(ret);
	}
again:
	h = FUNC7(btrfs_trans_handle_cachep, GFP_NOFS);
	if (!h)
		return FUNC0(-ENOMEM);

	FUNC11(root->fs_info->sb);

	if (FUNC9(root, type))
		FUNC14(root);

	do {
		ret = FUNC6(root, type == TRANS_JOIN_NOLOCK);
		if (ret == -EBUSY)
			FUNC14(root);
	} while (ret == -EBUSY);

	if (ret < 0) {
		FUNC10(root->fs_info->sb);
		FUNC8(btrfs_trans_handle_cachep, h);
		return FUNC0(ret);
	}

	cur_trans = root->fs_info->running_transaction;

	h->transid = cur_trans->transid;
	h->transaction = cur_trans;
	h->blocks_used = 0;
	h->bytes_reserved = 0;
	h->delayed_ref_updates = 0;
	h->use_count = 1;
	h->block_rsv = NULL;
	h->orig_rsv = NULL;
	h->aborted = 0;

	FUNC12();
	if (cur_trans->blocked && FUNC9(root, type)) {
		FUNC4(h, root);
		goto again;
	}

	if (num_bytes) {
		FUNC13(root->fs_info, "transaction",
					      h->transid, num_bytes, 1);
		h->block_rsv = &root->fs_info->trans_block_rsv;
		h->bytes_reserved = num_bytes;
	}

got_it:
	FUNC5(h, root);

	if (!current->journal_info && type != TRANS_USERSPACE)
		current->journal_info = h;
	return h;
}