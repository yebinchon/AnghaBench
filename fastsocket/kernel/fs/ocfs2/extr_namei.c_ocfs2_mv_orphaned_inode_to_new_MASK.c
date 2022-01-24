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
struct ocfs2_super {int /*<<< orphan*/  sb; int /*<<< orphan*/  slot_num; } ;
struct ocfs2_dir_lookup_result {int /*<<< orphan*/ * member_0; } ;
struct ocfs2_dinode {scalar_t__ i_orphaned_slot; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_links_count; } ;
struct inode {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_sb; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {int /*<<< orphan*/ * d_op; TYPE_1__ d_name; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {int /*<<< orphan*/  ip_blkno; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  OCFS2_ORPHANED_FL ; 
 struct ocfs2_super* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ORPHAN_DIR_SYSTEM_INODE ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct inode*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct dentry*,struct inode*,int /*<<< orphan*/ ,struct buffer_head*,struct ocfs2_dir_lookup_result*) ; 
 int FUNC16 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC18 (struct dentry*,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocfs2_dentry_ops ; 
 int /*<<< orphan*/  FUNC19 (struct ocfs2_dir_lookup_result*) ; 
 struct inode* FUNC20 (struct ocfs2_super*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*,int) ; 
 int FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC25 (struct ocfs2_super*,int /*<<< orphan*/ *,struct inode*,struct inode*,struct buffer_head*) ; 
 int FUNC26 (struct ocfs2_super*,struct inode*,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_dir_lookup_result*) ; 
 int FUNC27 (struct inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC29 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 

int FUNC30(struct inode *dir,
				   struct inode *inode,
				   struct dentry *dentry)
{
	int status = 0;
	struct buffer_head *parent_di_bh = NULL;
	handle_t *handle = NULL;
	struct ocfs2_super *osb = FUNC3(dir->i_sb);
	struct ocfs2_dinode *dir_di, *di;
	struct inode *orphan_dir_inode = NULL;
	struct buffer_head *orphan_dir_bh = NULL;
	struct buffer_head *di_bh = NULL;
	struct ocfs2_dir_lookup_result lookup = { NULL, };

	FUNC10("(0x%p, 0x%p, %.*s')\n", dir, dentry,
		   dentry->d_name.len, dentry->d_name.name);

	status = FUNC21(dir, &parent_di_bh, 1);
	if (status < 0) {
		if (status != -ENOENT)
			FUNC11(status);
		return status;
	}

	dir_di = (struct ocfs2_dinode *) parent_di_bh->b_data;
	if (!dir_di->i_links_count) {
		/* can't make a file in a deleted directory. */
		status = -ENOENT;
		goto leave;
	}

	status = FUNC16(dir, dentry->d_name.name,
					   dentry->d_name.len);
	if (status)
		goto leave;

	/* get a spot inside the dir. */
	status = FUNC26(osb, dir, parent_di_bh,
					      dentry->d_name.name,
					      dentry->d_name.len, &lookup);
	if (status < 0) {
		FUNC11(status);
		goto leave;
	}

	orphan_dir_inode = FUNC20(osb,
						       ORPHAN_DIR_SYSTEM_INODE,
						       osb->slot_num);
	if (!orphan_dir_inode) {
		status = -EEXIST;
		FUNC11(status);
		goto leave;
	}

	FUNC13(&orphan_dir_inode->i_mutex);

	status = FUNC21(orphan_dir_inode, &orphan_dir_bh, 1);
	if (status < 0) {
		FUNC11(status);
		FUNC14(&orphan_dir_inode->i_mutex);
		FUNC8(orphan_dir_inode);
		goto leave;
	}

	status = FUNC27(inode, &di_bh);
	if (status < 0) {
		FUNC11(status);
		goto orphan_unlock;
	}

	handle = FUNC29(osb, FUNC28(osb->sb));
	if (FUNC1(handle)) {
		status = FUNC4(handle);
		handle = NULL;
		FUNC11(status);
		goto orphan_unlock;
	}

	status = FUNC23(handle, FUNC0(inode),
					 di_bh, OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC11(status);
		goto out_commit;
	}

	status = FUNC25(osb, handle, orphan_dir_inode, inode,
				  orphan_dir_bh);
	if (status < 0) {
		FUNC11(status);
		goto out_commit;
	}

	di = (struct ocfs2_dinode *)di_bh->b_data;
	FUNC9(&di->i_flags, -OCFS2_ORPHANED_FL);
	di->i_orphaned_slot = 0;
	FUNC24(handle, di_bh);

	status = FUNC15(handle, dentry, inode,
				 FUNC2(inode)->ip_blkno, parent_di_bh,
				 &lookup);
	if (status < 0) {
		FUNC11(status);
		goto out_commit;
	}

	status = FUNC18(dentry, inode,
					  FUNC2(dir)->ip_blkno);
	if (status) {
		FUNC11(status);
		goto out_commit;
	}

	FUNC7(inode);
	dentry->d_op = &ocfs2_dentry_ops;
	FUNC6(dentry, inode);
	status = 0;
out_commit:
	FUNC17(osb, handle);
orphan_unlock:
	FUNC22(orphan_dir_inode, 1);
	FUNC14(&orphan_dir_inode->i_mutex);
	FUNC8(orphan_dir_inode);
leave:

	FUNC22(dir, 1);

	FUNC5(di_bh);
	FUNC5(parent_di_bh);
	FUNC5(orphan_dir_bh);

	FUNC19(&lookup);

	FUNC12(status);

	return status;
}