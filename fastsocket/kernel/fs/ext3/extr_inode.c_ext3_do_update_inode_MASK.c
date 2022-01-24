#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct TYPE_15__ {int tv_sec; } ;
struct TYPE_14__ {int tv_sec; } ;
struct TYPE_13__ {int tv_sec; } ;
struct inode {int i_blocks; int i_generation; struct super_block* i_sb; int /*<<< orphan*/  i_rdev; scalar_t__ i_mode; TYPE_4__ i_mtime; TYPE_3__ i_ctime; TYPE_2__ i_atime; scalar_t__ i_nlink; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct ext3_inode_info {int i_state; int i_dtime; int i_disksize; int i_flags; int i_faddr; int i_file_acl; int i_dir_acl; int /*<<< orphan*/  i_sync_tid; scalar_t__ i_extra_isize; void** i_data; int /*<<< orphan*/  i_frag_size; int /*<<< orphan*/  i_frag_no; } ;
struct ext3_inode {void* i_extra_isize; void** i_block; void* i_generation; void* i_size_high; void* i_dir_acl; void* i_file_acl; int /*<<< orphan*/  i_fsize; int /*<<< orphan*/  i_frag; void* i_faddr; void* i_flags; void* i_dtime; void* i_blocks; void* i_mtime; void* i_ctime; void* i_atime; void* i_size; void* i_links_count; void* i_gid_high; void* i_uid_high; void* i_gid_low; void* i_uid_low; void* i_mode; } ;
struct ext3_iloc {struct buffer_head* bh; } ;
struct buffer_head {int dummy; } ;
struct TYPE_17__ {int h_sync; TYPE_1__* h_transaction; } ;
typedef  TYPE_6__ handle_t ;
struct TYPE_16__ {void* s_rev_level; } ;
struct TYPE_12__ {int /*<<< orphan*/  t_tid; } ;
struct TYPE_11__ {struct buffer_head* s_sbh; TYPE_5__* s_es; int /*<<< orphan*/  s_inode_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int /*<<< orphan*/  EXT3_FEATURE_RO_COMPAT_LARGE_FILE ; 
 int EXT3_GOOD_OLD_REV ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct ext3_inode_info* FUNC2 (struct inode*) ; 
 int EXT3_N_BLOCKS ; 
 TYPE_10__* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,int /*<<< orphan*/ ) ; 
 int EXT3_STATE_NEW ; 
 int /*<<< orphan*/  NO_UID32 ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 void* FUNC10 (scalar_t__) ; 
 void* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct ext3_inode_info*) ; 
 int FUNC13 (TYPE_6__*,struct buffer_head*) ; 
 int FUNC14 (TYPE_6__*,struct buffer_head*) ; 
 struct ext3_inode* FUNC15 (struct ext3_iloc*) ; 
 int /*<<< orphan*/  FUNC16 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct super_block*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct buffer_head*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct ext3_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC29(handle_t *handle,
				struct inode *inode,
				struct ext3_iloc *iloc)
{
	struct ext3_inode *raw_inode = FUNC15(iloc);
	struct ext3_inode_info *ei = FUNC2(inode);
	struct buffer_head *bh = iloc->bh;
	int err = 0, rc, block;

again:
	/* we can't allow multiple procs in here at once, its a bit racey */
	FUNC21(bh);

	/* For fields not not tracking in the in-memory inode,
	 * initialise them to zero for new inodes. */
	if (ei->i_state & EXT3_STATE_NEW)
		FUNC23(raw_inode, 0, FUNC3(inode->i_sb)->s_inode_size);

