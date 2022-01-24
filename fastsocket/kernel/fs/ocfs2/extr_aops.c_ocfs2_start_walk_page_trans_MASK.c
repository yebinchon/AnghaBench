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
struct page {int dummy; } ;
struct ocfs2_super {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCFS2_INODE_UPDATE_CREDITS ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct inode*) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC7 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 

handle_t *FUNC8(struct inode *inode,
							 struct page *page,
							 unsigned from,
							 unsigned to)
{
	struct ocfs2_super *osb = FUNC2(inode->i_sb);
	handle_t *handle;
	int ret = 0;

	handle = FUNC7(osb, OCFS2_INODE_UPDATE_CREDITS);
	if (FUNC1(handle)) {
		ret = -ENOMEM;
		FUNC3(ret);
		goto out;
	}

	if (FUNC6(inode)) {
		ret = FUNC5(handle, inode);
		if (ret < 0)
			FUNC3(ret);
	}
out:
	if (ret) {
		if (!FUNC1(handle))
			FUNC4(osb, handle);
		handle = FUNC0(ret);
	}
	return handle;
}