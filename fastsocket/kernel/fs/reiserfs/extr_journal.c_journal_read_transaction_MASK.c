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
struct super_block {int /*<<< orphan*/  s_blocksize; } ;
struct reiserfs_journal_desc {int /*<<< orphan*/ * j_realblock; } ;
struct reiserfs_journal_commit {int /*<<< orphan*/ * j_realblock; } ;
struct reiserfs_journal {unsigned long j_start; unsigned int j_last_flush_trans_id; unsigned int j_trans_id; } ;
struct buffer_head {unsigned int b_blocknr; int /*<<< orphan*/  b_size; scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  REISERFS_DEBUG_CODE ; 
 scalar_t__ FUNC0 (struct super_block*) ; 
 struct reiserfs_journal* FUNC1 (struct super_block*) ; 
 unsigned long FUNC2 (struct super_block*) ; 
 unsigned int FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  SWRITE ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct reiserfs_journal_commit*) ; 
 int /*<<< orphan*/  FUNC8 (struct reiserfs_journal_commit*) ; 
 unsigned long FUNC9 (struct reiserfs_journal_desc*) ; 
 unsigned int FUNC10 (struct reiserfs_journal_desc*) ; 
 unsigned int FUNC11 (struct reiserfs_journal_desc*) ; 
 scalar_t__ FUNC12 (struct super_block*,scalar_t__) ; 
 struct buffer_head* FUNC13 (struct super_block*,unsigned int) ; 
 scalar_t__ FUNC14 (struct super_block*,struct reiserfs_journal_desc*,struct reiserfs_journal_commit*) ; 
 struct buffer_head* FUNC15 (struct super_block*,unsigned int) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_head**) ; 
 struct buffer_head** FUNC18 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct super_block*,int /*<<< orphan*/ ,char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC23 (struct super_block*,char*,char*) ; 
 struct buffer_head* FUNC24 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC26 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC27 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC28(struct super_block *sb,
				    unsigned long cur_dblock,
				    unsigned long oldest_start,
				    unsigned int oldest_trans_id,
				    unsigned long newest_mount_id)
{
	struct reiserfs_journal *journal = FUNC1(sb);
	struct reiserfs_journal_desc *desc;
	struct reiserfs_journal_commit *commit;
	unsigned int trans_id = 0;
	struct buffer_head *c_bh;
	struct buffer_head *d_bh;
	struct buffer_head **log_blocks = NULL;
	struct buffer_head **real_blocks = NULL;
	unsigned int trans_offset;
	int i;
	int trans_half;

	d_bh = FUNC13(sb, cur_dblock);
	if (!d_bh)
		return 1;
	desc = (struct reiserfs_journal_desc *)d_bh->b_data;
	trans_offset = d_bh->b_blocknr - FUNC2(sb);
	FUNC22(sb, REISERFS_DEBUG_CODE, "journal-1037: "
		       "journal_read_transaction, offset %llu, len %d mount_id %d",
		       d_bh->b_blocknr - FUNC2(sb),
		       FUNC11(desc), FUNC9(desc));
	if (FUNC10(desc) < oldest_trans_id) {
		FUNC22(sb, REISERFS_DEBUG_CODE, "journal-1039: "
			       "journal_read_trans skipping because %lu is too old",
			       cur_dblock -
			       FUNC2(sb));
		FUNC4(d_bh);
		return 1;
	}
	if (FUNC9(desc) != newest_mount_id) {
		FUNC22(sb, REISERFS_DEBUG_CODE, "journal-1146: "
			       "journal_read_trans skipping because %d is != "
			       "newest_mount_id %lu", FUNC9(desc),
			       newest_mount_id);
		FUNC4(d_bh);
		return 1;
	}
	c_bh = FUNC13(sb, FUNC2(sb) +
			     ((trans_offset + FUNC11(desc) + 1) %
			      FUNC3(sb)));
	if (!c_bh) {
		FUNC4(d_bh);
		return 1;
	}
	commit = (struct reiserfs_journal_commit *)c_bh->b_data;
	if (FUNC14(sb, desc, commit)) {
		FUNC22(sb, REISERFS_DEBUG_CODE,
			       "journal_read_transaction, "
			       "commit offset %llu had bad time %d or length %d",
			       c_bh->b_blocknr -
			       FUNC2(sb),
			       FUNC7(commit),
			       FUNC8(commit));
		FUNC4(c_bh);
		FUNC4(d_bh);
		return 1;
	}
	trans_id = FUNC10(desc);
	/* now we know we've got a good transaction, and it was inside the valid time ranges */
	log_blocks = FUNC18(FUNC11(desc) *
			     sizeof(struct buffer_head *), GFP_NOFS);
	real_blocks = FUNC18(FUNC11(desc) *
			      sizeof(struct buffer_head *), GFP_NOFS);
	if (!log_blocks || !real_blocks) {
		FUNC4(c_bh);
		FUNC4(d_bh);
		FUNC17(log_blocks);
		FUNC17(real_blocks);
		FUNC23(sb, "journal-1169",
				 "kmalloc failed, unable to mount FS");
		return -1;
	}
	/* get all the buffer heads */
	trans_half = FUNC16(sb->s_blocksize);
	for (i = 0; i < FUNC11(desc); i++) {
		log_blocks[i] =
		    FUNC15(sb,
				   FUNC2(sb) +
				   (trans_offset + 1 +
				    i) % FUNC3(sb));
		if (i < trans_half) {
			real_blocks[i] =
			    FUNC24(sb,
				      FUNC19(desc->j_realblock[i]));
		} else {
			real_blocks[i] =
			    FUNC24(sb,
				      FUNC19(commit->
						  j_realblock[i - trans_half]));
		}
		if (real_blocks[i]->b_blocknr > FUNC0(sb)) {
			FUNC23(sb, "journal-1207",
					 "REPLAY FAILURE fsck required! "
					 "Block to replay is outside of "
					 "filesystem");
			goto abort_replay;
		}
		/* make sure we don't try to replay onto log or reserved area */
		if (FUNC12
		    (sb, real_blocks[i]->b_blocknr)) {
			FUNC23(sb, "journal-1204",
					 "REPLAY FAILURE fsck required! "
					 "Trying to replay onto a log block");
		      abort_replay:
			FUNC5(log_blocks, i);
			FUNC5(real_blocks, i);
			FUNC4(c_bh);
			FUNC4(d_bh);
			FUNC17(log_blocks);
			FUNC17(real_blocks);
			return -1;
		}
	}
	/* read in the log blocks, memcpy to the corresponding real block */
	FUNC20(READ, FUNC11(desc), log_blocks);
	for (i = 0; i < FUNC11(desc); i++) {
		FUNC27(log_blocks[i]);
		if (!FUNC6(log_blocks[i])) {
			FUNC23(sb, "journal-1212",
					 "REPLAY FAILURE fsck required! "
					 "buffer write failed");
			FUNC5(log_blocks + i,
				     FUNC11(desc) - i);
			FUNC5(real_blocks, FUNC11(desc));
			FUNC4(c_bh);
			FUNC4(d_bh);
			FUNC17(log_blocks);
			FUNC17(real_blocks);
			return -1;
		}
		FUNC21(real_blocks[i]->b_data, log_blocks[i]->b_data,
		       real_blocks[i]->b_size);
		FUNC26(real_blocks[i]);
		FUNC4(log_blocks[i]);
	}
	/* flush out the real blocks */
	for (i = 0; i < FUNC11(desc); i++) {
		FUNC25(real_blocks[i]);
		FUNC20(SWRITE, 1, real_blocks + i);
	}
	for (i = 0; i < FUNC11(desc); i++) {
		FUNC27(real_blocks[i]);
		if (!FUNC6(real_blocks[i])) {
			FUNC23(sb, "journal-1226",
					 "REPLAY FAILURE, fsck required! "
					 "buffer write failed");
			FUNC5(real_blocks + i,
				     FUNC11(desc) - i);
			FUNC4(c_bh);
			FUNC4(d_bh);
			FUNC17(log_blocks);
			FUNC17(real_blocks);
			return -1;
		}
		FUNC4(real_blocks[i]);
	}
	cur_dblock =
	    FUNC2(sb) +
	    ((trans_offset + FUNC11(desc) +
	      2) % FUNC3(sb));
	FUNC22(sb, REISERFS_DEBUG_CODE,
		       "journal-1095: setting journal " "start to offset %ld",
		       cur_dblock - FUNC2(sb));

	/* init starting values for the first transaction, in case this is the last transaction to be replayed. */
	journal->j_start = cur_dblock - FUNC2(sb);
	journal->j_last_flush_trans_id = trans_id;
	journal->j_trans_id = trans_id + 1;
	/* check for trans_id overflow */
	if (journal->j_trans_id == 0)
		journal->j_trans_id = 10;
	FUNC4(c_bh);
	FUNC4(d_bh);
	FUNC17(log_blocks);
	FUNC17(real_blocks);
	return 0;
}