#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_super {int dummy; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_dtime; int /*<<< orphan*/  i_suballoc_slot; } ;
struct inode {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 TYPE_1__ CURRENT_TIME ; 
 int EEXIST ; 
 int /*<<< orphan*/  INODE_ALLOC_SYSTEM_INODE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ OCFS2_DELETE_INODE_CREDITS ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int OCFS2_ORPHANED_FL ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int OCFS2_VALID_FL ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,struct ocfs2_dinode*) ; 
 struct inode* FUNC14 (struct ocfs2_super*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC19 (struct ocfs2_super*,int /*<<< orphan*/ *,struct inode*,struct inode*,struct buffer_head*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/ * FUNC22 (struct ocfs2_super*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*) ; 

__attribute__((used)) static int FUNC24(struct inode *inode,
			      struct buffer_head *di_bh,
			      struct inode *orphan_dir_inode,
			      struct buffer_head *orphan_dir_bh)
{
	int status;
	struct inode *inode_alloc_inode = NULL;
	struct buffer_head *inode_alloc_bh = NULL;
	handle_t *handle;
	struct ocfs2_super *osb = FUNC2(inode->i_sb);
	struct ocfs2_dinode *di = (struct ocfs2_dinode *) di_bh->b_data;

	inode_alloc_inode =
		FUNC14(osb, INODE_ALLOC_SYSTEM_INODE,
					    FUNC8(di->i_suballoc_slot));
	if (!inode_alloc_inode) {
		status = -EEXIST;
		FUNC9(status);
		goto bail;
	}

	FUNC10(&inode_alloc_inode->i_mutex);
	status = FUNC15(inode_alloc_inode, &inode_alloc_bh, 1);
	if (status < 0) {
		FUNC11(&inode_alloc_inode->i_mutex);

		FUNC9(status);
		goto bail;
	}

	handle = FUNC22(osb, OCFS2_DELETE_INODE_CREDITS +
				   FUNC20(inode->i_sb));
	if (FUNC1(handle)) {
		status = FUNC3(handle);
		FUNC9(status);
		goto bail_unlock;
	}

	status = FUNC19(osb, handle, orphan_dir_inode, inode,
				  orphan_dir_bh);
	if (status < 0) {
		FUNC9(status);
		goto bail_commit;
	}

	/* set the inodes dtime */
	status = FUNC17(handle, FUNC0(inode), di_bh,
					 OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC9(status);
		goto bail_commit;
	}

	di->i_dtime = FUNC6(CURRENT_TIME.tv_sec);
	di->i_flags &= FUNC5(~(OCFS2_VALID_FL | OCFS2_ORPHANED_FL));

	status = FUNC18(handle, di_bh);
	if (status < 0) {
		FUNC9(status);
		goto bail_commit;
	}

	FUNC21(FUNC0(inode), di_bh);
	FUNC23(inode);

	status = FUNC13(handle, inode_alloc_inode,
				   inode_alloc_bh, di);
	if (status < 0)
		FUNC9(status);

bail_commit:
	FUNC12(osb, handle);
bail_unlock:
	FUNC16(inode_alloc_inode, 1);
	FUNC11(&inode_alloc_inode->i_mutex);
	FUNC4(inode_alloc_bh);
bail:
	FUNC7(inode_alloc_inode);

	return status;
}