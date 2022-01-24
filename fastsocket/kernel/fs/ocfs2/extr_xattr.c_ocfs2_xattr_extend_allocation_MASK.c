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
typedef  scalar_t__ u32 ;
struct ocfs2_xattr_value_buf {int (* vb_access ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_1__* vb_xv; int /*<<< orphan*/  vb_bh; } ;
struct ocfs2_xattr_set_ctxt {int /*<<< orphan*/  meta_ac; int /*<<< orphan*/  data_ac; int /*<<< orphan*/ * handle; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  enum ocfs2_alloc_restarted { ____Placeholder_ocfs2_alloc_restarted } ocfs2_alloc_restarted ;
struct TYPE_2__ {int /*<<< orphan*/  xr_clusters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int RESTART_NONE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,scalar_t__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ,struct ocfs2_xattr_value_buf*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct inode *inode,
					 u32 clusters_to_add,
					 struct ocfs2_xattr_value_buf *vb,
					 struct ocfs2_xattr_set_ctxt *ctxt)
{
	int status = 0;
	handle_t *handle = ctxt->handle;
	enum ocfs2_alloc_restarted why;
	u32 prev_clusters, logical_start = FUNC2(vb->vb_xv->xr_clusters);
	struct ocfs2_extent_tree et;

	FUNC3(0, "(clusters_to_add for xattr= %u)\n", clusters_to_add);

	FUNC6(&et, FUNC1(inode), vb);

	status = vb->vb_access(handle, FUNC1(inode), vb->vb_bh,
			      OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC4(status);
		goto leave;
	}

	prev_clusters = FUNC2(vb->vb_xv->xr_clusters);
	status = FUNC5(handle,
					     &et,
					     &logical_start,
					     clusters_to_add,
					     0,
					     ctxt->data_ac,
					     ctxt->meta_ac,
					     &why);
	if (status < 0) {
		FUNC4(status);
		goto leave;
	}

	status = FUNC7(handle, vb->vb_bh);
	if (status < 0) {
		FUNC4(status);
		goto leave;
	}

	clusters_to_add -= FUNC2(vb->vb_xv->xr_clusters) - prev_clusters;

	/*
	 * We should have already allocated enough space before the transaction,
	 * so no need to restart.
	 */
	FUNC0(why != RESTART_NONE || clusters_to_add);

leave:

	return status;
}