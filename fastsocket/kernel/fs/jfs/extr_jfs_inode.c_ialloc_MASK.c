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
typedef  int umode_t ;
struct super_block {int dummy; } ;
struct jfs_inode_info {int mode2; scalar_t__ xtlid; scalar_t__ atltail; scalar_t__ atlhead; scalar_t__ blid; scalar_t__ bxflag; scalar_t__ btindex; scalar_t__ btorder; scalar_t__ acltype; scalar_t__ next_index; int /*<<< orphan*/  ea; int /*<<< orphan*/  acl; scalar_t__ cflag; int /*<<< orphan*/  otime; int /*<<< orphan*/  saved_gid; int /*<<< orphan*/  saved_uid; } ;
struct TYPE_4__ {int /*<<< orphan*/  tv_sec; } ;
struct inode {int i_mode; scalar_t__ i_nlink; int /*<<< orphan*/  i_flags; scalar_t__ i_generation; TYPE_2__ i_ctime; TYPE_2__ i_atime; TYPE_2__ i_mtime; scalar_t__ i_blocks; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; struct super_block* i_sb; } ;
typedef  int /*<<< orphan*/  dxd_t ;
struct TYPE_3__ {int /*<<< orphan*/  gengen; } ;

/* Variables and functions */
 TYPE_2__ CURRENT_TIME ; 
 int EDQUOT ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 struct inode* FUNC0 (int) ; 
 int IDIRECTORY ; 
 int INLINEEA ; 
 int ISPARSE ; 
 int JFS_APPEND_FL ; 
 int JFS_DIRSYNC_FL ; 
 int JFS_FL_INHERIT ; 
 int JFS_IMMUTABLE_FL ; 
 struct jfs_inode_info* FUNC1 (struct inode*) ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 
 scalar_t__ FUNC3 (int) ; 
 int S_ISGID ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  S_NOQUOTA ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct inode*,scalar_t__,struct inode*) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC15 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 scalar_t__ FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 

struct inode *FUNC19(struct inode *parent, umode_t mode)
{
	struct super_block *sb = parent->i_sb;
	struct inode *inode;
	struct jfs_inode_info *jfs_inode;
	int rc;

	inode = FUNC15(sb);
	if (!inode) {
		FUNC12("ialloc: new_inode returned NULL!");
		rc = -ENOMEM;
		goto fail;
	}

	jfs_inode = FUNC1(inode);

	rc = FUNC7(parent, FUNC3(mode), inode);
	if (rc) {
		FUNC12("ialloc: diAlloc returned %d!", rc);
		if (rc == -EIO)
			FUNC13(inode);
		goto fail_put;
	}

	if (FUNC8(inode) < 0) {
		rc = -EINVAL;
		goto fail_unlock;
	}

	inode->i_uid = FUNC6();
	if (parent->i_mode & S_ISGID) {
		inode->i_gid = parent->i_gid;
		if (FUNC3(mode))
			mode |= S_ISGID;
	} else
		inode->i_gid = FUNC5();

	/*
	 * New inodes need to save sane values on disk when
	 * uid & gid mount options are used
	 */
	jfs_inode->saved_uid = inode->i_uid;
	jfs_inode->saved_gid = inode->i_gid;

	/*
	 * Allocate inode to quota.
	 */
	if (FUNC17(inode)) {
		rc = -EDQUOT;
		goto fail_drop;
	}

	inode->i_mode = mode;
	/* inherit flags from parent */
	jfs_inode->mode2 = FUNC1(parent)->mode2 & JFS_FL_INHERIT;

	if (FUNC3(mode)) {
		jfs_inode->mode2 |= IDIRECTORY;
		jfs_inode->mode2 &= ~JFS_DIRSYNC_FL;
	}
	else {
		jfs_inode->mode2 |= INLINEEA | ISPARSE;
		if (FUNC4(mode))
			jfs_inode->mode2 &= ~(JFS_IMMUTABLE_FL|JFS_APPEND_FL);
	}
	jfs_inode->mode2 |= mode;

	inode->i_blocks = 0;
	inode->i_mtime = inode->i_atime = inode->i_ctime = CURRENT_TIME;
	jfs_inode->otime = inode->i_ctime.tv_sec;
	inode->i_generation = FUNC2(sb)->gengen++;

	jfs_inode->cflag = 0;

	/* Zero remaining fields */
	FUNC14(&jfs_inode->acl, 0, sizeof(dxd_t));
	FUNC14(&jfs_inode->ea, 0, sizeof(dxd_t));
	jfs_inode->next_index = 0;
	jfs_inode->acltype = 0;
	jfs_inode->btorder = 0;
	jfs_inode->btindex = 0;
	jfs_inode->bxflag = 0;
	jfs_inode->blid = 0;
	jfs_inode->atlhead = 0;
	jfs_inode->atltail = 0;
	jfs_inode->xtlid = 0;
	FUNC11(inode);

	FUNC10("ialloc returns inode = 0x%p\n", inode);

	return inode;

fail_drop:
	FUNC18(inode);
	inode->i_flags |= S_NOQUOTA;
fail_unlock:
	inode->i_nlink = 0;
	FUNC16(inode);
fail_put:
	FUNC9(inode);
fail:
	return FUNC0(rc);
}