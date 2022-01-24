#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uid_t ;
struct TYPE_5__ {void* t_tid; } ;
typedef  TYPE_1__ transaction_t ;
typedef  void* tid_t ;
struct super_block {int dummy; } ;
struct inode {int i_state; int i_mode; int i_uid; int i_gid; int i_nlink; int i_version; int /*<<< orphan*/  i_ino; struct super_block* i_sb; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_size; int /*<<< orphan*/ * i_fop; void* i_generation; int /*<<< orphan*/  i_blocks; } ;
struct ext4_inode_info {int i_file_acl; int i_extra_isize; scalar_t__* i_data; void* i_datasync_tid; void* i_sync_tid; int /*<<< orphan*/  i_orphan; int /*<<< orphan*/  i_last_alloc_group; int /*<<< orphan*/  i_block_group; scalar_t__ i_reserved_quota; int /*<<< orphan*/  i_disksize; void* i_flags; void* i_dtime; scalar_t__ i_dir_start_lookup; scalar_t__ i_state_flags; } ;
struct ext4_inode {scalar_t__* i_block; scalar_t__ i_version_hi; scalar_t__ i_disk_version; int /*<<< orphan*/  i_extra_isize; scalar_t__ i_generation; int /*<<< orphan*/  i_file_acl_high; scalar_t__ i_file_acl_lo; scalar_t__ i_flags; scalar_t__ i_dtime; int /*<<< orphan*/  i_links_count; int /*<<< orphan*/  i_gid_high; int /*<<< orphan*/  i_uid_high; int /*<<< orphan*/  i_gid_low; int /*<<< orphan*/  i_uid_low; int /*<<< orphan*/  i_mode; } ;
struct ext4_iloc {scalar_t__ bh; int /*<<< orphan*/  block_group; } ;
struct TYPE_6__ {int /*<<< orphan*/  j_state_lock; void* j_commit_sequence; TYPE_1__* j_committing_transaction; TYPE_1__* j_running_transaction; } ;
typedef  TYPE_2__ journal_t ;
typedef  int gid_t ;
typedef  int __u64 ;
typedef  scalar_t__ __le32 ;
struct TYPE_7__ {int s_mount_state; TYPE_2__* s_journal; } ;

