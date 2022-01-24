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
typedef  scalar_t__ time_t ;
struct super_block {int /*<<< orphan*/  s_bdev; int /*<<< orphan*/  s_blocksize; } ;
struct reiserfs_journal_header {int /*<<< orphan*/  j_mount_id; int /*<<< orphan*/  j_last_flush_trans_id; int /*<<< orphan*/  j_first_unflushed_offset; } ;
struct reiserfs_journal_desc {int dummy; } ;
struct reiserfs_journal {unsigned long j_start; int j_trans_id; int j_last_flush_trans_id; int j_mount_id; int j_first_unflushed_offset; int /*<<< orphan*/  j_dev_bd; TYPE_1__* j_header_bh; } ;
struct buffer_head {unsigned long b_blocknr; scalar_t__ b_data; } ;
struct TYPE_2__ {scalar_t__ b_data; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  REISERFS_DEBUG_CODE ; 
 struct reiserfs_journal* FUNC0 (struct super_block*) ; 
 unsigned long FUNC1 (struct super_block*) ; 
 unsigned long FUNC2 (struct super_block*) ; 
 scalar_t__ FUNC3 (struct super_block*,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 unsigned long FUNC7 (struct reiserfs_journal_desc*) ; 
 unsigned int FUNC8 (struct reiserfs_journal_desc*) ; 
 scalar_t__ FUNC9 (struct reiserfs_journal_desc*) ; 
 scalar_t__ FUNC10 () ; 
 void* FUNC11 (struct super_block*,int) ; 
 int FUNC12 (struct super_block*,unsigned long,unsigned long,unsigned int,unsigned long) ; 
 int FUNC13 (struct super_block*,struct buffer_head*,unsigned int*,unsigned long*) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC15 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (struct super_block*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (struct super_block*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC18 (struct super_block*,char*,char*) ; 

__attribute__((used)) static int FUNC19(struct super_block *sb)
{
	struct reiserfs_journal *journal = FUNC0(sb);
	struct reiserfs_journal_desc *desc;
	unsigned int oldest_trans_id = 0;
	unsigned int oldest_invalid_trans_id = 0;
	time_t start;
	unsigned long oldest_start = 0;
	unsigned long cur_dblock = 0;
	unsigned long newest_mount_id = 9;
	struct buffer_head *d_bh;
	struct reiserfs_journal_header *jh;
	int valid_journal_header = 0;
	int replay_count = 0;
	int continue_replay = 1;
	int ret;
	char b[BDEVNAME_SIZE];

	cur_dblock = FUNC1(sb);
	FUNC17(sb, "checking transaction log (%s)\n",
		      FUNC5(journal->j_dev_bd, b));
	start = FUNC10();

	/* step 1, read in the journal header block.  Check the transaction it says
	 ** is the first unflushed, and if that transaction is not valid,
	 ** replay is done
	 */
	journal->j_header_bh = FUNC11(sb,
					     FUNC1(sb)
					     + FUNC2(sb));
	if (!journal->j_header_bh) {
		return 1;
	}
	jh = (struct reiserfs_journal_header *)(journal->j_header_bh->b_data);
	if (FUNC14(jh->j_first_unflushed_offset) <
	    FUNC2(sb)
	    && FUNC14(jh->j_last_flush_trans_id) > 0) {
		oldest_start =
		    FUNC1(sb) +
		    FUNC14(jh->j_first_unflushed_offset);
		oldest_trans_id = FUNC14(jh->j_last_flush_trans_id) + 1;
		newest_mount_id = FUNC14(jh->j_mount_id);
		FUNC16(sb, REISERFS_DEBUG_CODE,
			       "journal-1153: found in "
			       "header: first_unflushed_offset %d, last_flushed_trans_id "
			       "%lu", FUNC14(jh->j_first_unflushed_offset),
			       FUNC14(jh->j_last_flush_trans_id));
		valid_journal_header = 1;

		/* now, we try to read the first unflushed offset.  If it is not valid,
		 ** there is nothing more we can do, and it makes no sense to read
		 ** through the whole log.
		 */
		d_bh =
		    FUNC11(sb,
				  FUNC1(sb) +
				  FUNC14(jh->j_first_unflushed_offset));
		ret = FUNC13(sb, d_bh, NULL, NULL);
		if (!ret) {
			continue_replay = 0;
		}
		FUNC6(d_bh);
		goto start_log_replay;
	}

	if (continue_replay && FUNC4(sb->s_bdev)) {
		FUNC18(sb, "clm-2076",
				 "device is readonly, unable to replay log");
		return -1;
	}

	/* ok, there are transactions that need to be replayed.  start with the first log block, find
	 ** all the valid transactions, and pick out the oldest.
	 */
	while (continue_replay
	       && cur_dblock <
	       (FUNC1(sb) +
		FUNC2(sb))) {
		/* Note that it is required for blocksize of primary fs device and journal
		   device to be the same */
		d_bh =
		    FUNC15(journal->j_dev_bd, cur_dblock,
				    sb->s_blocksize,
				    FUNC1(sb) +
				    FUNC2(sb));
		ret =
		    FUNC13(sb, d_bh,
						 &oldest_invalid_trans_id,
						 &newest_mount_id);
		if (ret == 1) {
			desc = (struct reiserfs_journal_desc *)d_bh->b_data;
			if (oldest_start == 0) {	/* init all oldest_ values */
				oldest_trans_id = FUNC8(desc);
				oldest_start = d_bh->b_blocknr;
				newest_mount_id = FUNC7(desc);
				FUNC16(sb, REISERFS_DEBUG_CODE,
					       "journal-1179: Setting "
					       "oldest_start to offset %llu, trans_id %lu",
					       oldest_start -
					       FUNC1
					       (sb), oldest_trans_id);
			} else if (oldest_trans_id > FUNC8(desc)) {
				/* one we just read was older */
				oldest_trans_id = FUNC8(desc);
				oldest_start = d_bh->b_blocknr;
				FUNC16(sb, REISERFS_DEBUG_CODE,
					       "journal-1180: Resetting "
					       "oldest_start to offset %lu, trans_id %lu",
					       oldest_start -
					       FUNC1
					       (sb), oldest_trans_id);
			}
			if (newest_mount_id < FUNC7(desc)) {
				newest_mount_id = FUNC7(desc);
				FUNC16(sb, REISERFS_DEBUG_CODE,
					       "journal-1299: Setting "
					       "newest_mount_id to %d",
					       FUNC7(desc));
			}
			cur_dblock += FUNC9(desc) + 2;
		} else {
			cur_dblock++;
		}
		FUNC6(d_bh);
	}

      start_log_replay:
	cur_dblock = oldest_start;
	if (oldest_trans_id) {
		FUNC16(sb, REISERFS_DEBUG_CODE,
			       "journal-1206: Starting replay "
			       "from offset %llu, trans_id %lu",
			       cur_dblock - FUNC1(sb),
			       oldest_trans_id);

	}
	replay_count = 0;
	while (continue_replay && oldest_trans_id > 0) {
		ret =
		    FUNC12(sb, cur_dblock, oldest_start,
					     oldest_trans_id, newest_mount_id);
		if (ret < 0) {
			return ret;
		} else if (ret != 0) {
			break;
		}
		cur_dblock =
		    FUNC1(sb) + journal->j_start;
		replay_count++;
		if (cur_dblock == oldest_start)
			break;
	}

	if (oldest_trans_id == 0) {
		FUNC16(sb, REISERFS_DEBUG_CODE,
			       "journal-1225: No valid " "transactions found");
	}
	/* j_start does not get set correctly if we don't replay any transactions.
	 ** if we had a valid journal_header, set j_start to the first unflushed transaction value,
	 ** copy the trans_id from the header
	 */
	if (valid_journal_header && replay_count == 0) {
		journal->j_start = FUNC14(jh->j_first_unflushed_offset);
		journal->j_trans_id =
		    FUNC14(jh->j_last_flush_trans_id) + 1;
		/* check for trans_id overflow */
		if (journal->j_trans_id == 0)
			journal->j_trans_id = 10;
		journal->j_last_flush_trans_id =
		    FUNC14(jh->j_last_flush_trans_id);
		journal->j_mount_id = FUNC14(jh->j_mount_id) + 1;
	} else {
		journal->j_mount_id = newest_mount_id + 1;
	}
	FUNC16(sb, REISERFS_DEBUG_CODE, "journal-1299: Setting "
		       "newest_mount_id to %lu", journal->j_mount_id);
	journal->j_first_unflushed_offset = journal->j_start;
	if (replay_count > 0) {
		FUNC17(sb,
			      "replayed %d transactions in %lu seconds\n",
			      replay_count, FUNC10() - start);
	}
	if (!FUNC4(sb->s_bdev) &&
	    FUNC3(sb, journal->j_start,
					 journal->j_last_flush_trans_id)) {
		/* replay failed, caller must call free_journal_ram and abort
		 ** the mount
		 */
		return -1;
	}
	return 0;
}