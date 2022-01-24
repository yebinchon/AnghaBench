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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int EROFS ; 
 int /*<<< orphan*/  OCFS2_EXT_UNWRITTEN ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct inode *inode,
			      struct ocfs2_extent_tree *et,
			      handle_t *handle, u32 cpos, u32 len, u32 phys,
			      struct ocfs2_alloc_context *meta_ac,
			      struct ocfs2_cached_dealloc_ctxt *dealloc)
{
	int ret;

	FUNC2(0, "Inode %lu cpos %u, len %u, phys clusters %u\n",
	     inode->i_ino, cpos, len, phys);

	if (!FUNC7(FUNC1(inode->i_sb))) {
		FUNC5(inode->i_sb, "Inode %llu has unwritten extents "
			    "that are being written to, but the feature bit "
			    "is not set in the super block.",
			    (unsigned long long)FUNC0(inode)->ip_blkno);
		ret = -EROFS;
		goto out;
	}

	/*
	 * XXX: This should be fixed up so that we just re-insert the
	 * next extent records.
	 */
	FUNC6(et, 0);

	ret = FUNC4(handle, et, cpos,
				       len, phys, meta_ac, dealloc,
				       0, OCFS2_EXT_UNWRITTEN);
	if (ret)
		FUNC3(ret);

out:
	return ret;
}