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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct extent_buffer {scalar_t__ start; } ;
struct btrfs_trans_handle {scalar_t__ transaction; scalar_t__ transid; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct btrfs_key {int dummy; } ;
struct btrfs_disk_key {int dummy; } ;
struct TYPE_2__ {scalar_t__ running_transaction; scalar_t__ generation; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct btrfs_trans_handle*,struct btrfs_root*,struct extent_buffer*,struct extent_buffer*,int,struct extent_buffer**,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct extent_buffer*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct extent_buffer* FUNC3 (struct btrfs_root*,scalar_t__,int) ; 
 int FUNC4 (struct extent_buffer*) ; 
 int FUNC5 (struct extent_buffer*) ; 
 int FUNC6 (struct btrfs_root*,int) ; 
 scalar_t__ FUNC7 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*,struct btrfs_disk_key*,int) ; 
 scalar_t__ FUNC9 (struct extent_buffer*,int) ; 
 int FUNC10 (struct extent_buffer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC13 (struct extent_buffer*) ; 
 int FUNC14 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC15 (struct btrfs_disk_key*,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC16 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC17 (int,int) ; 
 struct extent_buffer* FUNC18 (struct btrfs_root*,scalar_t__,int,scalar_t__) ; 

int FUNC19(struct btrfs_trans_handle *trans,
		       struct btrfs_root *root, struct extent_buffer *parent,
		       int start_slot, int cache_only, u64 *last_ret,
		       struct btrfs_key *progress)
{
	struct extent_buffer *cur;
	u64 blocknr;
	u64 gen;
	u64 search_start = *last_ret;
	u64 last_block = 0;
	u64 other;
	u32 parent_nritems;
	int end_slot;
	int i;
	int err = 0;
	int parent_level;
	int uptodate;
	u32 blocksize;
	int progress_passed = 0;
	struct btrfs_disk_key disk_key;

	parent_level = FUNC4(parent);
	if (cache_only && parent_level != 1)
		return 0;

	if (trans->transaction != root->fs_info->running_transaction)
		FUNC0(1);
	if (trans->transid != root->fs_info->generation)
		FUNC0(1);

	parent_nritems = FUNC5(parent);
	blocksize = FUNC6(root, parent_level - 1);
	end_slot = parent_nritems;

	if (parent_nritems == 1)
		return 0;

	FUNC11(parent);

	for (i = start_slot; i < end_slot; i++) {
		int close = 1;

		FUNC8(parent, &disk_key, i);
		if (!progress_passed && FUNC15(&disk_key, progress) < 0)
			continue;

		progress_passed = 1;
		blocknr = FUNC7(parent, i);
		gen = FUNC9(parent, i);
		if (last_block == 0)
			last_block = blocknr;

		if (i > 0) {
			other = FUNC7(parent, i - 1);
			close = FUNC14(blocknr, other, blocksize);
		}
		if (!close && i < end_slot - 2) {
			other = FUNC7(parent, i + 1);
			close = FUNC14(blocknr, other, blocksize);
		}
		if (close) {
			last_block = blocknr;
			continue;
		}

		cur = FUNC3(root, blocknr, blocksize);
		if (cur)
			uptodate = FUNC2(cur, gen, 0);
		else
			uptodate = 0;
		if (!cur || !uptodate) {
			if (cache_only) {
				FUNC16(cur);
				continue;
			}
			if (!cur) {
				cur = FUNC18(root, blocknr,
							 blocksize, gen);
				if (!cur)
					return -EIO;
			} else if (!uptodate) {
				err = FUNC10(cur, gen);
				if (err) {
					FUNC16(cur);
					return err;
				}
			}
		}
		if (search_start == 0)
			search_start = last_block;

		FUNC12(cur);
		FUNC11(cur);
		err = FUNC1(trans, root, cur, parent, i,
					&cur, search_start,
					FUNC17(16 * blocksize,
					    (end_slot - i) * blocksize));
		if (err) {
			FUNC13(cur);
			FUNC16(cur);
			break;
		}
		search_start = cur->start;
		last_block = cur->start;
		*last_ret = search_start;
		FUNC13(cur);
		FUNC16(cur);
	}
	return err;
}