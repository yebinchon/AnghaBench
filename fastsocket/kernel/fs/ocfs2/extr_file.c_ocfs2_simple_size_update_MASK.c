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
typedef  int /*<<< orphan*/  u64 ;
struct ocfs2_super {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCFS2_INODE_UPDATE_CREDITS ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 

int FUNC7(struct inode *inode,
			     struct buffer_head *di_bh,
			     u64 new_i_size)
{
	int ret;
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	handle_t *handle = NULL;

	handle = FUNC6(osb, OCFS2_INODE_UPDATE_CREDITS);
	if (FUNC0(handle)) {
		ret = FUNC2(handle);
		FUNC3(ret);
		goto out;
	}

	ret = FUNC5(handle, inode, di_bh,
				   new_i_size);
	if (ret < 0)
		FUNC3(ret);

	FUNC4(osb, handle);
out:
	return ret;
}