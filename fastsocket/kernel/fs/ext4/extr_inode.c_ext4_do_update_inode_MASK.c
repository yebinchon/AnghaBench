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
struct super_block {int s_dirt; } ;
struct inode {int i_mode; int i_nlink; int i_generation; int i_version; struct super_block* i_sb; int /*<<< orphan*/  i_rdev; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct ext4_inode_info {int i_dtime; int i_flags; int i_file_acl; int i_disksize; int i_extra_isize; void** i_data; } ;
struct ext4_inode {void* i_extra_isize; void* i_version_hi; void* i_disk_version; void** i_block; void* i_generation; void* i_file_acl_lo; void* i_file_acl_high; void* i_flags; void* i_dtime; void* i_links_count; void* i_gid_high; void* i_uid_high; void* i_gid_low; void* i_uid_low; void* i_mode; } ;
struct ext4_iloc {struct buffer_head* bh; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {struct buffer_head* s_sbh; TYPE_1__* s_es; int /*<<< orphan*/  s_inode_size; } ;
struct TYPE_3__ {void* s_creator_os; void* s_rev_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ext4_inode_info*,struct ext4_inode*) ; 
 int /*<<< orphan*/  EXT4_FEATURE_RO_COMPAT_LARGE_FILE ; 
 scalar_t__ FUNC2 (struct ext4_inode*,struct ext4_inode_info*,int /*<<< orphan*/ ) ; 
 int EXT4_GOOD_OLD_REV ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct ext4_inode_info* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct inode*,struct ext4_inode*) ; 
 int EXT4_N_BLOCKS ; 
 int EXT4_OS_HURD ; 
 TYPE_2__* FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT4_STATE_NEW ; 
 int /*<<< orphan*/  NO_UID32 ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 void* FUNC11 (int) ; 
 void* FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ext4_inode_info*) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,struct ext4_inode*,struct ext4_inode_info*) ; 
 int FUNC18 (struct ext4_inode*) ; 
 int /*<<< orphan*/  FUNC19 (struct ext4_inode*,int) ; 
 int FUNC20 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 struct ext4_inode* FUNC21 (struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC22 (struct super_block*,int) ; 
 scalar_t__ FUNC23 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,struct inode*,int) ; 
 int FUNC26 (int /*<<< orphan*/ ) ; 
 int FUNC27 (int /*<<< orphan*/ ) ; 
 int FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i_atime ; 
 int /*<<< orphan*/  i_crtime ; 
 int /*<<< orphan*/  i_ctime ; 
 int /*<<< orphan*/  i_mtime ; 
 int /*<<< orphan*/  i_version_hi ; 
 int FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct ext4_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC31 (int /*<<< orphan*/ ) ; 
 int FUNC32 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC35(handle_t *handle,
				struct inode *inode,
				struct ext4_iloc *iloc)
{
	struct ext4_inode *raw_inode = FUNC21(iloc);
	struct ext4_inode_info *ei = FUNC4(inode);
	struct buffer_head *bh = iloc->bh;
	int err = 0, rc, block;
	int need_datasync = 0;

	/* For fields not not tracking in the in-memory inode,
	 * initialise them to zero for new inodes. */
	if (FUNC23(inode, EXT4_STATE_NEW))
		FUNC30(raw_inode, 0, FUNC6(inode->i_sb)->s_inode_size);

	FUNC14(ei);
	raw_inode->i_mode = FUNC11(inode->i_mode);
	if (!(FUNC34(inode->i_sb, NO_UID32))) {
		raw_inode->i_uid_low = FUNC11(FUNC29(inode->i_uid));
		raw_inode->i_gid_low = FUNC11(FUNC29(inode->i_gid));
/*
 * Fix up interoperability with old kernels. Otherwise, old inodes get
 * re-used with the upper 16 bits of the uid/gid intact
 */
		if (!ei->i_dtime) {
			raw_inode->i_uid_high =
				FUNC11(FUNC28(inode->i_uid));
			raw_inode->i_gid_high =
				FUNC11(FUNC28(inode->i_gid));
		} else {
			raw_inode->i_uid_high = 0;
			raw_inode->i_gid_high = 0;
		}
	} else {
		raw_inode->i_uid_low =
			FUNC11(FUNC27(inode->i_uid));
		raw_inode->i_gid_low =
			FUNC11(FUNC26(inode->i_gid));
		raw_inode->i_uid_high = 0;
		raw_inode->i_gid_high = 0;
	}
	raw_inode->i_links_count = FUNC11(inode->i_nlink);

	FUNC5(i_ctime, inode, raw_inode);
	FUNC5(i_mtime, inode, raw_inode);
	FUNC5(i_atime, inode, raw_inode);
	FUNC1(i_crtime, ei, raw_inode);

	if (FUNC17(handle, raw_inode, ei))
		goto out_brelse;
	raw_inode->i_dtime = FUNC12(ei->i_dtime);
	raw_inode->i_flags = FUNC12(ei->i_flags);
	if (FUNC6(inode->i_sb)->s_es->s_creator_os !=
	    FUNC12(EXT4_OS_HURD))
		raw_inode->i_file_acl_high =
			FUNC11(ei->i_file_acl >> 32);
	raw_inode->i_file_acl_lo = FUNC12(ei->i_file_acl);
	if (ei->i_disksize != FUNC18(raw_inode)) {
		FUNC19(raw_inode, ei->i_disksize);
		need_datasync = 1;
	}
	if (ei->i_disksize > 0x7fffffffULL) {
		struct super_block *sb = inode->i_sb;
		if (!FUNC3(sb,
				EXT4_FEATURE_RO_COMPAT_LARGE_FILE) ||
				FUNC6(sb)->s_es->s_rev_level ==
				FUNC12(EXT4_GOOD_OLD_REV)) {
			/* If this is the first large file
			 * created, add a flag to the superblock.
			 */
			err = FUNC20(handle,
					FUNC6(sb)->s_sbh);
			if (err)
				goto out_brelse;
			FUNC24(sb);
			FUNC7(sb,
					EXT4_FEATURE_RO_COMPAT_LARGE_FILE);
			sb->s_dirt = 1;
			FUNC16(handle);
			err = FUNC15(handle, NULL,
					FUNC6(sb)->s_sbh);
		}
	}
	raw_inode->i_generation = FUNC12(inode->i_generation);
	if (FUNC9(inode->i_mode) || FUNC8(inode->i_mode)) {
		if (FUNC33(inode->i_rdev)) {
			raw_inode->i_block[0] =
				FUNC12(FUNC32(inode->i_rdev));
			raw_inode->i_block[1] = 0;
		} else {
			raw_inode->i_block[0] = 0;
			raw_inode->i_block[1] =
				FUNC12(FUNC31(inode->i_rdev));
			raw_inode->i_block[2] = 0;
		}
	} else
		for (block = 0; block < EXT4_N_BLOCKS; block++)
			raw_inode->i_block[block] = ei->i_data[block];

	raw_inode->i_disk_version = FUNC12(inode->i_version);
	if (ei->i_extra_isize) {
		if (FUNC2(raw_inode, ei, i_version_hi))
			raw_inode->i_version_hi =
			FUNC12(inode->i_version >> 32);
		raw_inode->i_extra_isize = FUNC11(ei->i_extra_isize);
	}

	FUNC0(bh, "call ext4_handle_dirty_metadata");
	rc = FUNC15(handle, NULL, bh);
	if (!err)
		err = rc;
	FUNC13(inode, EXT4_STATE_NEW);

	FUNC25(handle, inode, need_datasync);
out_brelse:
	FUNC10(bh);
	FUNC22(inode->i_sb, err);
	return err;
}