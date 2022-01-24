#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ocfs2_super {int dummy; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_orphaned_slot; } ;
struct inode {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int EEXIST ; 
 struct ocfs2_super* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ORPHAN_DIR_SYSTEM_INODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct ocfs2_super*,int) ; 
 int FUNC9 (struct inode*,struct buffer_head*) ; 
 struct inode* FUNC10 (struct ocfs2_super*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int) ; 
 int FUNC13 (struct inode*,struct buffer_head*,struct inode*,struct buffer_head*) ; 
 int FUNC14 (struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct ocfs2_super*,int) ; 
 int FUNC16 (struct ocfs2_super*,struct inode*,struct buffer_head*) ; 
 int FUNC17 (struct inode*,struct buffer_head*) ; 

__attribute__((used)) static int FUNC18(struct inode *inode,
			    struct buffer_head *di_bh)
{
	int status, orphaned_slot;
	struct inode *orphan_dir_inode = NULL;
	struct buffer_head *orphan_dir_bh = NULL;
	struct ocfs2_super *osb = FUNC0(inode->i_sb);
	struct ocfs2_dinode *di;

	di = (struct ocfs2_dinode *) di_bh->b_data;
	orphaned_slot = FUNC4(di->i_orphaned_slot);

	status = FUNC8(osb, orphaned_slot);
	if (status)
		return status;

	orphan_dir_inode = FUNC10(osb,
						       ORPHAN_DIR_SYSTEM_INODE,
						       orphaned_slot);
	if (!orphan_dir_inode) {
		status = -EEXIST;
		FUNC5(status);
		goto bail;
	}

	/* Lock the orphan dir. The lock will be held for the entire
	 * delete_inode operation. We do this now to avoid races with
	 * recovery completion on other nodes. */
	FUNC6(&orphan_dir_inode->i_mutex);
	status = FUNC11(orphan_dir_inode, &orphan_dir_bh, 1);
	if (status < 0) {
		FUNC7(&orphan_dir_inode->i_mutex);

		FUNC5(status);
		goto bail;
	}

	/* we do this while holding the orphan dir lock because we
	 * don't want recovery being run from another node to try an
	 * inode delete underneath us -- this will result in two nodes
	 * truncating the same file! */
	status = FUNC16(osb, inode, di_bh);
	if (status < 0) {
		FUNC5(status);
		goto bail_unlock_dir;
	}

	/* Remove any dir index tree */
	if (FUNC1(inode->i_mode)) {
		status = FUNC9(inode, di_bh);
		if (status) {
			FUNC5(status);
			goto bail_unlock_dir;
		}
	}

	/*Free extended attribute resources associated with this inode.*/
	status = FUNC17(inode, di_bh);
	if (status < 0) {
		FUNC5(status);
		goto bail_unlock_dir;
	}

	status = FUNC14(inode, di_bh);
	if (status < 0) {
		FUNC5(status);
		goto bail_unlock_dir;
	}

	status = FUNC13(inode, di_bh, orphan_dir_inode,
				    orphan_dir_bh);
	if (status < 0)
		FUNC5(status);

bail_unlock_dir:
	FUNC12(orphan_dir_inode, 1);
	FUNC7(&orphan_dir_inode->i_mutex);
	FUNC2(orphan_dir_bh);
bail:
	FUNC3(orphan_dir_inode);
	FUNC15(osb, orphaned_slot);

	return status;
}