/* Variables and functions */
 long EIO ; 
 long ENOMEM ; 
 struct inode* FUNC0 (long) ; 
 long ESTALE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ext4_inode_info*,struct ext4_inode*) ; 
 int /*<<< orphan*/  EXT4_FEATURE_INCOMPAT_64BIT ; 
 scalar_t__ FUNC2 (struct ext4_inode*,struct ext4_inode_info*,int /*<<< orphan*/ ) ; 
 int EXT4_GOOD_OLD_INODE_SIZE ; 
 scalar_t__ FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct ext4_inode_info* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct inode*,struct ext4_inode*) ; 
 int FUNC6 (struct super_block*) ; 
 int EXT4_N_BLOCKS ; 
 int EXT4_ORPHAN_FS ; 
 TYPE_3__* FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  EXT4_STATE_XATTR ; 
 int /*<<< orphan*/  EXT4_XATTR_MAGIC ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int I_NEW ; 
 int /*<<< orphan*/  NO_UID32 ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ FUNC15 (int) ; 
 long FUNC16 (struct inode*,struct ext4_iloc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 long FUNC19 (struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  ext4_dir_inode_operations ; 
 int /*<<< orphan*/  ext4_dir_operations ; 
 int /*<<< orphan*/  FUNC21 (struct super_block*,char*,int,int /*<<< orphan*/ ) ; 
 long FUNC22 (struct inode*) ; 
 int /*<<< orphan*/  ext4_fast_symlink_inode_operations ; 
 int /*<<< orphan*/  ext4_file_inode_operations ; 
 int /*<<< orphan*/  ext4_file_operations ; 
 int /*<<< orphan*/  FUNC23 (struct ext4_inode*,struct ext4_inode_info*) ; 
 scalar_t__ FUNC24 (struct inode*) ; 
 int /*<<< orphan*/  FUNC25 (struct ext4_inode*) ; 
 struct ext4_inode* FUNC26 (struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC27 (struct inode*) ; 
 int /*<<< orphan*/  FUNC28 (struct inode*) ; 
 int /*<<< orphan*/  FUNC29 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ext4_special_inode_operations ; 
 int /*<<< orphan*/  ext4_symlink_inode_operations ; 
 scalar_t__ FUNC30 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i_atime ; 
 int /*<<< orphan*/  i_crtime ; 
 int /*<<< orphan*/  i_ctime ; 
 int /*<<< orphan*/  i_mtime ; 
 int /*<<< orphan*/  i_version_hi ; 
 int /*<<< orphan*/  FUNC31 (struct inode*) ; 
 struct inode* FUNC32 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC33 (struct inode*,int,int /*<<< orphan*/ ) ; 
 int FUNC34 (int /*<<< orphan*/ ) ; 
 void* FUNC35 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC36 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC37 (void*) ; 
 int /*<<< orphan*/  FUNC38 (void*) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC41 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (struct inode*) ; 

struct inode *FUNC43(struct super_block *sb, unsigned long ino)
{
	struct ext4_iloc iloc;
	struct ext4_inode *raw_inode;
	struct ext4_inode_info *ei;
	struct inode *inode;
	journal_t *journal = FUNC7(sb)->s_journal;
	long ret;
	int block;

	inode = FUNC32(sb, ino);
	if (!inode)
		return FUNC0(-ENOMEM);
	if (!(inode->i_state & I_NEW))
		return inode;

	ei = FUNC4(inode);
	iloc.bh = 0;

	ret = FUNC16(inode, &iloc, 0);
	if (ret < 0)
		goto bad_inode;
	raw_inode = FUNC26(&iloc);
	inode->i_mode = FUNC34(raw_inode->i_mode);
	inode->i_uid = (uid_t)FUNC34(raw_inode->i_uid_low);
	inode->i_gid = (gid_t)FUNC34(raw_inode->i_gid_low);
	if (!(FUNC41(inode->i_sb, NO_UID32))) {
		inode->i_uid |= FUNC34(raw_inode->i_uid_high) << 16;
		inode->i_gid |= FUNC34(raw_inode->i_gid_high) << 16;
	}
	inode->i_nlink = FUNC34(raw_inode->i_links_count);

	ei->i_state_flags = 0;
	ei->i_dir_start_lookup = 0;
	ei->i_dtime = FUNC35(raw_inode->i_dtime);
	/* We now have enough fields to check if the inode was active or not.
	 * This is needed because nfsd might try to access dead inodes
	 * the test is that same one that e2fsck uses
	 * NeilBrown 1999oct15
	 */
	if (inode->i_nlink == 0) {
		if (inode->i_mode == 0 ||
		    !(FUNC7(inode->i_sb)->s_mount_state & EXT4_ORPHAN_FS)) {
			/* this inode is deleted */
			ret = -ESTALE;
			goto bad_inode;
		}
		/* The only unlinked inodes we let through here have
		 * valid i_mode and are being read by the orphan
		 * recovery code: that's fine, we're about to complete
		 * the process of deleting those. */
	}
	ei->i_flags = FUNC35(raw_inode->i_flags);
	inode->i_blocks = FUNC23(raw_inode, ei);
	ei->i_file_acl = FUNC35(raw_inode->i_file_acl_lo);
	if (FUNC3(sb, EXT4_FEATURE_INCOMPAT_64BIT))
		ei->i_file_acl |=
			((__u64)FUNC34(raw_inode->i_file_acl_high)) << 32;
	inode->i_size = FUNC25(raw_inode);
	ei->i_disksize = inode->i_size;
#ifdef CONFIG_QUOTA
	ei->i_reserved_quota = 0;
#endif
	inode->i_generation = FUNC35(raw_inode->i_generation);
	ei->i_block_group = iloc.block_group;
	ei->i_last_alloc_group = ~0;
	/*
	 * NOTE! The in-memory inode i_data array is in little-endian order
	 * even on big-endian machines: we do NOT byteswap the block numbers!
	 */
	for (block = 0; block < EXT4_N_BLOCKS; block++)
		ei->i_data[block] = raw_inode->i_block[block];
	FUNC8(&ei->i_orphan);

	/*
	 * Set transaction id's of transactions that have to be committed
	 * to finish f[data]sync. We set them to currently running transaction
	 * as we cannot be sure that the inode or some of its metadata isn't
	 * part of the transaction - the inode could have been reclaimed and
	 * now it is reread from disk.
	 */
	if (journal) {
		transaction_t *transaction;
		tid_t tid;

		FUNC39(&journal->j_state_lock);
		if (journal->j_running_transaction)
			transaction = journal->j_running_transaction;
		else
			transaction = journal->j_committing_transaction;
		if (transaction)
			tid = transaction->t_tid;
		else
			tid = journal->j_commit_sequence;
		FUNC40(&journal->j_state_lock);
		ei->i_sync_tid = tid;
		ei->i_datasync_tid = tid;
	}

	if (FUNC6(inode->i_sb) > EXT4_GOOD_OLD_INODE_SIZE) {
		ei->i_extra_isize = FUNC34(raw_inode->i_extra_isize);
		if (EXT4_GOOD_OLD_INODE_SIZE + ei->i_extra_isize >
		    FUNC6(inode->i_sb)) {
			ret = -EIO;
			goto bad_inode;
		}
		if (ei->i_extra_isize == 0) {
			/* The extra space is currently unused. Use it. */
			ei->i_extra_isize = sizeof(struct ext4_inode) -
					    EXT4_GOOD_OLD_INODE_SIZE;
		} else {
			__le32 *magic = (void *)raw_inode +
					EXT4_GOOD_OLD_INODE_SIZE +
					ei->i_extra_isize;
			if (*magic == FUNC18(EXT4_XATTR_MAGIC))
				FUNC29(inode, EXT4_STATE_XATTR);
		}
	} else
		ei->i_extra_isize = 0;

	FUNC5(i_ctime, inode, raw_inode);
	FUNC5(i_mtime, inode, raw_inode);
	FUNC5(i_atime, inode, raw_inode);
	FUNC1(i_crtime, ei, raw_inode);

	inode->i_version = FUNC35(raw_inode->i_disk_version);
	if (FUNC6(inode->i_sb) > EXT4_GOOD_OLD_INODE_SIZE) {
		if (FUNC2(raw_inode, ei, i_version_hi))
			inode->i_version |=
			(__u64)(FUNC35(raw_inode->i_version_hi)) << 32;
	}

	ret = 0;
	if (ei->i_file_acl &&
	    !FUNC20(FUNC7(sb), ei->i_file_acl, 1)) {
		FUNC21(sb, "bad extended attribute block %llu inode #%lu",
			   ei->i_file_acl, inode->i_ino);
		ret = -EIO;
		goto bad_inode;
	} else if (FUNC30(inode, EXT4_INODE_EXTENTS)) {
		if (FUNC14(inode->i_mode) || FUNC11(inode->i_mode) ||
		    (FUNC13(inode->i_mode) &&
		     !FUNC24(inode)))
			/* Validate extent which is part of inode */
			ret = FUNC22(inode);
	} else if (FUNC14(inode->i_mode) || FUNC11(inode->i_mode) ||
		   (FUNC13(inode->i_mode) &&
		    !FUNC24(inode))) {
		/* Validate block references which are part of inode */
		ret = FUNC19(inode);
	}
	if (ret)
		goto bad_inode;

	if (FUNC14(inode->i_mode)) {
		inode->i_op = &ext4_file_inode_operations;
		inode->i_fop = &ext4_file_operations;
		FUNC27(inode);
	} else if (FUNC11(inode->i_mode)) {
		inode->i_op = &ext4_dir_inode_operations;
		inode->i_fop = &ext4_dir_operations;
	} else if (FUNC13(inode->i_mode)) {
		if (FUNC24(inode)) {
			inode->i_op = &ext4_fast_symlink_inode_operations;
			FUNC36(ei->i_data, inode->i_size,
				sizeof(ei->i_data) - 1);
		} else {
			inode->i_op = &ext4_symlink_inode_operations;
			FUNC27(inode);
		}
	} else if (FUNC10(inode->i_mode) || FUNC9(inode->i_mode) ||
	      FUNC12(inode->i_mode) || FUNC15(inode->i_mode)) {
		inode->i_op = &ext4_special_inode_operations;
		if (raw_inode->i_block[0])
			FUNC33(inode, inode->i_mode,
			   FUNC38(FUNC35(raw_inode->i_block[0])));
		else
			FUNC33(inode, inode->i_mode,
			   FUNC37(FUNC35(raw_inode->i_block[1])));
	} else {
		ret = -EIO;
		FUNC21(inode->i_sb, "bogus i_mode (%o) for inode=%lu",
			   inode->i_mode, inode->i_ino);
		goto bad_inode;
	}
	FUNC17(iloc.bh);
	FUNC28(inode);
	FUNC42(inode);
	return inode;

bad_inode:
	FUNC17(iloc.bh);
	FUNC31(inode);
	return FUNC0(ret);
}