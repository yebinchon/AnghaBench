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
struct TYPE_4__ {scalar_t__ t_tid; int /*<<< orphan*/  t_expires; } ;
typedef  TYPE_1__ transaction_t ;
struct TYPE_5__ {int j_flags; scalar_t__ j_commit_sequence; scalar_t__ j_commit_request; int /*<<< orphan*/  j_wait_done_commit; int /*<<< orphan*/ * j_task; int /*<<< orphan*/  j_commit_timer; int /*<<< orphan*/  j_state_lock; TYPE_1__* j_running_transaction; int /*<<< orphan*/  j_wait_commit; } ;
typedef  TYPE_2__ journal_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int JBD2_UNMOUNT ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  commit_timeout ; 
 int /*<<< orphan*/ * current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(void *arg)
{
	journal_t *journal = arg;
	transaction_t *transaction;

	/*
	 * Set up an interval timer which can be used to trigger a commit wakeup
	 * after the commit interval expires
	 */
	FUNC9(&journal->j_commit_timer, commit_timeout,
			(unsigned long)current);

	/* Record that the journal thread is running */
	journal->j_task = current;
	FUNC13(&journal->j_wait_done_commit);

	/*
	 * And now, wait forever for commit wakeup events.
	 */
	FUNC10(&journal->j_state_lock);

loop:
	if (journal->j_flags & JBD2_UNMOUNT)
		goto end_loop;

	FUNC5(1, "commit_sequence=%d, commit_request=%d\n",
		journal->j_commit_sequence, journal->j_commit_request);

	if (journal->j_commit_sequence != journal->j_commit_request) {
		FUNC5(1, "OK, requests differ\n");
		FUNC11(&journal->j_state_lock);
		FUNC1(&journal->j_commit_timer);
		FUNC4(journal);
		FUNC10(&journal->j_state_lock);
		goto loop;
	}

	FUNC13(&journal->j_wait_done_commit);
	if (FUNC3(current)) {
		/*
		 * The simpler the better. Flushing journal isn't a
		 * good idea, because that depends on threads that may
		 * be already stopped.
		 */
		FUNC5(1, "Now suspending kjournald2\n");
		FUNC11(&journal->j_state_lock);
		FUNC7();
		FUNC10(&journal->j_state_lock);
	} else {
		/*
		 * We assume on resume that commits are already there,
		 * so we don't sleep
		 */
		FUNC0(wait);
		int should_sleep = 1;

		FUNC6(&journal->j_wait_commit, &wait,
				TASK_INTERRUPTIBLE);
		if (journal->j_commit_sequence != journal->j_commit_request)
			should_sleep = 0;
		transaction = journal->j_running_transaction;
		if (transaction && FUNC12(jiffies,
						transaction->t_expires))
			should_sleep = 0;
		if (journal->j_flags & JBD2_UNMOUNT)
			should_sleep = 0;
		if (should_sleep) {
			FUNC11(&journal->j_state_lock);
			FUNC8();
			FUNC10(&journal->j_state_lock);
		}
		FUNC2(&journal->j_wait_commit, &wait);
	}

	FUNC5(1, "kjournald2 wakes\n");

	/*
	 * Were we woken up by a commit wakeup event?
	 */
	transaction = journal->j_running_transaction;
	if (transaction && FUNC12(jiffies, transaction->t_expires)) {
		journal->j_commit_request = transaction->t_tid;
		FUNC5(1, "woke because of timeout\n");
	}
	goto loop;

end_loop:
	FUNC11(&journal->j_state_lock);
	FUNC1(&journal->j_commit_timer);
	journal->j_task = NULL;
	FUNC13(&journal->j_wait_done_commit);
	FUNC5(1, "Journal thread exiting.\n");
	return 0;
}