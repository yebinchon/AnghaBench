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
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  OCFS2_QUOTA_BLOCK_UPDATE_CREDITS ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC11(struct inode *inode, struct buffer_head *bh,
		void (*modify)(struct buffer_head *, void *), void *private)
{
	struct super_block *sb = inode->i_sb;
	handle_t *handle;
	int status;

	handle = FUNC9(FUNC2(sb),
				   OCFS2_QUOTA_BLOCK_UPDATE_CREDITS);
	if (FUNC1(handle)) {
		status = FUNC3(handle);
		FUNC5(status);
		return status;
	}
	status = FUNC7(handle, FUNC0(inode), bh,
					 OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC5(status);
		FUNC6(FUNC2(sb), handle);
		return status;
	}
	FUNC4(bh);
	modify(bh, private);
	FUNC10(bh);
	status = FUNC8(handle, bh);
	if (status < 0) {
		FUNC5(status);
		FUNC6(FUNC2(sb), handle);
		return status;
	}
	status = FUNC6(FUNC2(sb), handle);
	if (status < 0) {
		FUNC5(status);
		return status;
	}
	return 0;
}