#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int j_commit_interval; int j_max_batch_time; int /*<<< orphan*/  j_history_lock; int /*<<< orphan*/  j_flags; scalar_t__ j_min_batch_time; int /*<<< orphan*/  j_state_lock; int /*<<< orphan*/  j_list_lock; int /*<<< orphan*/  j_revoke_lock; int /*<<< orphan*/  j_checkpoint_mutex; int /*<<< orphan*/  j_barrier; int /*<<< orphan*/  j_wait_updates; int /*<<< orphan*/  j_wait_commit; int /*<<< orphan*/  j_wait_checkpoint; int /*<<< orphan*/  j_wait_done_commit; int /*<<< orphan*/  j_wait_logspace; int /*<<< orphan*/  j_wait_transaction_locked; } ;
typedef  TYPE_1__ journal_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  JBD2_ABORT ; 
 int JBD2_DEFAULT_MAX_COMMIT_AGE ; 
 int /*<<< orphan*/  JOURNAL_REVOKE_DEFAULT_HASH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static journal_t * FUNC6 (void)
{
	journal_t *journal;
	int err;

	journal = FUNC3(sizeof(*journal), GFP_KERNEL);
	if (!journal)
		goto fail;

	FUNC0(&journal->j_wait_transaction_locked);
	FUNC0(&journal->j_wait_logspace);
	FUNC0(&journal->j_wait_done_commit);
	FUNC0(&journal->j_wait_checkpoint);
	FUNC0(&journal->j_wait_commit);
	FUNC0(&journal->j_wait_updates);
	FUNC4(&journal->j_barrier);
	FUNC4(&journal->j_checkpoint_mutex);
	FUNC5(&journal->j_revoke_lock);
	FUNC5(&journal->j_list_lock);
	FUNC5(&journal->j_state_lock);

	journal->j_commit_interval = (HZ * JBD2_DEFAULT_MAX_COMMIT_AGE);
	journal->j_min_batch_time = 0;
	journal->j_max_batch_time = 15000; /* 15ms */

	/* The journal is marked for error until we succeed with recovery! */
	journal->j_flags = JBD2_ABORT;

	/* Set up a default-sized revoke table for the new mount. */
	err = FUNC1(journal, JOURNAL_REVOKE_DEFAULT_HASH);
	if (err) {
		FUNC2(journal);
		goto fail;
	}

	FUNC5(&journal->j_history_lock);

	return journal;
fail:
	return NULL;
}