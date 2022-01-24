#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_xattr_set_ctxt {struct ocfs2_alloc_context* data_ac; struct ocfs2_alloc_context* meta_ac; int /*<<< orphan*/ * handle; } ;
struct ocfs2_xattr_search {int /*<<< orphan*/  bucket; int /*<<< orphan*/  xattr_bh; scalar_t__ not_found; struct buffer_head* inode_bh; } ;
struct ocfs2_xattr_info {int name_index; char const* name; void const* value; size_t value_len; } ;
struct ocfs2_dinode {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {int /*<<< orphan*/  ip_xattr_sem; } ;
struct TYPE_3__ {scalar_t__ s_blocksize; } ;

/* Variables and functions */
 scalar_t__ ENODATA ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 scalar_t__ OCFS2_MIN_BLOCKSIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (struct inode*,struct ocfs2_dinode*,struct ocfs2_xattr_info*,struct ocfs2_xattr_search*,struct ocfs2_xattr_search*,struct ocfs2_xattr_set_ctxt*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct inode*,int,char const*,struct ocfs2_xattr_search*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int FUNC10 (struct inode*,int,char const*,struct ocfs2_xattr_search*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(handle_t *handle,
			   struct inode *inode,
			   struct buffer_head *di_bh,
			   int name_index,
			   const char *name,
			   const void *value,
			   size_t value_len,
			   int flags,
			   struct ocfs2_alloc_context *meta_ac,
			   struct ocfs2_alloc_context *data_ac)
{
	struct ocfs2_dinode *di;
	int ret;

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

	struct ocfs2_xattr_set_ctxt ctxt = {
		.handle = handle,
		.meta_ac = meta_ac,
		.data_ac = data_ac,
	};

	if (!FUNC6(FUNC1(inode->i_sb)))
		return -EOPNOTSUPP;

	/*
	 * In extreme situation, may need xattr bucket when
	 * block size is too small. And we have already reserved
	 * the credits for bucket in mknod.
	 */
	if (inode->i_sb->s_blocksize == OCFS2_MIN_BLOCKSIZE) {
		xbs.bucket = FUNC9(inode);
		if (!xbs.bucket) {
			FUNC5(-ENOMEM);
			return -ENOMEM;
		}
	}

	xis.inode_bh = xbs.inode_bh = di_bh;
	di = (struct ocfs2_dinode *)di_bh->b_data;

	FUNC4(&FUNC0(inode)->ip_xattr_sem);

	ret = FUNC10(inode, name_index, name, &xis);
	if (ret)
		goto cleanup;
	if (xis.not_found) {
		ret = FUNC7(inode, name_index, name, &xbs);
		if (ret)
			goto cleanup;
	}

	ret = FUNC2(inode, di, &xi, &xis, &xbs, &ctxt);

cleanup:
	FUNC11(&FUNC0(inode)->ip_xattr_sem);
	FUNC3(xbs.xattr_bh);
	FUNC8(xbs.bucket);

	return ret;
}