#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  transaction_t ;
struct journal_head {scalar_t__ b_jlist; int /*<<< orphan*/ * b_next_transaction; int /*<<< orphan*/  b_cp_transaction; int /*<<< orphan*/ * b_transaction; } ;
struct buffer_head {int /*<<< orphan*/ * b_bdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  j_state_lock; int /*<<< orphan*/  j_list_lock; int /*<<< orphan*/ * j_running_transaction; int /*<<< orphan*/ * j_committing_transaction; } ;
typedef  TYPE_1__ journal_t ;

/* Variables and functions */
 scalar_t__ BJ_Locked ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct journal_head*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct journal_head*,int) ; 
 int FUNC5 (struct journal_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 
 struct journal_head* FUNC16 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC17 (struct journal_head*) ; 
 int /*<<< orphan*/  FUNC18 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(journal_t *journal, struct buffer_head *bh)
{
	transaction_t *transaction;
	struct journal_head *jh;
	int may_free = 1;
	int ret;

	FUNC0(bh, "entry");

	/*
	 * It is safe to proceed here without the j_list_lock because the
	 * buffers cannot be stolen by try_to_free_buffers as long as we are
	 * holding the page lock. --sct
	 */

	if (!FUNC7(bh))
		goto zap_buffer_unlocked;

	FUNC19(&journal->j_state_lock);
	FUNC14(bh);
	FUNC19(&journal->j_list_lock);

	jh = FUNC16(bh);
	if (!jh)
		goto zap_buffer_no_jh;

	transaction = jh->b_transaction;
	if (transaction == NULL) {
		/* First case: not on any transaction.  If it
		 * has no checkpoint link, then we can zap it:
		 * it's a writeback-mode buffer so we don't care
		 * if it hits disk safely. */
		if (!jh->b_cp_transaction) {
			FUNC1(jh, "not on any transaction: zap");
			goto zap_buffer;
		}

		if (!FUNC6(bh)) {
			/* bdflush has written it.  We can drop it now */
			goto zap_buffer;
		}

		/* OK, it must be in the journal but still not
		 * written fully to disk: it's metadata or
		 * journaled data... */

		if (journal->j_running_transaction) {
			/* ... and once the current transaction has
			 * committed, the buffer won't be needed any
			 * longer. */
			FUNC1(jh, "checkpointed: add to BJ_Forget");
			ret = FUNC5(jh,
					journal->j_running_transaction);
			FUNC17(jh);
			FUNC20(&journal->j_list_lock);
			FUNC15(bh);
			FUNC20(&journal->j_state_lock);
			return ret;
		} else {
			/* There is no currently-running transaction. So the
			 * orphan record which we wrote for this file must have
			 * passed into commit.  We must attach this buffer to
			 * the committing transaction, if it exists. */
			if (journal->j_committing_transaction) {
				FUNC1(jh, "give to committing trans");
				ret = FUNC5(jh,
					journal->j_committing_transaction);
				FUNC17(jh);
				FUNC20(&journal->j_list_lock);
				FUNC15(bh);
				FUNC20(&journal->j_state_lock);
				return ret;
			} else {
				/* The orphan record's transaction has
				 * committed.  We can cleanse this buffer */
				FUNC10(bh);
				goto zap_buffer;
			}
		}
	} else if (transaction == journal->j_committing_transaction) {
		FUNC1(jh, "on committing transaction");
		if (jh->b_jlist == BJ_Locked) {
			/*
			 * The buffer is on the committing transaction's locked
			 * list.  We have the buffer locked, so I/O has
			 * completed.  So we can nail the buffer now.
			 */
			may_free = FUNC5(jh, transaction);
			goto zap_buffer;
		}
		/*
		 * If it is committing, we simply cannot touch it.  We
		 * can remove it's next_transaction pointer from the
		 * running transaction if that is set, but nothing
		 * else. */
		FUNC18(bh);
		if (jh->b_next_transaction) {
			FUNC2(jh->b_next_transaction ==
					journal->j_running_transaction);
			jh->b_next_transaction = NULL;
		}
		FUNC17(jh);
		FUNC20(&journal->j_list_lock);
		FUNC15(bh);
		FUNC20(&journal->j_state_lock);
		return 0;
	} else {
		/* Good, the buffer belongs to the running transaction.
		 * We are writing our own transaction's data, not any
		 * previous one's, so it is safe to throw it away
		 * (remember that we expect the filesystem to have set
		 * i_size already for this truncate so recovery will not
		 * expose the disk blocks we are discarding here.) */
		FUNC4(jh, transaction == journal->j_running_transaction);
		FUNC1(jh, "on running transaction");
		may_free = FUNC5(jh, transaction);
	}

zap_buffer:
	FUNC17(jh);
zap_buffer_no_jh:
	FUNC20(&journal->j_list_lock);
	FUNC15(bh);
	FUNC20(&journal->j_state_lock);
zap_buffer_unlocked:
	FUNC9(bh);
	FUNC3(bh, !FUNC8(bh));
	FUNC11(bh);
	FUNC13(bh);
	FUNC12(bh);
	bh->b_bdev = NULL;
	return may_free;
}