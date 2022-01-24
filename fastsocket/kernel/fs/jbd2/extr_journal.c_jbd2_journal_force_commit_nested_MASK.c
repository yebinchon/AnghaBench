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
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  t_tid; } ;
typedef  TYPE_1__ transaction_t ;
typedef  int /*<<< orphan*/  tid_t ;
struct TYPE_8__ {int /*<<< orphan*/  j_state_lock; TYPE_1__* j_committing_transaction; TYPE_1__* j_running_transaction; } ;
typedef  TYPE_2__ journal_t ;
struct TYPE_9__ {int /*<<< orphan*/  journal_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* current ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(journal_t *journal)
{
	transaction_t *transaction = NULL;
	tid_t tid;

	FUNC2(&journal->j_state_lock);
	if (journal->j_running_transaction && !current->journal_info) {
		transaction = journal->j_running_transaction;
		FUNC0(journal, transaction->t_tid);
	} else if (journal->j_committing_transaction)
		transaction = journal->j_committing_transaction;

	if (!transaction) {
		FUNC3(&journal->j_state_lock);
		return 0;	/* Nothing to retry */
	}

	tid = transaction->t_tid;
	FUNC3(&journal->j_state_lock);
	FUNC1(journal, tid);
	return 1;
}