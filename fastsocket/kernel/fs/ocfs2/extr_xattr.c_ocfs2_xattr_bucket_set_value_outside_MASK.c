#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_xattr_value_root {int dummy; } ;
struct ocfs2_xattr_value_buf {int /*<<< orphan*/  vb_bh; struct ocfs2_xattr_value_root* vb_xv; int /*<<< orphan*/  vb_access; } ;
struct ocfs2_xattr_search {TYPE_1__* bucket; int /*<<< orphan*/  base; struct ocfs2_xattr_entry* here; } ;
struct ocfs2_xattr_header {int xh_entries; } ;
struct ocfs2_xattr_entry {int /*<<< orphan*/  xe_name_len; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_3__ {int /*<<< orphan*/ * bu_bhs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ *,struct ocfs2_xattr_value_buf*,char*,int) ; 
 void* FUNC3 (TYPE_1__*,int) ; 
 struct ocfs2_xattr_header* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  ocfs2_journal_access ; 
 int FUNC6 (int /*<<< orphan*/ ,struct ocfs2_xattr_header*,struct ocfs2_xattr_entry*,int*,int*) ; 
 scalar_t__ FUNC7 (struct ocfs2_xattr_entry*) ; 

__attribute__((used)) static int FUNC8(struct inode *inode,
						handle_t *handle,
						struct ocfs2_xattr_search *xs,
						char *val,
						int value_len)
{
	int ret, offset, block_off;
	struct ocfs2_xattr_value_root *xv;
	struct ocfs2_xattr_entry *xe = xs->here;
	struct ocfs2_xattr_header *xh = FUNC4(xs->bucket);
	void *base;
	struct ocfs2_xattr_value_buf vb = {
		.vb_access = ocfs2_journal_access,
	};

	FUNC0(!xs->base || !xe || FUNC7(xe));

	ret = FUNC6(inode->i_sb, xh,
						xe - xh->xh_entries,
						&block_off,
						&offset);
	if (ret) {
		FUNC5(ret);
		goto out;
	}

	base = FUNC3(xs->bucket, block_off);
	xv = (struct ocfs2_xattr_value_root *)(base + offset +
		 FUNC1(xe->xe_name_len));

	vb.vb_xv = xv;
	vb.vb_bh = xs->bucket->bu_bhs[block_off];
	ret = FUNC2(inode, handle,
					      &vb, val, value_len);
	if (ret)
		FUNC5(ret);
out:
	return ret;
}