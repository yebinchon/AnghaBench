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
struct writeback_control {int dummy; } ;
struct super_block {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  tv_sec; } ;
struct inode {scalar_t__ i_ino; int i_uid; int i_gid; TYPE_1__ i_mtime; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_nlink; struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;
struct affs_tail {void* stype; void* gid; void* uid; int /*<<< orphan*/  change; void* size; void* protect; } ;
typedef  int gid_t ;
struct TYPE_8__ {int /*<<< orphan*/  i_protect; } ;
struct TYPE_7__ {int /*<<< orphan*/  root_change; } ;
struct TYPE_6__ {scalar_t__ s_root_block; int s_flags; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct inode*) ; 
 TYPE_3__* FUNC1 (struct super_block*,struct buffer_head*) ; 
 TYPE_2__* FUNC2 (struct super_block*) ; 
 struct affs_tail* FUNC3 (struct super_block*,struct buffer_head*) ; 
 int EIO ; 
 int SF_MUFS ; 
 int SF_SETGID ; 
 int SF_SETUID ; 
 int /*<<< orphan*/  ST_ROOT ; 
 struct buffer_head* FUNC4 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 void* FUNC9 (int) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC14(struct inode *inode, struct writeback_control *wbc)
{
	struct super_block	*sb = inode->i_sb;
	struct buffer_head	*bh;
	struct affs_tail	*tail;
	uid_t			 uid;
	gid_t			 gid;

	FUNC12("AFFS: write_inode(%lu)\n",inode->i_ino);

	if (!inode->i_nlink)
		// possibly free block
		return 0;
	bh = FUNC4(sb, inode->i_ino);
	if (!bh) {
		FUNC6(sb,"write_inode","Cannot read block %lu",inode->i_ino);
		return -EIO;
	}
	tail = FUNC3(sb, bh);
	if (tail->stype == FUNC10(ST_ROOT)) {
		FUNC13(inode->i_mtime.tv_sec,&FUNC1(sb, bh)->root_change);
	} else {
		tail->protect = FUNC10(FUNC0(inode)->i_protect);
		tail->size = FUNC10(inode->i_size);
		FUNC13(inode->i_mtime.tv_sec,&tail->change);
		if (!(inode->i_ino == FUNC2(sb)->s_root_block)) {
			uid = inode->i_uid;
			gid = inode->i_gid;
			if (FUNC2(sb)->s_flags & SF_MUFS) {
				if (inode->i_uid == 0 || inode->i_uid == 0xFFFF)
					uid = inode->i_uid ^ ~0;
				if (inode->i_gid == 0 || inode->i_gid == 0xFFFF)
					gid = inode->i_gid ^ ~0;
			}
			if (!(FUNC2(sb)->s_flags & SF_SETUID))
				tail->uid = FUNC9(uid);
			if (!(FUNC2(sb)->s_flags & SF_SETGID))
				tail->gid = FUNC9(gid);
		}
	}
	FUNC7(sb, bh);
	FUNC11(bh, inode);
	FUNC5(bh);
	FUNC8(inode);
	return 0;
}