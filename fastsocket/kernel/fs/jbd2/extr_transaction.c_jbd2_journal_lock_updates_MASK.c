#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  t_handle_lock; int /*<<< orphan*/  t_updates; } ;
typedef  TYPE_1__ transaction_t ;
struct TYPE_5__ {int /*<<< orphan*/  j_barrier; int /*<<< orphan*/  j_state_lock; int /*<<< orphan*/  j_wait_updates; TYPE_1__* j_running_transaction; int /*<<< orphan*/  j_barrier_count; } ;
typedef  TYPE_2__ journal_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

void FUNC7(journal_t *journal)
{
	FUNC0(wait);

	FUNC5(&journal->j_state_lock);
	++journal->j_barrier_count;

	/* Wait until there are no running updates */
	while (1) {
		transaction_t *transaction = journal->j_running_transaction;

		if (!transaction)
			break;

		FUNC5(&transaction->t_handle_lock);
		if (!transaction->t_updates) {
			FUNC6(&transaction->t_handle_lock);
			break;
		}
		FUNC3(&journal->j_wait_updates, &wait,
				TASK_UNINTERRUPTIBLE);
		FUNC6(&transaction->t_handle_lock);
		FUNC6(&journal->j_state_lock);
		FUNC4();
		FUNC1(&journal->j_wait_updates, &wait);
		FUNC5(&journal->j_state_lock);
	}
	FUNC6(&journal->j_state_lock);

	/*
	 * We have now established a barrier against other normal updates, but
	 * we also need to barrier against other jbd2_journal_lock_updates() calls
	 * to make sure that we serialise special journal-locked operations
	 * too.
	 */
	FUNC2(&journal->j_barrier);
}