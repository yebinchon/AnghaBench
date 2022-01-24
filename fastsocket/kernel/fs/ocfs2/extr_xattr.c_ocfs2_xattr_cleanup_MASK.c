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
struct ocfs2_xattr_value_buf {int (* vb_access ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  vb_bh; } ;
struct ocfs2_xattr_search {scalar_t__ here; TYPE_1__* header; void* base; } ;
struct ocfs2_xattr_info {int /*<<< orphan*/  name; } ;
struct ocfs2_xattr_entry {int dummy; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/  xh_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 size_t OCFS2_XATTR_ROOT_SIZE ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct inode *inode,
			       handle_t *handle,
			       struct ocfs2_xattr_info *xi,
			       struct ocfs2_xattr_search *xs,
			       struct ocfs2_xattr_value_buf *vb,
			       size_t offs)
{
	int ret = 0;
	size_t name_len = FUNC6(xi->name);
	void *val = xs->base + offs;
	size_t size = FUNC1(name_len) + OCFS2_XATTR_ROOT_SIZE;

	ret = vb->vb_access(handle, FUNC0(inode), vb->vb_bh,
			    OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC4(ret);
		goto out;
	}
	/* Decrease xattr count */
	FUNC2(&xs->header->xh_count, -1);
	/* Remove the xattr entry and tree root which has already be set*/
	FUNC3((void *)xs->here, 0, sizeof(struct ocfs2_xattr_entry));
	FUNC3(val, 0, size);

	ret = FUNC5(handle, vb->vb_bh);
	if (ret < 0)
		FUNC4(ret);
out:
	return ret;
}