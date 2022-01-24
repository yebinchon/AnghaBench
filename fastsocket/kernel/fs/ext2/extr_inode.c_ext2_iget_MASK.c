#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uid_t ;
struct super_block {int dummy; } ;
struct TYPE_8__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_7__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_6__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct inode {int i_state; int i_mode; int i_uid; int i_gid; int i_nlink; int i_size; int /*<<< orphan*/ * i_op; TYPE_1__* i_mapping; int /*<<< orphan*/  i_sb; int /*<<< orphan*/ * i_fop; void* i_generation; void* i_blocks; TYPE_4__ i_ctime; TYPE_3__ i_mtime; TYPE_2__ i_atime; } ;
struct ext2_inode_info {unsigned long i_block_group; scalar_t__* i_data; scalar_t__ i_dir_start_lookup; scalar_t__ i_state; void* i_dtime; void* i_dir_acl; void* i_file_acl; int /*<<< orphan*/  i_frag_size; int /*<<< orphan*/  i_frag_no; void* i_faddr; void* i_flags; int /*<<< orphan*/ * i_block_alloc_info; } ;
struct ext2_inode {scalar_t__* i_block; scalar_t__ i_generation; scalar_t__ i_dir_acl; scalar_t__ i_size_high; scalar_t__ i_file_acl; int /*<<< orphan*/  i_fsize; int /*<<< orphan*/  i_frag; scalar_t__ i_faddr; scalar_t__ i_flags; scalar_t__ i_blocks; scalar_t__ i_dtime; scalar_t__ i_mtime; scalar_t__ i_ctime; scalar_t__ i_atime; scalar_t__ i_size; int /*<<< orphan*/  i_links_count; int /*<<< orphan*/  i_gid_high; int /*<<< orphan*/  i_uid_high; int /*<<< orphan*/  i_gid_low; int /*<<< orphan*/  i_uid_low; int /*<<< orphan*/  i_mode; } ;
struct buffer_head {int dummy; } ;
typedef  int gid_t ;
typedef  int __u64 ;
struct TYPE_5__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 long EIO ; 
 long ENOMEM ; 
 struct inode* FUNC0 (long) ; 
 long ESTALE ; 
 struct ext2_inode_info* FUNC1 (struct inode*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int EXT2_N_BLOCKS ; 
 scalar_t__ FUNC3 (struct ext2_inode*) ; 
 int I_NEW ; 
 int /*<<< orphan*/  NOBH ; 
 int /*<<< orphan*/  NO_UID32 ; 
 long FUNC4 (struct ext2_inode*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  ext2_aops ; 
 int /*<<< orphan*/  ext2_aops_xip ; 
 int /*<<< orphan*/  ext2_dir_inode_operations ; 
 int /*<<< orphan*/  ext2_dir_operations ; 
 int /*<<< orphan*/  ext2_fast_symlink_inode_operations ; 
 int /*<<< orphan*/  ext2_file_inode_operations ; 
 int /*<<< orphan*/  ext2_file_operations ; 
 struct ext2_inode* FUNC9 (int /*<<< orphan*/ ,unsigned long,struct buffer_head**) ; 
 scalar_t__ FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  ext2_nobh_aops ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  ext2_special_inode_operations ; 
 int /*<<< orphan*/  ext2_symlink_inode_operations ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ext2_xip_file_operations ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 struct inode* FUNC14 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 void* FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (void*) ; 
 int /*<<< orphan*/  FUNC20 (void*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*) ; 

struct inode *FUNC23 (struct super_block *sb, unsigned long ino)
{
	struct ext2_inode_info *ei;
	struct buffer_head * bh;
	struct ext2_inode *raw_inode;
	struct inode *inode;
	long ret = -EIO;
	int n;

	inode = FUNC14(sb, ino);
	if (!inode)
		return FUNC0(-ENOMEM);
	if (!(inode->i_state & I_NEW))
		return inode;

	ei = FUNC1(inode);
	ei->i_block_alloc_info = NULL;

	raw_inode = FUNC9(inode->i_sb, ino, &bh);
	if (FUNC3(raw_inode)) {
		ret = FUNC4(raw_inode);
 		goto bad_inode;
	}

	inode->i_mode = FUNC16(raw_inode->i_mode);
	inode->i_uid = (uid_t)FUNC16(raw_inode->i_uid_low);
	inode->i_gid = (gid_t)FUNC16(raw_inode->i_gid_low);
	if (!(FUNC21 (inode->i_sb, NO_UID32))) {
		inode->i_uid |= FUNC16(raw_inode->i_uid_high) << 16;
		inode->i_gid |= FUNC16(raw_inode->i_gid_high) << 16;
	}
	inode->i_nlink = FUNC16(raw_inode->i_links_count);
	inode->i_size = FUNC17(raw_inode->i_size);
	inode->i_atime.tv_sec = (signed)FUNC17(raw_inode->i_atime);
	inode->i_ctime.tv_sec = (signed)FUNC17(raw_inode->i_ctime);
	inode->i_mtime.tv_sec = (signed)FUNC17(raw_inode->i_mtime);
	inode->i_atime.tv_nsec = inode->i_mtime.tv_nsec = inode->i_ctime.tv_nsec = 0;
	ei->i_dtime = FUNC17(raw_inode->i_dtime);
	/* We now have enough fields to check if the inode was active or not.
	 * This is needed because nfsd might try to access dead inodes
	 * the test is that same one that e2fsck uses
	 * NeilBrown 1999oct15
	 */
	if (inode->i_nlink == 0 && (inode->i_mode == 0 || ei->i_dtime)) {
		/* this inode is deleted */
		FUNC8 (bh);
		ret = -ESTALE;
		goto bad_inode;
	}
	inode->i_blocks = FUNC17(raw_inode->i_blocks);
	ei->i_flags = FUNC17(raw_inode->i_flags);
	ei->i_faddr = FUNC17(raw_inode->i_faddr);
	ei->i_frag_no = raw_inode->i_frag;
	ei->i_frag_size = raw_inode->i_fsize;
	ei->i_file_acl = FUNC17(raw_inode->i_file_acl);
	ei->i_dir_acl = 0;
	if (FUNC7(inode->i_mode))
		inode->i_size |= ((__u64)FUNC17(raw_inode->i_size_high)) << 32;
	else
		ei->i_dir_acl = FUNC17(raw_inode->i_dir_acl);
	ei->i_dtime = 0;
	inode->i_generation = FUNC17(raw_inode->i_generation);
	ei->i_state = 0;
	ei->i_block_group = (ino - 1) / FUNC2(inode->i_sb);
	ei->i_dir_start_lookup = 0;

	/*
	 * NOTE! The in-memory inode i_data array is in little-endian order
	 * even on big-endian machines: we do NOT byteswap the block numbers!
	 */
	for (n = 0; n < EXT2_N_BLOCKS; n++)
		ei->i_data[n] = raw_inode->i_block[n];

	if (FUNC7(inode->i_mode)) {
		inode->i_op = &ext2_file_inode_operations;
		if (FUNC12(inode->i_sb)) {
			inode->i_mapping->a_ops = &ext2_aops_xip;
			inode->i_fop = &ext2_xip_file_operations;
		} else if (FUNC21(inode->i_sb, NOBH)) {
			inode->i_mapping->a_ops = &ext2_nobh_aops;
			inode->i_fop = &ext2_file_operations;
		} else {
			inode->i_mapping->a_ops = &ext2_aops;
			inode->i_fop = &ext2_file_operations;
		}
	} else if (FUNC5(inode->i_mode)) {
		inode->i_op = &ext2_dir_inode_operations;
		inode->i_fop = &ext2_dir_operations;
		if (FUNC21(inode->i_sb, NOBH))
			inode->i_mapping->a_ops = &ext2_nobh_aops;
		else
			inode->i_mapping->a_ops = &ext2_aops;
	} else if (FUNC6(inode->i_mode)) {
		if (FUNC10(inode)) {
			inode->i_op = &ext2_fast_symlink_inode_operations;
			FUNC18(ei->i_data, inode->i_size,
				sizeof(ei->i_data) - 1);
		} else {
			inode->i_op = &ext2_symlink_inode_operations;
			if (FUNC21(inode->i_sb, NOBH))
				inode->i_mapping->a_ops = &ext2_nobh_aops;
			else
				inode->i_mapping->a_ops = &ext2_aops;
		}
	} else {
		inode->i_op = &ext2_special_inode_operations;
		if (raw_inode->i_block[0])
			FUNC15(inode, inode->i_mode,
			   FUNC20(FUNC17(raw_inode->i_block[0])));
		else 
			FUNC15(inode, inode->i_mode,
			   FUNC19(FUNC17(raw_inode->i_block[1])));
	}
	FUNC8 (bh);
	FUNC11(inode);
	FUNC22(inode);
	return inode;
	
bad_inode:
	FUNC13(inode);
	return FUNC0(ret);
}