	FUNC12(ei);
	raw_inode->i_mode = FUNC10(inode->i_mode);
	if(!(FUNC27(inode->i_sb, NO_UID32))) {
		raw_inode->i_uid_low = FUNC10(FUNC22(inode->i_uid));
		raw_inode->i_gid_low = FUNC10(FUNC22(inode->i_gid));
/*
 * Fix up interoperability with old kernels. Otherwise, old inodes get
 * re-used with the upper 16 bits of the uid/gid intact
 */
		if(!ei->i_dtime) {
			raw_inode->i_uid_high =
				FUNC10(FUNC20(inode->i_uid));
			raw_inode->i_gid_high =
				FUNC10(FUNC20(inode->i_gid));
		} else {
			raw_inode->i_uid_high = 0;
			raw_inode->i_gid_high = 0;
		}
	} else {
		raw_inode->i_uid_low =
			FUNC10(FUNC19(inode->i_uid));
		raw_inode->i_gid_low =
			FUNC10(FUNC18(inode->i_gid));
		raw_inode->i_uid_high = 0;
		raw_inode->i_gid_high = 0;
	}
	raw_inode->i_links_count = FUNC10(inode->i_nlink);
	raw_inode->i_size = FUNC11(ei->i_disksize);
	raw_inode->i_atime = FUNC11(inode->i_atime.tv_sec);
	raw_inode->i_ctime = FUNC11(inode->i_ctime.tv_sec);
	raw_inode->i_mtime = FUNC11(inode->i_mtime.tv_sec);
	raw_inode->i_blocks = FUNC11(inode->i_blocks);
	raw_inode->i_dtime = FUNC11(ei->i_dtime);
	raw_inode->i_flags = FUNC11(ei->i_flags);
#ifdef EXT3_FRAGMENTS
	raw_inode->i_faddr = cpu_to_le32(ei->i_faddr);
	raw_inode->i_frag = ei->i_frag_no;
	raw_inode->i_fsize = ei->i_frag_size;
#endif
	raw_inode->i_file_acl = FUNC11(ei->i_file_acl);
	if (!FUNC7(inode->i_mode)) {
		raw_inode->i_dir_acl = FUNC11(ei->i_dir_acl);
	} else {
		raw_inode->i_size_high =
			FUNC11(ei->i_disksize >> 32);
		if (ei->i_disksize > 0x7fffffffULL) {
			struct super_block *sb = inode->i_sb;
			if (!FUNC1(sb,
					EXT3_FEATURE_RO_COMPAT_LARGE_FILE) ||
			    FUNC3(sb)->s_es->s_rev_level ==
					FUNC11(EXT3_GOOD_OLD_REV)) {
			       /* If this is the first large file
				* created, add a flag to the superblock.
				*/
				FUNC28(bh);
				err = FUNC14(handle,
						FUNC3(sb)->s_sbh);
				if (err)
					goto out_brelse;

				FUNC17(sb);
				FUNC4(sb,
					EXT3_FEATURE_RO_COMPAT_LARGE_FILE);
				handle->h_sync = 1;
				err = FUNC13(handle,
						FUNC3(sb)->s_sbh);
				/* get our lock and start over */
				goto again;
			}
		}
	}
	raw_inode->i_generation = FUNC11(inode->i_generation);
	if (FUNC6(inode->i_mode) || FUNC5(inode->i_mode)) {
		if (FUNC26(inode->i_rdev)) {
			raw_inode->i_block[0] =
				FUNC11(FUNC25(inode->i_rdev));
			raw_inode->i_block[1] = 0;
		} else {
			raw_inode->i_block[0] = 0;
			raw_inode->i_block[1] =
				FUNC11(FUNC24(inode->i_rdev));
			raw_inode->i_block[2] = 0;
		}
	} else for (block = 0; block < EXT3_N_BLOCKS; block++)
		raw_inode->i_block[block] = ei->i_data[block];

	if (ei->i_extra_isize)
		raw_inode->i_extra_isize = FUNC10(ei->i_extra_isize);

	FUNC0(bh, "call ext3_journal_dirty_metadata");
	FUNC28(bh);
	rc = FUNC13(handle, bh);
	if (!err)
		err = rc;
	ei->i_state &= ~EXT3_STATE_NEW;

	FUNC8(&ei->i_sync_tid, handle->h_transaction->t_tid);
out_brelse:
	FUNC9 (bh);
	FUNC16(inode->i_sb, err);
	return err;
}