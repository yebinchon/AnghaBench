#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_dir_lookup_result {int /*<<< orphan*/ * member_0; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_ctime_nsec; int /*<<< orphan*/  i_ctime; } ;
struct TYPE_6__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {int /*<<< orphan*/  i_count; TYPE_3__ i_ctime; int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {int /*<<< orphan*/ * d_op; TYPE_1__ d_name; struct inode* d_inode; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_5__ {int /*<<< orphan*/  ip_blkno; } ;

/* Variables and functions */
 TYPE_3__ CURRENT_TIME ; 
 int EMLINK ; 
 int ENOENT ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OI_LS_PARENT ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int FUNC16 (int /*<<< orphan*/ *,struct dentry*,struct inode*,int /*<<< orphan*/ ,struct buffer_head*,struct ocfs2_dir_lookup_result*) ; 
 int /*<<< orphan*/  FUNC17 (struct ocfs2_dinode*,int) ; 
 int FUNC18 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC20 (struct dentry*,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocfs2_dentry_ops ; 
 int /*<<< orphan*/  FUNC21 (struct ocfs2_dir_lookup_result*) ; 
 int FUNC22 (struct inode*,struct buffer_head**,int) ; 
 int FUNC23 (struct inode*,struct buffer_head**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct inode*,int) ; 
 int FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC26 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (struct ocfs2_super*) ; 
 int FUNC29 (struct ocfs2_super*,struct inode*,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_dir_lookup_result*) ; 
 scalar_t__ FUNC30 (struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  FUNC31 (struct ocfs2_dinode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC32 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC33(struct dentry *old_dentry,
		      struct inode *dir,
		      struct dentry *dentry)
{
	handle_t *handle;
	struct inode *inode = old_dentry->d_inode;
	int err;
	struct buffer_head *fe_bh = NULL;
	struct buffer_head *parent_fe_bh = NULL;
	struct ocfs2_dinode *fe = NULL;
	struct ocfs2_super *osb = FUNC3(dir->i_sb);
	struct ocfs2_dir_lookup_result lookup = { NULL, };

	FUNC13("(inode=%lu, old='%.*s' new='%.*s')\n", inode->i_ino,
		   old_dentry->d_name.len, old_dentry->d_name.name,
		   dentry->d_name.len, dentry->d_name.name);

	if (FUNC5(inode->i_mode))
		return -EPERM;

	err = FUNC23(dir, &parent_fe_bh, 1, OI_LS_PARENT);
	if (err < 0) {
		if (err != -ENOENT)
			FUNC14(err);
		return err;
	}

	if (!dir->i_nlink) {
		err = -ENOENT;
		goto out;
	}

	err = FUNC18(dir, dentry->d_name.name,
					dentry->d_name.len);
	if (err)
		goto out;

	err = FUNC29(osb, dir, parent_fe_bh,
					   dentry->d_name.name,
					   dentry->d_name.len, &lookup);
	if (err < 0) {
		FUNC14(err);
		goto out;
	}

	err = FUNC22(inode, &fe_bh, 1);
	if (err < 0) {
		if (err != -ENOENT)
			FUNC14(err);
		goto out;
	}

	fe = (struct ocfs2_dinode *) fe_bh->b_data;
	if (FUNC30(fe) >= FUNC28(osb)) {
		err = -EMLINK;
		goto out_unlock_inode;
	}

	handle = FUNC32(osb, FUNC27(osb->sb));
	if (FUNC1(handle)) {
		err = FUNC4(handle);
		handle = NULL;
		FUNC14(err);
		goto out_unlock_inode;
	}

	err = FUNC25(handle, FUNC0(inode), fe_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (err < 0) {
		FUNC14(err);
		goto out_commit;
	}

	FUNC12(inode);
	inode->i_ctime = CURRENT_TIME;
	FUNC31(fe, inode->i_nlink);
	fe->i_ctime = FUNC9(inode->i_ctime.tv_sec);
	fe->i_ctime_nsec = FUNC8(inode->i_ctime.tv_nsec);

	err = FUNC26(handle, fe_bh);
	if (err < 0) {
		FUNC17(fe, -1);
		FUNC11(inode);
		FUNC14(err);
		goto out_commit;
	}

	err = FUNC16(handle, dentry, inode,
			      FUNC2(inode)->ip_blkno,
			      parent_fe_bh, &lookup);
	if (err) {
		FUNC17(fe, -1);
		FUNC11(inode);
		FUNC14(err);
		goto out_commit;
	}

	err = FUNC20(dentry, inode, FUNC2(dir)->ip_blkno);
	if (err) {
		FUNC14(err);
		goto out_commit;
	}

	FUNC6(&inode->i_count);
	dentry->d_op = &ocfs2_dentry_ops;
	FUNC10(dentry, inode);

out_commit:
	FUNC19(osb, handle);
out_unlock_inode:
	FUNC24(inode, 1);

out:
	FUNC24(dir, 1);

	FUNC7(fe_bh);
	FUNC7(parent_fe_bh);

	FUNC21(&lookup);

	FUNC15(err);

	return err;
}