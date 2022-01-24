#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ t_updates; int t_outstanding_credits; int /*<<< orphan*/  t_tid; int /*<<< orphan*/  t_handle_lock; TYPE_2__* t_journal; } ;
typedef  TYPE_1__ transaction_t ;
struct TYPE_12__ {int /*<<< orphan*/  j_state_lock; int /*<<< orphan*/  j_wait_updates; } ;
typedef  TYPE_2__ journal_t ;
struct TYPE_13__ {int h_buffer_credits; int /*<<< orphan*/  h_lockdep_map; TYPE_1__* h_transaction; } ;
typedef  TYPE_3__ handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,TYPE_3__*) ; 
 TYPE_3__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(handle_t *handle, int nblocks)
{
	transaction_t *transaction = handle->h_transaction;
	journal_t *journal = transaction->t_journal;
	int ret;

	/* If we've had an abort of any type, don't even think about
	 * actually doing the restart! */
	if (FUNC2(handle))
		return 0;

	/*
	 * First unlink the handle from its current transaction, and start the
	 * commit on that.
	 */
	FUNC0(transaction->t_updates > 0);
	FUNC0(FUNC4() == handle);

	FUNC6(&journal->j_state_lock);
	FUNC6(&transaction->t_handle_lock);
	transaction->t_outstanding_credits -= handle->h_buffer_credits;
	transaction->t_updates--;

	if (!transaction->t_updates)
		FUNC9(&journal->j_wait_updates);
	FUNC7(&transaction->t_handle_lock);

	FUNC3(2, "restarting handle %p\n", handle);
	FUNC1(journal, transaction->t_tid);
	FUNC7(&journal->j_state_lock);

	FUNC5(&handle->h_lockdep_map);
	handle->h_buffer_credits = nblocks;
	ret = FUNC8(journal, handle);
	return ret;
}