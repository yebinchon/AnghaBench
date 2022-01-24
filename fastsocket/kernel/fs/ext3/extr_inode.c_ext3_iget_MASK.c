#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uid_t ;
struct TYPE_10__ {int /*<<< orphan*/  t_tid; } ;
typedef  TYPE_4__ transaction_t ;
typedef  int /*<<< orphan*/  tid_t ;
struct super_block {int dummy; } ;
struct TYPE_9__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_8__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_7__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct inode {int i_state; int i_mode; int i_uid; int i_gid; int i_nlink; int i_size; scalar_t__ i_ino; int /*<<< orphan*/ * i_op; int /*<<< orphan*/ * i_fop; struct super_block* i_sb; void* i_generation; void* i_blocks; TYPE_3__ i_mtime; TYPE_2__ i_ctime; TYPE_1__ i_atime; } ;
struct ext3_inode_info {int i_disksize; int i_extra_isize; scalar_t__* i_data; int /*<<< orphan*/  i_state; int /*<<< orphan*/  i_datasync_tid; int /*<<< orphan*/  i_sync_tid; int /*<<< orphan*/  i_orphan; int /*<<< orphan*/  i_block_group; void* i_dir_acl; void* i_file_acl; int /*<<< orphan*/  i_frag_size; int /*<<< orphan*/  i_frag_no; void* i_faddr; void* i_flags; void* i_dtime; scalar_t__ i_dir_start_lookup; int /*<<< orphan*/ * i_block_alloc_info; } ;
struct ext3_inode {scalar_t__* i_block; int /*<<< orphan*/  i_extra_isize; scalar_t__ i_generation; scalar_t__ i_size_high; scalar_t__ i_dir_acl; scalar_t__ i_file_acl; int /*<<< orphan*/  i_fsize; int /*<<< orphan*/  i_frag; scalar_t__ i_faddr; scalar_t__ i_flags; scalar_t__ i_blocks; scalar_t__ i_dtime; scalar_t__ i_mtime; scalar_t__ i_ctime; scalar_t__ i_atime; scalar_t__ i_size; int /*<<< orphan*/  i_links_count; int /*<<< orphan*/  i_gid_high; int /*<<< orphan*/  i_uid_high; int /*<<< orphan*/  i_gid_low; int /*<<< orphan*/  i_uid_low; int /*<<< orphan*/  i_mode; } ;
struct ext3_iloc {struct buffer_head* bh; int /*<<< orphan*/  block_group; } ;
struct buffer_head {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  j_state_lock; int /*<<< orphan*/  j_commit_sequence; TYPE_4__* j_committing_transaction; TYPE_4__* j_running_transaction; } ;
typedef  TYPE_5__ journal_t ;
typedef  int gid_t ;
typedef  int __u64 ;
typedef  scalar_t__ __le32 ;
struct TYPE_12__ {int s_mount_state; TYPE_5__* s_journal; } ;

