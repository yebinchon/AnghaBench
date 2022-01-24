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
struct ocfs2_truncate_log {int /*<<< orphan*/  tl_used; } ;
struct ocfs2_super {struct buffer_head* osb_tl_bh; struct inode* osb_tl_inode; } ;
struct TYPE_3__ {struct ocfs2_truncate_log i_dealloc; } ;
struct ocfs2_dinode {TYPE_1__ id2; } ;
struct inode {int /*<<< orphan*/  i_mutex; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  GLOBAL_BITMAP_SYSTEM_INODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 TYPE_2__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_INVALID_SLOT ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  OCFS2_TRUNCATE_LOG_UPDATE ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 struct inode* FUNC16 (struct ocfs2_super*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,int) ; 
 int FUNC19 (struct ocfs2_super*,int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/ * FUNC20 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 

int FUNC21(struct ocfs2_super *osb)
{
	int status;
	unsigned int num_to_flush;
	handle_t *handle;
	struct inode *tl_inode = osb->osb_tl_inode;
	struct inode *data_alloc_inode = NULL;
	struct buffer_head *tl_bh = osb->osb_tl_bh;
	struct buffer_head *data_alloc_bh = NULL;
	struct ocfs2_dinode *di;
	struct ocfs2_truncate_log *tl;

	FUNC9();

	FUNC0(FUNC13(&tl_inode->i_mutex));

	di = (struct ocfs2_dinode *) tl_bh->b_data;

	/* tl_bh is loaded from ocfs2_truncate_log_init().  It's validated
	 * by the underlying call to ocfs2_read_inode_block(), so any
	 * corruption is a code bug */
	FUNC0(!FUNC3(di));

	tl = &di->id2.i_dealloc;
	num_to_flush = FUNC7(tl->tl_used);
	FUNC8(0, "Flush %u records from truncate log #%llu\n",
	     num_to_flush, (unsigned long long)FUNC2(tl_inode)->ip_blkno);
	if (!num_to_flush) {
		status = 0;
		goto out;
	}

	data_alloc_inode = FUNC16(osb,
						       GLOBAL_BITMAP_SYSTEM_INODE,
						       OCFS2_INVALID_SLOT);
	if (!data_alloc_inode) {
		status = -EINVAL;
		FUNC8(ML_ERROR, "Could not get bitmap inode!\n");
		goto out;
	}

	FUNC12(&data_alloc_inode->i_mutex);

	status = FUNC17(data_alloc_inode, &data_alloc_bh, 1);
	if (status < 0) {
		FUNC10(status);
		goto out_mutex;
	}

	handle = FUNC20(osb, OCFS2_TRUNCATE_LOG_UPDATE);
	if (FUNC1(handle)) {
		status = FUNC4(handle);
		FUNC10(status);
		goto out_unlock;
	}

	status = FUNC19(osb, handle, data_alloc_inode,
					       data_alloc_bh);
	if (status < 0)
		FUNC10(status);

	FUNC15(osb, handle);

out_unlock:
	FUNC5(data_alloc_bh);
	FUNC18(data_alloc_inode, 1);

out_mutex:
	FUNC14(&data_alloc_inode->i_mutex);
	FUNC6(data_alloc_inode);

out:
	FUNC11(status);
	return status;
}