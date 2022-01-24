#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  t_tid; } ;
typedef  TYPE_1__ transaction_t ;
typedef  int /*<<< orphan*/  tid_t ;
struct TYPE_11__ {unsigned int j_tail; unsigned int j_head; scalar_t__ j_tail_sequence; scalar_t__ j_transaction_sequence; int /*<<< orphan*/  j_state_lock; int /*<<< orphan*/ * j_checkpoint_transactions; TYPE_1__* j_committing_transaction; TYPE_1__* j_running_transaction; int /*<<< orphan*/  j_list_lock; int /*<<< orphan*/  j_checkpoint_mutex; } ;
typedef  TYPE_2__ journal_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(journal_t *journal)
{
	int err = 0;
	transaction_t *transaction = NULL;
	unsigned int old_tail;

	FUNC9(&journal->j_state_lock);

	/* Force everything buffered to the log... */
	if (journal->j_running_transaction) {
		transaction = journal->j_running_transaction;
		FUNC1(journal, transaction->t_tid);
	} else if (journal->j_committing_transaction)
		transaction = journal->j_committing_transaction;

	/* Wait for the log commit to complete... */
	if (transaction) {
		tid_t tid = transaction->t_tid;

		FUNC10(&journal->j_state_lock);
		FUNC6(journal, tid);
	} else {
		FUNC10(&journal->j_state_lock);
	}

	/* ...and flush everything in the log out to disk. */
	FUNC9(&journal->j_list_lock);
	while (!err && journal->j_checkpoint_transactions != NULL) {
		FUNC10(&journal->j_list_lock);
		FUNC7(&journal->j_checkpoint_mutex);
		err = FUNC5(journal);
		FUNC8(&journal->j_checkpoint_mutex);
		FUNC9(&journal->j_list_lock);
	}
	FUNC10(&journal->j_list_lock);

	if (FUNC3(journal))
		return -EIO;

	FUNC2(journal);

	/* Finally, mark the journal as really needing no recovery.
	 * This sets s_start==0 in the underlying superblock, which is
	 * the magic code for a fully-recovered superblock.  Any future
	 * commits of data to the journal will restore the current
	 * s_start value. */
	FUNC9(&journal->j_state_lock);
	old_tail = journal->j_tail;
	journal->j_tail = 0;
	FUNC10(&journal->j_state_lock);
	FUNC4(journal, 1);
	FUNC9(&journal->j_state_lock);
	journal->j_tail = old_tail;

	FUNC0(!journal->j_running_transaction);
	FUNC0(!journal->j_committing_transaction);
	FUNC0(!journal->j_checkpoint_transactions);
	FUNC0(journal->j_head == journal->j_tail);
	FUNC0(journal->j_tail_sequence == journal->j_transaction_sequence);
	FUNC10(&journal->j_state_lock);
	return 0;
}