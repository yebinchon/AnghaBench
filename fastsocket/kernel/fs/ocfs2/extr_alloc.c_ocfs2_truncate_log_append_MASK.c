#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct ocfs2_truncate_log {TYPE_2__* tl_recs; int /*<<< orphan*/  tl_used; int /*<<< orphan*/  tl_count; } ;
struct ocfs2_super {int /*<<< orphan*/  sb; struct buffer_head* osb_tl_bh; struct inode* osb_tl_inode; } ;
struct TYPE_4__ {struct ocfs2_truncate_log i_dealloc; } ;
struct ocfs2_dinode {TYPE_1__ id2; } ;
struct inode {int /*<<< orphan*/  i_mutex; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_6__ {scalar_t__ ip_blkno; } ;
struct TYPE_5__ {void* t_clusters; void* t_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 TYPE_3__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* FUNC5 (unsigned int) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,unsigned long long,unsigned int,void*) ; 
 int /*<<< orphan*/  FUNC10 (char*,unsigned long long,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 scalar_t__ FUNC17 (struct ocfs2_truncate_log*,unsigned int) ; 
 unsigned int FUNC18 (int /*<<< orphan*/ ) ; 

int FUNC19(struct ocfs2_super *osb,
			      handle_t *handle,
			      u64 start_blk,
			      unsigned int num_clusters)
{
	int status, index;
	unsigned int start_cluster, tl_count;
	struct inode *tl_inode = osb->osb_tl_inode;
	struct buffer_head *tl_bh = osb->osb_tl_bh;
	struct ocfs2_dinode *di;
	struct ocfs2_truncate_log *tl;

	FUNC10("start_blk = %llu, num_clusters = %u\n",
		   (unsigned long long)start_blk, num_clusters);

	FUNC0(FUNC13(&tl_inode->i_mutex));

	start_cluster = FUNC14(osb->sb, start_blk);

	di = (struct ocfs2_dinode *) tl_bh->b_data;

	/* tl_bh is loaded from ocfs2_truncate_log_init().  It's validated
	 * by the underlying call to ocfs2_read_inode_block(), so any
	 * corruption is a code bug */
	FUNC0(!FUNC3(di));

	tl = &di->id2.i_dealloc;
	tl_count = FUNC6(tl->tl_count);
	FUNC9(tl_count > FUNC18(osb->sb) ||
			tl_count == 0,
			"Truncate record count on #%llu invalid "
			"wanted %u, actual %u\n",
			(unsigned long long)FUNC2(tl_inode)->ip_blkno,
			FUNC18(osb->sb),
			FUNC6(tl->tl_count));

	/* Caller should have known to flush before calling us. */
	index = FUNC6(tl->tl_used);
	if (index >= tl_count) {
		status = -ENOSPC;
		FUNC11(status);
		goto bail;
	}

	status = FUNC15(handle, FUNC1(tl_inode), tl_bh,
					 OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC11(status);
		goto bail;
	}

	FUNC8(0, "Log truncate of %u clusters starting at cluster %u to "
	     "%llu (index = %d)\n", num_clusters, start_cluster,
	     (unsigned long long)FUNC2(tl_inode)->ip_blkno, index);

	if (FUNC17(tl, start_cluster)) {
		/*
		 * Move index back to the record we are coalescing with.
		 * ocfs2_truncate_log_can_coalesce() guarantees nonzero
		 */
		index--;

		num_clusters += FUNC7(tl->tl_recs[index].t_clusters);
		FUNC8(0, "Coalesce with index %u (start = %u, clusters = %u)\n",
		     index, FUNC7(tl->tl_recs[index].t_start),
		     num_clusters);
	} else {
		tl->tl_recs[index].t_start = FUNC5(start_cluster);
		tl->tl_used = FUNC4(index + 1);
	}
	tl->tl_recs[index].t_clusters = FUNC5(num_clusters);

	status = FUNC16(handle, tl_bh);
	if (status < 0) {
		FUNC11(status);
		goto bail;
	}

bail:
	FUNC12(status);
	return status;
}