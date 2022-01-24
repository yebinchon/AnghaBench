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
typedef  scalar_t__ u64 ;
struct ocfs2_truncate_rec {int /*<<< orphan*/  t_start; int /*<<< orphan*/  t_clusters; } ;
struct ocfs2_truncate_log {struct ocfs2_truncate_rec* tl_recs; int /*<<< orphan*/  tl_used; } ;
struct ocfs2_super {struct buffer_head* osb_tl_bh; struct inode* osb_tl_inode; } ;
struct TYPE_2__ {struct ocfs2_truncate_log i_dealloc; } ;
struct ocfs2_dinode {TYPE_1__ id2; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  OCFS2_TRUNCATE_LOG_FLUSH_ONE_REC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,scalar_t__,unsigned int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct buffer_head*) ; 

__attribute__((used)) static int FUNC13(struct ocfs2_super *osb,
					 handle_t *handle,
					 struct inode *data_alloc_inode,
					 struct buffer_head *data_alloc_bh)
{
	int status = 0;
	int i;
	unsigned int num_clusters;
	u64 start_blk;
	struct ocfs2_truncate_rec rec;
	struct ocfs2_dinode *di;
	struct ocfs2_truncate_log *tl;
	struct inode *tl_inode = osb->osb_tl_inode;
	struct buffer_head *tl_bh = osb->osb_tl_bh;

	FUNC5();

	di = (struct ocfs2_dinode *) tl_bh->b_data;
	tl = &di->id2.i_dealloc;
	i = FUNC2(tl->tl_used) - 1;
	while (i >= 0) {
		/* Caller has given us at least enough credits to
		 * update the truncate log dinode */
		status = FUNC11(handle, FUNC0(tl_inode), tl_bh,
						 OCFS2_JOURNAL_ACCESS_WRITE);
		if (status < 0) {
			FUNC6(status);
			goto bail;
		}

		tl->tl_used = FUNC1(i);

		status = FUNC12(handle, tl_bh);
		if (status < 0) {
			FUNC6(status);
			goto bail;
		}

		/* TODO: Perhaps we can calculate the bulk of the
		 * credits up front rather than extending like
		 * this. */
		status = FUNC9(handle,
					    OCFS2_TRUNCATE_LOG_FLUSH_ONE_REC);
		if (status < 0) {
			FUNC6(status);
			goto bail;
		}

		rec = tl->tl_recs[i];
		start_blk = FUNC8(data_alloc_inode->i_sb,
						    FUNC3(rec.t_start));
		num_clusters = FUNC3(rec.t_clusters);

		/* if start_blk is not set, we ignore the record as
		 * invalid. */
		if (start_blk) {
			FUNC4(0, "free record %d, start = %u, clusters = %u\n",
			     i, FUNC3(rec.t_start), num_clusters);

			status = FUNC10(handle, data_alloc_inode,
						     data_alloc_bh, start_blk,
						     num_clusters);
			if (status < 0) {
				FUNC6(status);
				goto bail;
			}
		}
		i--;
	}

bail:
	FUNC7(status);
	return status;
}