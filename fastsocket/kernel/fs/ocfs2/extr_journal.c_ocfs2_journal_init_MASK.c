#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_super {int /*<<< orphan*/  slot_num; } ;
struct ocfs2_journal {int /*<<< orphan*/  j_state; struct buffer_head* j_bh; struct inode* j_inode; TYPE_3__* j_journal; struct ocfs2_super* j_osb; } ;
struct TYPE_6__ {int /*<<< orphan*/  ij_flags; } ;
struct TYPE_7__ {TYPE_1__ journal1; } ;
struct ocfs2_dinode {TYPE_2__ id1; } ;
struct inode {scalar_t__ i_size; scalar_t__ i_blocks; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_8__ {unsigned long long j_maxlen; } ;
typedef  TYPE_3__ journal_t ;
struct TYPE_9__ {unsigned long long ip_clusters; int /*<<< orphan*/  ip_open_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EACCES ; 
 int EINVAL ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  JOURNAL_SYSTEM_INODE ; 
 int /*<<< orphan*/  ML_ERROR ; 
 TYPE_5__* FUNC1 (struct inode*) ; 
 int OCFS2_JOURNAL_DIRTY_FL ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_LOADED ; 
 int /*<<< orphan*/  OCFS2_META_LOCK_RECOVERY ; 
 scalar_t__ OCFS2_MIN_JOURNAL_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 TYPE_3__* FUNC6 (struct inode*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 struct inode* FUNC12 (struct ocfs2_super*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct inode*,struct buffer_head**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ocfs2_super*) ; 

int FUNC16(struct ocfs2_journal *journal, int *dirty)
{
	int status = -1;
	struct inode *inode = NULL; /* the journal inode */
	journal_t *j_journal = NULL;
	struct ocfs2_dinode *di = NULL;
	struct buffer_head *bh = NULL;
	struct ocfs2_super *osb;
	int inode_lock = 0;

	FUNC9();

	FUNC0(!journal);

	osb = journal->j_osb;

	/* already have the inode for our journal */
	inode = FUNC12(osb, JOURNAL_SYSTEM_INODE,
					    osb->slot_num);
	if (inode == NULL) {
		status = -EACCES;
		FUNC10(status);
		goto done;
	}
	if (FUNC5(inode)) {
		FUNC8(ML_ERROR, "access error (bad inode)\n");
		FUNC4(inode);
		inode = NULL;
		status = -EACCES;
		goto done;
	}

	FUNC2(inode);
	FUNC1(inode)->ip_open_count++;

	/* Skip recovery waits here - journal inode metadata never
	 * changes in a live cluster so it can be considered an
	 * exception to the rule. */
	status = FUNC13(inode, &bh, 1, OCFS2_META_LOCK_RECOVERY);
	if (status < 0) {
		if (status != -ERESTARTSYS)
			FUNC8(ML_ERROR, "Could not get lock on journal!\n");
		goto done;
	}

	inode_lock = 1;
	di = (struct ocfs2_dinode *)bh->b_data;

	if (inode->i_size <  OCFS2_MIN_JOURNAL_SIZE) {
		FUNC8(ML_ERROR, "Journal file size (%lld) is too small!\n",
		     inode->i_size);
		status = -EINVAL;
		goto done;
	}

	FUNC8(0, "inode->i_size = %lld\n", inode->i_size);
	FUNC8(0, "inode->i_blocks = %llu\n",
			(unsigned long long)inode->i_blocks);
	FUNC8(0, "inode->ip_clusters = %u\n", FUNC1(inode)->ip_clusters);

	/* call the kernels journal init function now */
	j_journal = FUNC6(inode);
	if (j_journal == NULL) {
		FUNC8(ML_ERROR, "Linux journal layer error\n");
		status = -EINVAL;
		goto done;
	}

	FUNC8(0, "Returned from jbd2_journal_init_inode\n");
	FUNC8(0, "j_journal->j_maxlen = %u\n", j_journal->j_maxlen);

	*dirty = (FUNC7(di->id1.journal1.ij_flags) &
		  OCFS2_JOURNAL_DIRTY_FL);

	journal->j_journal = j_journal;
	journal->j_inode = inode;
	journal->j_bh = bh;

	FUNC15(osb);

	journal->j_state = OCFS2_JOURNAL_LOADED;

	status = 0;
done:
	if (status < 0) {
		if (inode_lock)
			FUNC14(inode, 1);
		FUNC3(bh);
		if (inode) {
			FUNC1(inode)->ip_open_count--;
			FUNC4(inode);
		}
	}

	FUNC11(status);
	return status;
}