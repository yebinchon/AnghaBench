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
struct ocfs2_dinode {int /*<<< orphan*/  i_ctime_nsec; int /*<<< orphan*/  i_ctime; } ;
struct TYPE_2__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {int /*<<< orphan*/  i_sb; TYPE_1__ i_ctime; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 TYPE_1__ CURRENT_TIME ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCFS2_INODE_UPDATE_CREDITS ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct inode *inode,
			      struct buffer_head *di_bh)
{
	int ret;
	handle_t *handle;
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;

	handle = FUNC10(FUNC2(inode->i_sb),
				   OCFS2_INODE_UPDATE_CREDITS);
	if (FUNC1(handle)) {
		ret = FUNC3(handle);
		FUNC6(ret);
		goto out;
	}

	ret = FUNC8(handle, FUNC0(inode), di_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC6(ret);
		goto out_commit;
	}

	inode->i_ctime = CURRENT_TIME;
	di->i_ctime = FUNC5(inode->i_ctime.tv_sec);
	di->i_ctime_nsec = FUNC4(inode->i_ctime.tv_nsec);

	FUNC9(handle, di_bh);

out_commit:
	FUNC7(FUNC2(inode->i_sb), handle);
out:
	return ret;
}