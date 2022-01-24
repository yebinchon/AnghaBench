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
struct ocfs2_dx_entry_list {int /*<<< orphan*/  de_num_used; scalar_t__ de_entries; int /*<<< orphan*/  de_count; } ;
struct ocfs2_dx_root_block {int /*<<< orphan*/  dr_num_entries; int /*<<< orphan*/  dr_free_blk; struct ocfs2_dx_entry_list dr_entries; } ;
struct ocfs2_dx_leaf {struct ocfs2_dx_entry_list dl_list; } ;
struct ocfs2_dx_entry {int dummy; } ;
struct ocfs2_dir_lookup_result {struct buffer_head* dl_dx_leaf_bh; int /*<<< orphan*/  dl_entry; struct ocfs2_dx_entry* dl_dx_entry; struct buffer_head* dl_leaf_bh; struct buffer_head* dl_dx_root_bh; } ;
struct ocfs2_dir_block_trailer {scalar_t__ db_free_rec_len; int /*<<< orphan*/  db_free_next; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int /*<<< orphan*/  b_blocknr; int /*<<< orphan*/  b_size; scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int FUNC3 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ,struct buffer_head*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,unsigned long long,int,...) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_dx_entry_list*,int) ; 
 scalar_t__ FUNC11 (struct ocfs2_dx_root_block*) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 struct ocfs2_dir_block_trailer* FUNC16 (struct buffer_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(handle_t *handle, struct inode *dir,
				 struct ocfs2_dir_lookup_result *lookup)
{
	int ret, index, max_rec_len, add_to_free_list = 0;
	struct buffer_head *dx_root_bh = lookup->dl_dx_root_bh;
	struct buffer_head *leaf_bh = lookup->dl_leaf_bh;
	struct ocfs2_dx_leaf *dx_leaf;
	struct ocfs2_dx_entry *dx_entry = lookup->dl_dx_entry;
	struct ocfs2_dir_block_trailer *trailer;
	struct ocfs2_dx_root_block *dx_root;
	struct ocfs2_dx_entry_list *entry_list;

	/*
	 * This function gets a bit messy because we might have to
	 * modify the root block, regardless of whether the indexed
	 * entries are stored inline.
	 */

	/*
	 * *Only* set 'entry_list' here, based on where we're looking
	 * for the indexed entries. Later, we might still want to
	 * journal both blocks, based on free list state.
	 */
	dx_root = (struct ocfs2_dx_root_block *)dx_root_bh->b_data;
	if (FUNC11(dx_root)) {
		entry_list = &dx_root->dr_entries;
	} else {
		dx_leaf = (struct ocfs2_dx_leaf *) lookup->dl_dx_leaf_bh->b_data;
		entry_list = &dx_leaf->dl_list;
	}

	/* Neither of these are a disk corruption - that should have
	 * been caught by lookup, before we got here. */
	FUNC0(FUNC6(entry_list->de_count) <= 0);
	FUNC0(FUNC6(entry_list->de_num_used) <= 0);

	index = (char *)dx_entry - (char *)entry_list->de_entries;
	index /= sizeof(*dx_entry);

	if (index >= FUNC6(entry_list->de_num_used)) {
		FUNC8(ML_ERROR, "Dir %llu: Bad dx_entry ptr idx %d, (%p, %p)\n",
		     (unsigned long long)FUNC2(dir)->ip_blkno, index,
		     entry_list, dx_entry);
		return -EIO;
	}

	/*
	 * We know that removal of this dirent will leave enough room
	 * for a new one, so add this block to the free list if it
	 * isn't already there.
	 */
	trailer = FUNC16(leaf_bh, dir->i_sb);
	if (trailer->db_free_rec_len == 0)
		add_to_free_list = 1;

	/*
	 * Add the block holding our index into the journal before
	 * removing the unindexed entry. If we get an error return
	 * from __ocfs2_delete_entry(), then it hasn't removed the
	 * entry yet. Likewise, successful return means we *must*
	 * remove the indexed entry.
	 *
	 * We're also careful to journal the root tree block here as
	 * the entry count needs to be updated. Also, we might be
	 * adding to the start of the free list.
	 */
	ret = FUNC14(handle, FUNC1(dir), dx_root_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC9(ret);
		goto out;
	}

	if (!FUNC11(dx_root)) {
		ret = FUNC13(handle, FUNC1(dir),
					      lookup->dl_dx_leaf_bh,
					      OCFS2_JOURNAL_ACCESS_WRITE);
		if (ret) {
			FUNC9(ret);
			goto out;
		}
	}

	FUNC8(0, "Dir %llu: delete entry at index: %d\n",
	     (unsigned long long)FUNC2(dir)->ip_blkno, index);

	ret = FUNC3(handle, dir, lookup->dl_entry,
				   leaf_bh, leaf_bh->b_data, leaf_bh->b_size);
	if (ret) {
		FUNC9(ret);
		goto out;
	}

	max_rec_len = FUNC12(dir->i_sb, leaf_bh);
	trailer->db_free_rec_len = FUNC4(max_rec_len);
	if (add_to_free_list) {
		trailer->db_free_next = dx_root->dr_free_blk;
		dx_root->dr_free_blk = FUNC5(leaf_bh->b_blocknr);
		FUNC15(handle, dx_root_bh);
	}

	/* leaf_bh was journal_accessed for us in __ocfs2_delete_entry */
	FUNC15(handle, leaf_bh);

	FUNC7(&dx_root->dr_num_entries, -1);
	FUNC15(handle, dx_root_bh);

	FUNC10(entry_list, index);

	if (!FUNC11(dx_root))
		FUNC15(handle, lookup->dl_dx_leaf_bh);

out:
	return ret;
}