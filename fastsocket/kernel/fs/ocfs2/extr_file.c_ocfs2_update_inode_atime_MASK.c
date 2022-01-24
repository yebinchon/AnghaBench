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
struct ocfs2_dinode {int /*<<< orphan*/  i_atime_nsec; int /*<<< orphan*/  i_atime; } ;
struct TYPE_2__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {int /*<<< orphan*/  i_sb; TYPE_1__ i_atime; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 TYPE_1__ CURRENT_TIME ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCFS2_INODE_UPDATE_CREDITS ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/ * FUNC12 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 

int FUNC13(struct inode *inode,
			     struct buffer_head *bh)
{
	int ret;
	struct ocfs2_super *osb = FUNC2(inode->i_sb);
	handle_t *handle;
	struct ocfs2_dinode *di = (struct ocfs2_dinode *) bh->b_data;

	FUNC6();

	handle = FUNC12(osb, OCFS2_INODE_UPDATE_CREDITS);
	if (FUNC1(handle)) {
		ret = FUNC3(handle);
		FUNC7(ret);
		goto out;
	}

	ret = FUNC10(handle, FUNC0(inode), bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC7(ret);
		goto out_commit;
	}

	/*
	 * Don't use ocfs2_mark_inode_dirty() here as we don't always
	 * have i_mutex to guard against concurrent changes to other
	 * inode fields.
	 */
	inode->i_atime = CURRENT_TIME;
	di->i_atime = FUNC5(inode->i_atime.tv_sec);
	di->i_atime_nsec = FUNC4(inode->i_atime.tv_nsec);

	ret = FUNC11(handle, bh);
	if (ret < 0)
		FUNC7(ret);

out_commit:
	FUNC9(FUNC2(inode->i_sb), handle);
out:
	FUNC8(ret);
	return ret;
}