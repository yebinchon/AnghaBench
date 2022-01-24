#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_super {TYPE_2__* sb; int /*<<< orphan*/  root_blkno; } ;
struct ocfs2_dir_lookup_result {int /*<<< orphan*/ * member_0; } ;
struct ocfs2_dinode {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_7__ {int /*<<< orphan*/  ip_blkno; } ;
struct TYPE_6__ {TYPE_1__* dq_op; } ;
struct TYPE_5__ {scalar_t__ (* alloc_inode ) (struct inode*,int) ;} ;

/* Variables and functions */
 int EDQUOT ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENOSPC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ NO_QUOTA ; 
 TYPE_4__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_ORPHAN_NAMELEN ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC13 (struct ocfs2_dir_lookup_result*) ; 
 struct inode* FUNC14 (struct inode*,int) ; 
 int FUNC15 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct ocfs2_super*,struct inode*,struct inode*,int /*<<< orphan*/ ,struct buffer_head**,struct buffer_head*,int /*<<< orphan*/ *,struct ocfs2_alloc_context*) ; 
 int FUNC19 (struct inode*) ; 
 int FUNC20 (struct ocfs2_super*,int /*<<< orphan*/ *,struct inode*,struct ocfs2_dinode*,char*,struct ocfs2_dir_lookup_result*,struct inode*) ; 
 int FUNC21 (struct ocfs2_super*,struct inode**,int /*<<< orphan*/ ,char*,struct ocfs2_dir_lookup_result*) ; 
 int FUNC22 (struct ocfs2_super*,struct ocfs2_alloc_context**) ; 
 int /*<<< orphan*/ * FUNC23 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (TYPE_2__*) ; 
 scalar_t__ FUNC25 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct inode*) ; 

int FUNC27(struct inode *dir,
				 int mode,
				 struct inode **new_inode)
{
	int status, did_quota_inode = 0;
	struct inode *inode = NULL;
	struct inode *orphan_dir = NULL;
	struct ocfs2_super *osb = FUNC2(dir->i_sb);
	struct ocfs2_dinode *di = NULL;
	handle_t *handle = NULL;
	char orphan_name[OCFS2_ORPHAN_NAMELEN + 1];
	struct buffer_head *parent_di_bh = NULL;
	struct buffer_head *new_di_bh = NULL;
	struct ocfs2_alloc_context *inode_ac = NULL;
	struct ocfs2_dir_lookup_result orphan_insert = { NULL, };

	status = FUNC15(dir, &parent_di_bh, 1);
	if (status < 0) {
		if (status != -ENOENT)
			FUNC8(status);
		return status;
	}

	/*
	 * We give the orphan dir the root blkno to fake an orphan name,
	 * and allocate enough space for our insertion.
	 */
	status = FUNC21(osb, &orphan_dir,
					  osb->root_blkno,
					  orphan_name, &orphan_insert);
	if (status < 0) {
		FUNC8(status);
		goto leave;
	}

	/* reserve an inode spot */
	status = FUNC22(osb, &inode_ac);
	if (status < 0) {
		if (status != -ENOSPC)
			FUNC8(status);
		goto leave;
	}

	inode = FUNC14(dir, mode);
	if (!inode) {
		status = -ENOMEM;
		FUNC8(status);
		goto leave;
	}

	handle = FUNC23(osb, FUNC17(osb->sb, 0, 0));
	if (FUNC0(handle)) {
		status = FUNC3(handle);
		handle = NULL;
		FUNC8(status);
		goto leave;
	}

	/* We don't use standard VFS wrapper because we don't want vfs_dq_init
	 * to be called. */
	if (FUNC24(osb->sb) &&
	    osb->sb->dq_op->alloc_inode(inode, 1) == NO_QUOTA) {
		status = -EDQUOT;
		goto leave;
	}
	did_quota_inode = 1;

	/* do the real work now. */
	status = FUNC18(osb, dir, inode,
				    0, &new_di_bh, parent_di_bh, handle,
				    inode_ac);
	if (status < 0) {
		FUNC8(status);
		goto leave;
	}

	status = FUNC10(FUNC1(inode)->ip_blkno, orphan_name);
	if (status < 0) {
		FUNC8(status);
		goto leave;
	}

	di = (struct ocfs2_dinode *)new_di_bh->b_data;
	status = FUNC20(osb, handle, inode, di, orphan_name,
				  &orphan_insert, orphan_dir);
	if (status < 0) {
		FUNC8(status);
		goto leave;
	}

	/* get open lock so that only nodes can't remove it from orphan dir. */
	status = FUNC19(inode);
	if (status < 0)
		FUNC8(status);

leave:
	if (status < 0 && did_quota_inode)
		FUNC26(inode);
	if (handle)
		FUNC11(osb, handle);

	if (orphan_dir) {
		/* This was locked for us in ocfs2_prepare_orphan_dir() */
		FUNC16(orphan_dir, 1);
		FUNC9(&orphan_dir->i_mutex);
		FUNC6(orphan_dir);
	}

	if (status == -ENOSPC)
		FUNC7(0, "Disk is full\n");

	if ((status < 0) && inode) {
		FUNC5(inode);
		FUNC6(inode);
	}

	if (inode_ac)
		FUNC12(inode_ac);

	FUNC4(new_di_bh);

	if (!status)
		*new_inode = inode;

	FUNC13(&orphan_insert);

	FUNC16(dir, 1);
	FUNC4(parent_di_bh);
	return status;
}