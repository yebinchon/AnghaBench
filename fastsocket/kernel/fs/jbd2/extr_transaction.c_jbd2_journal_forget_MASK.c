#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* t_journal; } ;
typedef  TYPE_1__ transaction_t ;
struct journal_head {int b_modified; TYPE_1__* b_next_transaction; TYPE_1__* b_transaction; scalar_t__ b_cp_transaction; int /*<<< orphan*/  b_frozen_data; int /*<<< orphan*/  b_committed_data; } ;
struct buffer_head {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  j_list_lock; TYPE_1__* j_committing_transaction; } ;
typedef  TYPE_2__ journal_t ;
struct TYPE_8__ {int /*<<< orphan*/  h_buffer_credits; TYPE_1__* h_transaction; } ;
typedef  TYPE_3__ handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  BJ_Forget ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct journal_head*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct journal_head*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct journal_head*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct journal_head*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct journal_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct journal_head*) ; 
 struct journal_head* FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

int FUNC19 (handle_t *handle, struct buffer_head *bh)
{
	transaction_t *transaction = handle->h_transaction;
	journal_t *journal = transaction->t_journal;
	struct journal_head *jh;
	int drop_reserve = 0;
	int err = 0;
	int was_modified = 0;

	FUNC0(bh, "entry");

	FUNC15(bh);
	FUNC17(&journal->j_list_lock);

	if (!FUNC11(bh))
		goto not_jbd;
	jh = FUNC10(bh);

	/* Critical error: attempting to delete a bitmap buffer, maybe?
	 * Don't do any jbd operations, and return an error. */
	if (!FUNC4(jh, !jh->b_committed_data,
			 "inconsistent data on disk")) {
		err = -EIO;
		goto not_jbd;
	}

	/* keep track of wether or not this transaction modified us */
	was_modified = jh->b_modified;

	/*
	 * The buffer's going from the transaction, we must drop
	 * all references -bzzz
	 */
	jh->b_modified = 0;

	if (jh->b_transaction == handle->h_transaction) {
		FUNC3(jh, !jh->b_frozen_data);

		/* If we are forgetting a buffer which is already part
		 * of this transaction, then we can just drop it from
		 * the transaction immediately. */
		FUNC12(bh);
		FUNC13(bh);

		FUNC1(jh, "belongs to current transaction: unfile");

		/*
		 * we only want to drop a reference if this transaction
		 * modified the buffer
		 */
		if (was_modified)
			drop_reserve = 1;

		/*
		 * We are no longer going to journal this buffer.
		 * However, the commit of this transaction is still
		 * important to the buffer: the delete that we are now
		 * processing might obsolete an old log entry, so by
		 * committing, we can satisfy the buffer's checkpoint.
		 *
		 * So, if we have a checkpoint on the buffer, we should
		 * now refile the buffer on our BJ_Forget list so that
		 * we know to remove the checkpoint after we commit.
		 */

		if (jh->b_cp_transaction) {
			FUNC8(jh);
			FUNC7(jh, transaction, BJ_Forget);
		} else {
			FUNC9(jh);
			FUNC14(bh);
			FUNC6(bh);
			if (!FUNC11(bh)) {
				FUNC18(&journal->j_list_lock);
				FUNC16(bh);
				FUNC5(bh);
				goto drop;
			}
		}
	} else if (jh->b_transaction) {
		FUNC3(jh, (jh->b_transaction ==
				 journal->j_committing_transaction));
		/* However, if the buffer is still owned by a prior
		 * (committing) transaction, we can't drop it yet... */
		FUNC1(jh, "belongs to older transaction");
		/* ... but we CAN drop it from the new transaction if we
		 * have also modified it since the original commit. */

		if (jh->b_next_transaction) {
			FUNC2(jh->b_next_transaction == transaction);
			jh->b_next_transaction = NULL;

			/*
			 * only drop a reference if this transaction modified
			 * the buffer
			 */
			if (was_modified)
				drop_reserve = 1;
		}
	}

not_jbd:
	FUNC18(&journal->j_list_lock);
	FUNC16(bh);
	FUNC6(bh);
drop:
	if (drop_reserve) {
		/* no need to reserve log space for this block -bzzz */
		handle->h_buffer_credits++;
	}
	return err;
}