/* Variables and functions */
 long EIO ; 
 long ENOMEM ; 
 struct inode* FUNC0 (long) ; 
 long ESTALE ; 
 scalar_t__ FUNC1 (struct super_block*) ; 
 scalar_t__ EXT3_GOOD_OLD_INODE_SIZE ; 
 struct ext3_inode_info* FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct super_block*) ; 
 int EXT3_N_BLOCKS ; 
 int EXT3_ORPHAN_FS ; 
 TYPE_6__* FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  EXT3_STATE_XATTR ; 
 int /*<<< orphan*/  EXT3_XATTR_MAGIC ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int I_NEW ; 
 int /*<<< orphan*/  NO_UID32 ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 long FUNC9 (struct inode*,struct ext3_iloc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ext3_dir_inode_operations ; 
 int /*<<< orphan*/  ext3_dir_operations ; 
 int /*<<< orphan*/  ext3_fast_symlink_inode_operations ; 
 int /*<<< orphan*/  ext3_file_inode_operations ; 
 int /*<<< orphan*/  ext3_file_operations ; 
 scalar_t__ FUNC13 (struct inode*) ; 
 struct ext3_inode* FUNC14 (struct ext3_iloc*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  ext3_special_inode_operations ; 
 int /*<<< orphan*/  ext3_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 struct inode* FUNC18 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 void* FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC23 (void*) ; 
 int /*<<< orphan*/  FUNC24 (void*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct inode*) ; 

struct inode *FUNC29(struct super_block *sb, unsigned long ino)
{
	struct ext3_iloc iloc;
	struct ext3_inode *raw_inode;
	struct ext3_inode_info *ei;
	struct buffer_head *bh;
	struct inode *inode;
	journal_t *journal = FUNC4(sb)->s_journal;
	transaction_t *transaction;
	long ret;
	int block;

	inode = FUNC18(sb, ino);
	if (!inode)
		return FUNC0(-ENOMEM);
	if (!(inode->i_state & I_NEW))
		return inode;

	ei = FUNC2(inode);
	ei->i_block_alloc_info = NULL;

	ret = FUNC9(inode, &iloc, 0);
	if (ret < 0)
		goto bad_inode;
	bh = iloc.bh;
	raw_inode = FUNC14(&iloc);
	inode->i_mode = FUNC20(raw_inode->i_mode);
	inode->i_uid = (uid_t)FUNC20(raw_inode->i_uid_low);
	inode->i_gid = (gid_t)FUNC20(raw_inode->i_gid_low);
	if(!(FUNC27 (inode->i_sb, NO_UID32))) {
		inode->i_uid |= FUNC20(raw_inode->i_uid_high) << 16;
		inode->i_gid |= FUNC20(raw_inode->i_gid_high) << 16;
	}
	inode->i_nlink = FUNC20(raw_inode->i_links_count);
	inode->i_size = FUNC21(raw_inode->i_size);
	inode->i_atime.tv_sec = (signed)FUNC21(raw_inode->i_atime);
	inode->i_ctime.tv_sec = (signed)FUNC21(raw_inode->i_ctime);
	inode->i_mtime.tv_sec = (signed)FUNC21(raw_inode->i_mtime);
	inode->i_atime.tv_nsec = inode->i_ctime.tv_nsec = inode->i_mtime.tv_nsec = 0;

	ei->i_state = 0;
	ei->i_dir_start_lookup = 0;
	ei->i_dtime = FUNC21(raw_inode->i_dtime);
	/* We now have enough fields to check if the inode was active or not.
	 * This is needed because nfsd might try to access dead inodes
	 * the test is that same one that e2fsck uses
	 * NeilBrown 1999oct15
	 */
	if (inode->i_nlink == 0) {
		if (inode->i_mode == 0 ||
		    !(FUNC4(inode->i_sb)->s_mount_state & EXT3_ORPHAN_FS)) {
			/* this inode is deleted */
			FUNC11 (bh);
			ret = -ESTALE;
			goto bad_inode;
		}
		/* The only unlinked inodes we let through here have
		 * valid i_mode and are being read by the orphan
		 * recovery code: that's fine, we're about to complete
		 * the process of deleting those. */
	}
	inode->i_blocks = FUNC21(raw_inode->i_blocks);
	ei->i_flags = FUNC21(raw_inode->i_flags);
#ifdef EXT3_FRAGMENTS
	ei->i_faddr = le32_to_cpu(raw_inode->i_faddr);
	ei->i_frag_no = raw_inode->i_frag;
	ei->i_frag_size = raw_inode->i_fsize;
#endif
	ei->i_file_acl = FUNC21(raw_inode->i_file_acl);
	if (!FUNC8(inode->i_mode)) {
		ei->i_dir_acl = FUNC21(raw_inode->i_dir_acl);
	} else {
		inode->i_size |=
			((__u64)FUNC21(raw_inode->i_size_high)) << 32;
	}
	ei->i_disksize = inode->i_size;
	inode->i_generation = FUNC21(raw_inode->i_generation);
	ei->i_block_group = iloc.block_group;
	/*
	 * NOTE! The in-memory inode i_data array is in little-endian order
	 * even on big-endian machines: we do NOT byteswap the block numbers!
	 */
	for (block = 0; block < EXT3_N_BLOCKS; block++)
		ei->i_data[block] = raw_inode->i_block[block];
	FUNC5(&ei->i_orphan);

	/*
	 * Set transaction id's of transactions that have to be committed
	 * to finish f[data]sync. We set them to currently running transaction
	 * as we cannot be sure that the inode or some of its metadata isn't
	 * part of the transaction - the inode could have been reclaimed and
	 * now it is reread from disk.
	 */
	if (journal) {
		tid_t tid;

		FUNC25(&journal->j_state_lock);
		if (journal->j_running_transaction)
			transaction = journal->j_running_transaction;
		else
			transaction = journal->j_committing_transaction;
		if (transaction)
			tid = transaction->t_tid;
		else
			tid = journal->j_commit_sequence;
		FUNC26(&journal->j_state_lock);
		FUNC10(&ei->i_sync_tid, tid);
		FUNC10(&ei->i_datasync_tid, tid);
	}

	if (inode->i_ino >= FUNC1(inode->i_sb) + 1 &&
	    FUNC3(inode->i_sb) > EXT3_GOOD_OLD_INODE_SIZE) {
		/*
		 * When mke2fs creates big inodes it does not zero out
		 * the unused bytes above EXT3_GOOD_OLD_INODE_SIZE,
		 * so ignore those first few inodes.
		 */
		ei->i_extra_isize = FUNC20(raw_inode->i_extra_isize);
		if (EXT3_GOOD_OLD_INODE_SIZE + ei->i_extra_isize >
		    FUNC3(inode->i_sb)) {
			FUNC11 (bh);
			ret = -EIO;
			goto bad_inode;
		}
		if (ei->i_extra_isize == 0) {
			/* The extra space is currently unused. Use it. */
			ei->i_extra_isize = sizeof(struct ext3_inode) -
					    EXT3_GOOD_OLD_INODE_SIZE;
		} else {
			__le32 *magic = (void *)raw_inode +
					EXT3_GOOD_OLD_INODE_SIZE +
					ei->i_extra_isize;
			if (*magic == FUNC12(EXT3_XATTR_MAGIC))
				 ei->i_state |= EXT3_STATE_XATTR;
		}
	} else
		ei->i_extra_isize = 0;

	if (FUNC8(inode->i_mode)) {
		inode->i_op = &ext3_file_inode_operations;
		inode->i_fop = &ext3_file_operations;
		FUNC15(inode);
	} else if (FUNC6(inode->i_mode)) {
		inode->i_op = &ext3_dir_inode_operations;
		inode->i_fop = &ext3_dir_operations;
	} else if (FUNC7(inode->i_mode)) {
		if (FUNC13(inode)) {
			inode->i_op = &ext3_fast_symlink_inode_operations;
			FUNC22(ei->i_data, inode->i_size,
				sizeof(ei->i_data) - 1);
		} else {
			inode->i_op = &ext3_symlink_inode_operations;
			FUNC15(inode);
		}
	} else {
		inode->i_op = &ext3_special_inode_operations;
		if (raw_inode->i_block[0])
			FUNC19(inode, inode->i_mode,
			   FUNC24(FUNC21(raw_inode->i_block[0])));
		else
			FUNC19(inode, inode->i_mode,
			   FUNC23(FUNC21(raw_inode->i_block[1])));
	}
	FUNC11 (iloc.bh);
	FUNC16(inode);
	FUNC28(inode);
	return inode;

bad_inode:
	FUNC17(inode);
	return FUNC0(ret);
}