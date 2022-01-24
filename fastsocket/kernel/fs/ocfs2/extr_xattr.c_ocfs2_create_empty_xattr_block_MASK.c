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
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_blocknr; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCFS2_XATTR_BLOCK_CREATE_CREDITS ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,struct ocfs2_alloc_context*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_alloc_context*) ; 
 int FUNC8 (struct ocfs2_super*,int,struct ocfs2_alloc_context**) ; 
 int /*<<< orphan*/ * FUNC9 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct inode *inode,
					  struct buffer_head *fe_bh,
					  struct buffer_head **ret_bh,
					  int indexed)
{
	int ret;
	handle_t *handle;
	struct ocfs2_alloc_context *meta_ac;
	struct ocfs2_super *osb = FUNC1(inode->i_sb);

	ret = FUNC8(osb, 1, &meta_ac);
	if (ret < 0) {
		FUNC4(ret);
		return ret;
	}

	handle = FUNC9(osb, OCFS2_XATTR_BLOCK_CREATE_CREDITS);
	if (FUNC0(handle)) {
		ret = FUNC2(handle);
		FUNC4(ret);
		goto out;
	}

	FUNC3(0, "create new xattr block for inode %llu, index = %d\n",
	     (unsigned long long)fe_bh->b_blocknr, indexed);
	ret = FUNC6(handle, inode, fe_bh,
				       meta_ac, ret_bh, indexed);
	if (ret)
		FUNC4(ret);

	FUNC5(osb, handle);
out:
	FUNC7(meta_ac);
	return ret;
}