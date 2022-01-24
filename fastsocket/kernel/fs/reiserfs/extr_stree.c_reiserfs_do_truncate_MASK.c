#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct reiserfs_transaction_handle {int t_blocks_allocated; int /*<<< orphan*/  t_trans_id; } ;
struct page {int dummy; } ;
struct item_head {int dummy; } ;
struct inode {int i_size; void* i_ctime; void* i_mtime; TYPE_2__* i_sb; int /*<<< orphan*/  i_mode; } ;
struct TYPE_14__ {struct cpu_key* k_objectid; } ;
struct cpu_key {TYPE_1__ on_disk_key; } ;
typedef  int loff_t ;
struct TYPE_16__ {int reada; int /*<<< orphan*/  pos_in_item; } ;
struct TYPE_15__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* CURRENT_TIME_SEC ; 
 int EIO ; 
 int FILE_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__) ; 
 int IO_ERROR ; 
 scalar_t__ JOURNAL_FOR_FREE_BLOCK_AND_UPDATE_SD ; 
 int JOURNAL_PER_BALANCE_CNT ; 
 struct item_head* FUNC2 (TYPE_3__*) ; 
 int PATH_READA ; 
 int PATH_READA_BACK ; 
 int POSITION_FOUND ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,int,struct cpu_key*) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPE_DIRECT ; 
 scalar_t__ FUNC8 (struct item_head*) ; 
 int FUNC9 (struct reiserfs_transaction_handle*,TYPE_2__*,scalar_t__) ; 
 int FUNC10 (struct reiserfs_transaction_handle*,TYPE_2__*,int) ; 
 scalar_t__ FUNC11 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC13 (struct cpu_key*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int FUNC15 (struct item_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int FUNC18 (struct reiserfs_transaction_handle*,TYPE_3__*,struct cpu_key*,struct inode*,struct page*,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,char*,char*,...) ; 
 scalar_t__ FUNC20 (struct reiserfs_transaction_handle*) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*) ; 
 int /*<<< orphan*/  FUNC22 (struct reiserfs_transaction_handle*,struct inode*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*,char*,char*) ; 
 TYPE_3__ s_search_path ; 
 int FUNC24 (TYPE_2__*,struct cpu_key*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC25 (struct cpu_key*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct reiserfs_transaction_handle*,struct inode*) ; 

int FUNC27(struct reiserfs_transaction_handle *th,
			  struct inode *inode,	/* ->i_size contains new size */
			 struct page *page,	/* up to date for last block */
			 int update_timestamps	/* when it is called by
						   file_release to convert
						   the tail - no timestamps
						   should be updated */
    )
{
	FUNC1(s_search_path);	/* Path to the current object item. */
	struct item_head *p_le_ih;	/* Pointer to an item header. */
	struct cpu_key s_item_key;	/* Key to search for a previous file item. */
	loff_t file_size,	/* Old file size. */
	 new_file_size;	/* New file size. */
	int deleted;		/* Number of deleted or truncated bytes. */
	int retval;
	int err = 0;

	FUNC0(!th->t_trans_id);
	if (!
	    (FUNC7(inode->i_mode) || FUNC5(inode->i_mode)
	     || FUNC6(inode->i_mode)))
		return 0;

	if (FUNC5(inode->i_mode)) {
		// deletion of directory - no need to update timestamps
		FUNC26(th, inode);
		return 0;
	}

	/* Get new file size. */
	new_file_size = inode->i_size;

	// FIXME: note, that key type is unimportant here
	FUNC13(&s_item_key, inode, FUNC14(inode),
		     TYPE_DIRECT, 3);

	retval =
	    FUNC24(inode->i_sb, &s_item_key,
				       &s_search_path);
	if (retval == IO_ERROR) {
		FUNC19(inode->i_sb, "vs-5657",
			       "i/o failure occurred trying to truncate %K",
			       &s_item_key);
		err = -EIO;
		goto out;
	}
	if (retval == POSITION_FOUND || retval == FILE_NOT_FOUND) {
		FUNC19(inode->i_sb, "PAP-5660",
			       "wrong result %d of search for %K", retval,
			       &s_item_key);

		err = -EIO;
		goto out;
	}

	s_search_path.pos_in_item--;

	/* Get real file size (total length of all file items) */
	p_le_ih = FUNC2(&s_search_path);
	if (FUNC8(p_le_ih))
		file_size = 0;
	else {
		loff_t offset = FUNC12(p_le_ih);
		int bytes =
		    FUNC15(p_le_ih, inode->i_sb->s_blocksize);

		/* this may mismatch with real file size: if last direct item
		   had no padding zeros and last unformatted node had no free
		   space, this file would have this file size */
		file_size = offset + bytes - 1;
	}
	/*
	 * are we doing a full truncate or delete, if so
	 * kick in the reada code
	 */
	if (new_file_size == 0)
		s_search_path.reada = PATH_READA | PATH_READA_BACK;

	if (file_size == 0 || file_size < new_file_size) {
		goto update_and_out;
	}

	/* Update key to search for the last file item. */
	FUNC25(&s_item_key, file_size);

	do {
		/* Cut or delete file item. */
		deleted =
		    FUNC18(th, &s_search_path, &s_item_key,
					   inode, page, new_file_size);
		if (deleted < 0) {
			FUNC23(inode->i_sb, "vs-5665",
					 "reiserfs_cut_from_item failed");
			FUNC17(&s_search_path);
			return 0;
		}

		FUNC3(deleted > file_size,
		       "PAP-5670: reiserfs_cut_from_item: too many bytes deleted: deleted %d, file_size %lu, item_key %K",
		       deleted, file_size, &s_item_key);

		/* Change key to search the last file item. */
		file_size -= deleted;

		FUNC25(&s_item_key, file_size);

		/* While there are bytes to truncate and previous file item is presented in the tree. */

		/*
		 ** This loop could take a really long time, and could log
		 ** many more blocks than a transaction can hold.  So, we do a polite
		 ** journal end here, and if the transaction needs ending, we make
		 ** sure the file is consistent before ending the current trans
		 ** and starting a new one
		 */
		if (FUNC11(th, 0) ||
		    FUNC20(th) <= JOURNAL_FOR_FREE_BLOCK_AND_UPDATE_SD) {
			int orig_len_alloc = th->t_blocks_allocated;
			FUNC16(&s_search_path);

			if (update_timestamps) {
				inode->i_mtime = CURRENT_TIME_SEC;
				inode->i_ctime = CURRENT_TIME_SEC;
			}
			FUNC22(th, inode);

			err = FUNC10(th, inode->i_sb, orig_len_alloc);
			if (err)
				goto out;
			err = FUNC9(th, inode->i_sb,
					    JOURNAL_FOR_FREE_BLOCK_AND_UPDATE_SD + JOURNAL_PER_BALANCE_CNT * 4) ;
			if (err)
				goto out;
			FUNC21(inode);
		}
	} while (file_size > FUNC4(new_file_size) &&
		 FUNC24(inode->i_sb, &s_item_key,
					    &s_search_path) == POSITION_FOUND);

	FUNC3(file_size > FUNC4(new_file_size),
	       "PAP-5680: truncate did not finish: new_file_size %Ld, current %Ld, oid %d",
	       new_file_size, file_size, s_item_key.on_disk_key.k_objectid);

      update_and_out:
	if (update_timestamps) {
		// this is truncate, not file closing
		inode->i_mtime = CURRENT_TIME_SEC;
		inode->i_ctime = CURRENT_TIME_SEC;
	}
	FUNC22(th, inode);

      out:
	FUNC16(&s_search_path);
	return err;
}