#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct journal_head* t_sync_datalist; } ;
typedef  TYPE_1__ transaction_t ;
struct journal_head {scalar_t__ b_jlist; TYPE_1__* b_transaction; } ;
struct buffer_head {int dummy; } ;
struct TYPE_10__ {int j_wbufsize; int /*<<< orphan*/  j_list_lock; struct buffer_head** j_wbuf; } ;
typedef  TYPE_2__ journal_t ;

/* Variables and functions */
 int /*<<< orphan*/  BJ_Locked ; 
 scalar_t__ BJ_SyncData ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct journal_head*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct journal_head*) ; 
 struct journal_head* FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 scalar_t__ FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 struct buffer_head* FUNC13 (struct journal_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head**,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (struct buffer_head*) ; 
 scalar_t__ FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC19 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 (struct buffer_head*) ; 
 scalar_t__ FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC28(journal_t *journal,
				       transaction_t *commit_transaction,
				       int write_op)
{
	struct journal_head *jh;
	struct buffer_head *bh;
	int locked;
	int bufs = 0;
	struct buffer_head **wbuf = journal->j_wbuf;
	int err = 0;

	/*
	 * Whenever we unlock the journal and sleep, things can get added
	 * onto ->t_sync_datalist, so we have to keep looping back to
	 * write_out_data until we *know* that the list is empty.
	 *
	 * Cleanup any flushed data buffers from the data list.  Even in
	 * abort mode, we want to flush this out as soon as possible.
	 */
write_out_data:
	FUNC8();
	FUNC20(&journal->j_list_lock);

	while (commit_transaction->t_sync_datalist) {
		jh = commit_transaction->t_sync_datalist;
		bh = FUNC13(jh);
		locked = 0;

		/* Get reference just to make sure buffer does not disappear
		 * when we are forced to drop various locks */
		FUNC9(bh);
		/* If the buffer is dirty, we need to submit IO and hence
		 * we need the buffer lock. We try to lock the buffer without
		 * blocking. If we fail, we need to drop j_list_lock and do
		 * blocking lock_buffer().
		 */
		if (FUNC4(bh)) {
			if (!FUNC25(bh)) {
				FUNC0(bh, "needs blocking lock");
				FUNC22(&journal->j_list_lock);
				FUNC24(journal,
						     commit_transaction);
				/* Write out all data to prevent deadlocks */
				FUNC14(wbuf, bufs, write_op);
				bufs = 0;
				FUNC16(bh);
				FUNC20(&journal->j_list_lock);
			}
			locked = 1;
		}
		/* We have to get bh_state lock. Again out of order, sigh. */
		if (!FUNC10(journal, bh)) {
			FUNC11(bh);
			FUNC20(&journal->j_list_lock);
		}
		/* Someone already cleaned up the buffer? */
		if (!FUNC5(bh) || FUNC3(bh) != jh
			|| jh->b_transaction != commit_transaction
			|| jh->b_jlist != BJ_SyncData) {
			FUNC12(bh);
			if (locked)
				FUNC27(bh);
			FUNC0(bh, "already cleaned up");
			FUNC19(bh);
			continue;
		}
		if (locked && FUNC23(bh)) {
			FUNC0(bh, "needs writeout, adding to array");
			wbuf[bufs++] = bh;
			FUNC1(jh, commit_transaction,
						BJ_Locked);
			FUNC12(bh);
			if (bufs == journal->j_wbufsize) {
				FUNC22(&journal->j_list_lock);
				FUNC24(journal,
						     commit_transaction);
				FUNC14(wbuf, bufs, write_op);
				bufs = 0;
				goto write_out_data;
			}
		} else if (!locked && FUNC6(bh)) {
			FUNC1(jh, commit_transaction,
						BJ_Locked);
			FUNC12(bh);
			FUNC18(bh);
		} else {
			FUNC0(bh, "writeout complete: unfile");
			if (FUNC26(!FUNC7(bh)))
				err = -EIO;
			FUNC2(jh);
			FUNC12(bh);
			if (locked)
				FUNC27(bh);
			FUNC15(bh);
			/* One for our safety reference, other for
			 * journal_remove_journal_head() */
			FUNC18(bh);
			FUNC19(bh);
		}

		if (FUNC17() || FUNC21(&journal->j_list_lock)) {
			FUNC22(&journal->j_list_lock);
			goto write_out_data;
		}
	}
	FUNC22(&journal->j_list_lock);
	FUNC24(journal, commit_transaction);
	FUNC14(wbuf, bufs, write_op);

	return err;
}