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
struct TYPE_2__ {scalar_t__ l_next_free_rec; int /*<<< orphan*/  l_count; scalar_t__ l_tree_depth; } ;
struct ocfs2_xattr_value_root {TYPE_1__ xr_list; scalar_t__ xr_last_eb_blk; scalar_t__ xr_clusters; } ;
struct ocfs2_xattr_value_buf {struct ocfs2_xattr_value_root* vb_xv; } ;
struct ocfs2_xattr_set_ctxt {int /*<<< orphan*/  handle; } ;
struct ocfs2_xattr_search {void* base; } ;
struct ocfs2_xattr_info {int /*<<< orphan*/  value_len; int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 size_t OCFS2_XATTR_ROOT_SIZE ; 
 size_t FUNC0 (size_t) ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ ,struct ocfs2_xattr_value_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ ,struct ocfs2_xattr_info*,struct ocfs2_xattr_search*,struct ocfs2_xattr_value_buf*,size_t) ; 
 int FUNC7 (struct inode*,struct ocfs2_xattr_value_buf*,int /*<<< orphan*/ ,struct ocfs2_xattr_set_ctxt*) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct inode *inode,
					 struct ocfs2_xattr_info *xi,
					 struct ocfs2_xattr_search *xs,
					 struct ocfs2_xattr_set_ctxt *ctxt,
					 struct ocfs2_xattr_value_buf *vb,
					 size_t offs)
{
	size_t name_len = FUNC8(xi->name);
	void *val = xs->base + offs;
	struct ocfs2_xattr_value_root *xv = NULL;
	size_t size = FUNC0(name_len) + OCFS2_XATTR_ROOT_SIZE;
	int ret = 0;

	FUNC4(val, 0, size);
	FUNC3(val, xi->name, name_len);
	xv = (struct ocfs2_xattr_value_root *)
		(val + FUNC0(name_len));
	xv->xr_clusters = 0;
	xv->xr_last_eb_blk = 0;
	xv->xr_list.l_tree_depth = 0;
	xv->xr_list.l_count = FUNC2(1);
	xv->xr_list.l_next_free_rec = 0;
	vb->vb_xv = xv;

	ret = FUNC7(inode, vb, xi->value_len, ctxt);
	if (ret < 0) {
		FUNC5(ret);
		return ret;
	}
	ret = FUNC6(inode, ctxt->handle, xi, xs, vb, offs);
	if (ret < 0) {
		FUNC5(ret);
		return ret;
	}
	ret = FUNC1(inode, ctxt->handle, vb,
					      xi->value, xi->value_len);
	if (ret < 0)
		FUNC5(ret);

	return ret;
}