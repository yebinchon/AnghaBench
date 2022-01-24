#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ t_expires; int /*<<< orphan*/  t_handle_lock; scalar_t__ t_tid; int /*<<< orphan*/  t_start_time; int /*<<< orphan*/  t_state; TYPE_2__* t_journal; } ;
typedef  TYPE_1__ transaction_t ;
struct TYPE_9__ {int /*<<< orphan*/  expires; } ;
struct TYPE_8__ {TYPE_1__* j_running_transaction; TYPE_6__ j_commit_timer; scalar_t__ j_commit_interval; int /*<<< orphan*/  j_transaction_sequence; } ;
typedef  TYPE_2__ journal_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static transaction_t *
FUNC5(journal_t *journal, transaction_t *transaction)
{
	transaction->t_journal = journal;
	transaction->t_state = T_RUNNING;
	transaction->t_start_time = FUNC2();
	transaction->t_tid = journal->j_transaction_sequence++;
	transaction->t_expires = jiffies + journal->j_commit_interval;
	FUNC4(&transaction->t_handle_lock);

	/* Set up the commit timer for the new transaction. */
	journal->j_commit_timer.expires =
				FUNC3(transaction->t_expires);
	FUNC1(&journal->j_commit_timer);

	FUNC0(journal->j_running_transaction == NULL);
	journal->j_running_transaction = transaction;

	return transaction;
}