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
struct ocfs2_super {struct ocfs2_journal* journal; int /*<<< orphan*/ * commit_task; } ;
struct ocfs2_journal {scalar_t__ j_state; int /*<<< orphan*/ * j_bh; int /*<<< orphan*/ * j_journal; int /*<<< orphan*/  j_num_trans; struct inode* j_inode; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ip_open_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 scalar_t__ OCFS2_JOURNAL_FREE ; 
 scalar_t__ OCFS2_JOURNAL_IN_SHUTDOWN ; 
 scalar_t__ OCFS2_JOURNAL_LOADED ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int) ; 
 int FUNC17 (struct ocfs2_super*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct ocfs2_super*) ; 

void FUNC19(struct ocfs2_super *osb)
{
	struct ocfs2_journal *journal = NULL;
	int status = 0;
	struct inode *inode = NULL;
	int num_running_trans = 0;

	FUNC13();

	FUNC1(!osb);

	journal = osb->journal;
	if (!journal)
		goto done;

	inode = journal->j_inode;

	if (journal->j_state != OCFS2_JOURNAL_LOADED)
		goto done;

	/* need to inc inode use count - jbd2_journal_destroy will iput. */
	if (!FUNC5(inode))
		FUNC0();

	num_running_trans = FUNC3(&(osb->journal->j_num_trans));
	if (num_running_trans > 0)
		FUNC12(0, "Shutting down journal: must wait on %d "
		     "running transactions!\n",
		     num_running_trans);

	/* Do a commit_cache here. It will flush our journal, *and*
	 * release any locks that are still held.
	 * set the SHUTDOWN flag and release the trans lock.
	 * the commit thread will take the trans lock for us below. */
	journal->j_state = OCFS2_JOURNAL_IN_SHUTDOWN;

	/* The OCFS2_JOURNAL_IN_SHUTDOWN will signal to commit_cache to not
	 * drop the trans_lock (which we want to hold until we
	 * completely destroy the journal. */
	if (osb->commit_task) {
		/* Wait for the commit thread */
		FUNC12(0, "Waiting for ocfs2commit to exit....\n");
		FUNC11(osb->commit_task);
		osb->commit_task = NULL;
	}

	FUNC1(FUNC3(&(osb->journal->j_num_trans)) != 0);

	if (FUNC18(osb)) {
		FUNC9(journal->j_journal);
		status = FUNC8(journal->j_journal);
		FUNC10(journal->j_journal);
		if (status < 0)
			FUNC14(status);
	}

	if (status == 0) {
		/*
		 * Do not toggle if flush was unsuccessful otherwise
		 * will leave dirty metadata in a "clean" journal
		 */
		status = FUNC17(osb, 0, 0);
		if (status < 0)
			FUNC14(status);
	}

	/* Shutdown the kernel journal system */
	FUNC7(journal->j_journal);
	journal->j_journal = NULL;

	FUNC2(inode)->ip_open_count--;

	/* unlock our journal */
	FUNC16(inode, 1);

	FUNC4(journal->j_bh);
	journal->j_bh = NULL;

	journal->j_state = OCFS2_JOURNAL_FREE;

//	up_write(&journal->j_trans_barrier);
done:
	if (inode)
		FUNC6(inode);
	FUNC15();
}