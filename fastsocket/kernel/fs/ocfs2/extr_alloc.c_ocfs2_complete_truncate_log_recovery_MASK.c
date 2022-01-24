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
typedef  int /*<<< orphan*/  u64 ;
struct ocfs2_truncate_log {TYPE_2__* tl_recs; int /*<<< orphan*/  tl_used; } ;
struct ocfs2_super {int /*<<< orphan*/  sb; struct inode* osb_tl_inode; } ;
struct TYPE_4__ {struct ocfs2_truncate_log i_dealloc; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_blkno; TYPE_1__ id2; } ;
struct inode {int /*<<< orphan*/  i_mutex; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_6__ {scalar_t__ ip_blkno; } ;
struct TYPE_5__ {int /*<<< orphan*/  t_start; int /*<<< orphan*/  t_clusters; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_TRUNCATE_LOG_UPDATE ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ocfs2_super*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct ocfs2_super*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC17 (struct ocfs2_super*) ; 

int FUNC18(struct ocfs2_super *osb,
					 struct ocfs2_dinode *tl_copy)
{
	int status = 0;
	int i;
	unsigned int clusters, num_recs, start_cluster;
	u64 start_blk;
	handle_t *handle;
	struct inode *tl_inode = osb->osb_tl_inode;
	struct ocfs2_truncate_log *tl;

	FUNC8();

	if (FUNC1(tl_inode)->ip_blkno == FUNC6(tl_copy->i_blkno)) {
		FUNC7(ML_ERROR, "Asked to recover my own truncate log!\n");
		return -EINVAL;
	}

	tl = &tl_copy->id2.i_dealloc;
	num_recs = FUNC4(tl->tl_used);
	FUNC7(0, "cleanup %u records from %llu\n", num_recs,
	     (unsigned long long)FUNC6(tl_copy->i_blkno));

	FUNC11(&tl_inode->i_mutex);
	for(i = 0; i < num_recs; i++) {
		if (FUNC17(osb)) {
			status = FUNC3(osb);
			if (status < 0) {
				FUNC9(status);
				goto bail_up;
			}
		}

		handle = FUNC15(osb, OCFS2_TRUNCATE_LOG_UPDATE);
		if (FUNC0(handle)) {
			status = FUNC2(handle);
			FUNC9(status);
			goto bail_up;
		}

		clusters = FUNC5(tl->tl_recs[i].t_clusters);
		start_cluster = FUNC5(tl->tl_recs[i].t_start);
		start_blk = FUNC13(osb->sb, start_cluster);

		status = FUNC16(osb, handle,
						   start_blk, clusters);
		FUNC14(osb, handle);
		if (status < 0) {
			FUNC9(status);
			goto bail_up;
		}
	}

bail_up:
	FUNC12(&tl_inode->i_mutex);

	FUNC10(status);
	return status;
}