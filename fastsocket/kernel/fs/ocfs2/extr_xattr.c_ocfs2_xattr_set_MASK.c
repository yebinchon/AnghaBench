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
struct ocfs2_xattr_set_ctxt {int /*<<< orphan*/  dealloc; scalar_t__ meta_ac; scalar_t__ data_ac; int /*<<< orphan*/  handle; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct ocfs2_xattr_search {int not_found; int /*<<< orphan*/  bucket; struct buffer_head* xattr_bh; struct buffer_head* inode_bh; } ;
struct ocfs2_xattr_info {int name_index; char const* name; void const* value; size_t value_len; } ;
struct ocfs2_super {struct inode* osb_tl_inode; } ;
struct ocfs2_refcount_tree {int dummy; } ;
struct ocfs2_dinode {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {int ip_dyn_features; int /*<<< orphan*/  ip_xattr_sem; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENODATA ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int OCFS2_HAS_REFCOUNT_FL ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 scalar_t__ OCFS2_INODE_UPDATE_CREDITS ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int XATTR_CREATE ; 
 int XATTR_REPLACE ; 
 int FUNC4 (struct ocfs2_super*) ; 
 int FUNC5 (struct inode*,struct ocfs2_dinode*,struct ocfs2_xattr_info*,struct ocfs2_xattr_search*,struct ocfs2_xattr_search*,struct ocfs2_xattr_set_ctxt*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int FUNC14 (struct inode*,struct ocfs2_dinode*,struct ocfs2_xattr_info*,struct ocfs2_xattr_search*,struct ocfs2_xattr_search*,struct ocfs2_xattr_set_ctxt*,int,int*) ; 
 int FUNC15 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int) ; 
 int FUNC17 (struct inode*,struct ocfs2_dinode*,struct ocfs2_xattr_info*,struct ocfs2_xattr_search*,struct ocfs2_xattr_search*,struct ocfs2_refcount_tree**,int*,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct ocfs2_super*) ; 
 scalar_t__ FUNC22 (struct ocfs2_super*) ; 
 int FUNC23 (struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC24 (struct ocfs2_super*,struct ocfs2_refcount_tree*,int) ; 
 int FUNC25 (struct inode*,int,char const*,struct ocfs2_xattr_search*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct inode*) ; 
 int FUNC28 (struct inode*,int,char const*,struct ocfs2_xattr_search*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 

int FUNC30(struct inode *inode,
		    int name_index,
		    const char *name,
		    const void *value,
		    size_t value_len,
		    int flags)
{
	struct buffer_head *di_bh = NULL;
	struct ocfs2_dinode *di;
	int ret, credits, ref_meta = 0, ref_credits = 0;
	struct ocfs2_super *osb = FUNC2(inode->i_sb);
	struct inode *tl_inode = osb->osb_tl_inode;
	struct ocfs2_xattr_set_ctxt ctxt = { NULL, NULL, };
	struct ocfs2_refcount_tree *ref_tree = NULL;

	struct ocfs2_xattr_info xi = {
		.name_index = name_index,
		.name = name,
		.value = value,
		.value_len = value_len,
	};

	struct ocfs2_xattr_search xis = {
		.not_found = -ENODATA,
	};

	struct ocfs2_xattr_search xbs = {
		.not_found = -ENODATA,
	};

	if (!FUNC21(FUNC2(inode->i_sb)))
		return -EOPNOTSUPP;

	/*
	 * Only xbs will be used on indexed trees.  xis doesn't need a
	 * bucket.
	 */
	xbs.bucket = FUNC27(inode);
	if (!xbs.bucket) {
		FUNC8(-ENOMEM);
		return -ENOMEM;
	}

	ret = FUNC15(inode, &di_bh, 1);
	if (ret < 0) {
		FUNC8(ret);
		goto cleanup_nolock;
	}
	xis.inode_bh = xbs.inode_bh = di_bh;
	di = (struct ocfs2_dinode *)di_bh->b_data;

	FUNC7(&FUNC1(inode)->ip_xattr_sem);
	/*
	 * Scan inode and external block to find the same name
	 * extended attribute and collect search infomation.
	 */
	ret = FUNC28(inode, name_index, name, &xis);
	if (ret)
		goto cleanup;
	if (xis.not_found) {
		ret = FUNC25(inode, name_index, name, &xbs);
		if (ret)
			goto cleanup;
	}

	if (xis.not_found && xbs.not_found) {
		ret = -ENODATA;
		if (flags & XATTR_REPLACE)
			goto cleanup;
		ret = 0;
		if (!value)
			goto cleanup;
	} else {
		ret = -EEXIST;
		if (flags & XATTR_CREATE)
			goto cleanup;
	}

	/* Check whether the value is refcounted and do some prepartion. */
	if (FUNC1(inode)->ip_dyn_features & OCFS2_HAS_REFCOUNT_FL &&
	    (!xis.not_found || !xbs.not_found)) {
		ret = FUNC17(inode, di, &xi,
						   &xis, &xbs, &ref_tree,
						   &ref_meta, &ref_credits);
		if (ret) {
			FUNC8(ret);
			goto cleanup;
		}
	}

	FUNC9(&tl_inode->i_mutex);

	if (FUNC22(osb)) {
		ret = FUNC4(osb);
		if (ret < 0) {
			FUNC10(&tl_inode->i_mutex);
			FUNC8(ret);
			goto cleanup;
		}
	}
	FUNC10(&tl_inode->i_mutex);

	ret = FUNC14(inode, di, &xi, &xis,
					&xbs, &ctxt, ref_meta, &credits);
	if (ret) {
		FUNC8(ret);
		goto cleanup;
	}

	/* we need to update inode's ctime field, so add credit for it. */
	credits += OCFS2_INODE_UPDATE_CREDITS;
	ctxt.handle = FUNC20(osb, credits + ref_credits);
	if (FUNC0(ctxt.handle)) {
		ret = FUNC3(ctxt.handle);
		FUNC8(ret);
		goto cleanup;
	}

	ret = FUNC5(inode, di, &xi, &xis, &xbs, &ctxt);

	FUNC11(osb, ctxt.handle);

	if (ctxt.data_ac)
		FUNC13(ctxt.data_ac);
	if (ctxt.meta_ac)
		FUNC13(ctxt.meta_ac);
	if (FUNC12(&ctxt.dealloc))
		FUNC19(osb, 1);
	FUNC18(osb, &ctxt.dealloc);

cleanup:
	if (ref_tree)
		FUNC24(osb, ref_tree, 1);
	FUNC29(&FUNC1(inode)->ip_xattr_sem);
	if (!value && !ret) {
		ret = FUNC23(inode, di_bh);
		if (ret)
			FUNC8(ret);
	}
	FUNC16(inode, 1);
cleanup_nolock:
	FUNC6(di_bh);
	FUNC6(xbs.xattr_bh);
	FUNC26(xbs.bucket);

	return ret;
}