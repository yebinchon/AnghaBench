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
typedef  scalar_t__ tid_t ;
struct TYPE_5__ {scalar_t__ j_commit_request; TYPE_1__* j_running_transaction; int /*<<< orphan*/  j_commit_sequence; int /*<<< orphan*/  j_wait_commit; } ;
typedef  TYPE_2__ journal_t ;
struct TYPE_4__ {scalar_t__ t_tid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(journal_t *journal, tid_t target)
{
	/*
	 * The only transaction we can possibly wait upon is the
	 * currently running transaction (if it exists).  Otherwise,
	 * the target tid must be an old one.
	 */
	if (journal->j_commit_request != target &&
	    journal->j_running_transaction &&
	    journal->j_running_transaction->t_tid == target) {
		/*
		 * We want a new commit: OK, mark the request and wakeup the
		 * commit thread.  We do _not_ do the commit ourselves.
		 */

		journal->j_commit_request = target;
		FUNC1(1, "JBD: requesting commit %d/%d\n",
			  journal->j_commit_request,
			  journal->j_commit_sequence);
		FUNC3(&journal->j_wait_commit);
		return 1;
	} else if (!FUNC2(journal->j_commit_request, target))
		/* This should never happen, but if it does, preserve
		   the evidence before kjournald goes into a loop and
		   increments j_commit_sequence beyond all recognition. */
		FUNC0(1, "jbd: bad log_start_commit: %u %u %u %u\n",
		    journal->j_commit_request, journal->j_commit_sequence,
		    target, journal->j_running_transaction ?
		    journal->j_running_transaction->t_tid : 0);
	return 0;
}