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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int EROFS ; 
 int /*<<< orphan*/  OCFS2_EXT_REFCOUNTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct inode *inode,
				struct ocfs2_extent_tree *et,
				handle_t *handle, u32 cpos,
				u32 len, u32 phys,
				struct ocfs2_alloc_context *meta_ac,
				struct ocfs2_cached_dealloc_ctxt *dealloc)
{
	int ret;

	FUNC1(0, "Inode %lu refcount tree cpos %u, len %u, phys cluster %u\n",
	     inode->i_ino, cpos, len, phys);

	if (!FUNC5(FUNC0(inode->i_sb))) {
		FUNC4(inode->i_sb, "Inode %lu want to use refcount "
			    "tree, but the feature bit is not set in the "
			    "super block.", inode->i_ino);
		ret = -EROFS;
		goto out;
	}

	ret = FUNC3(handle, et, cpos,
				       len, phys, meta_ac, dealloc,
				       OCFS2_EXT_REFCOUNTED, 0);
	if (ret)
		FUNC2(ret);

out:
	return ret;
}