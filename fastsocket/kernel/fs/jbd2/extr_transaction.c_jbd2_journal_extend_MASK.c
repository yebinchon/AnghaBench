#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ t_state; int t_outstanding_credits; int /*<<< orphan*/  t_handle_lock; TYPE_2__* t_journal; } ;
typedef  TYPE_1__ transaction_t ;
struct TYPE_9__ {int j_max_transaction_buffers; int /*<<< orphan*/  j_state_lock; } ;
typedef  TYPE_2__ journal_t ;
struct TYPE_10__ {int h_buffer_credits; TYPE_1__* h_transaction; } ;
typedef  TYPE_3__ handle_t ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ T_RUNNING ; 
 int FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(handle_t *handle, int nblocks)
{
	transaction_t *transaction = handle->h_transaction;
	journal_t *journal = transaction->t_journal;
	int result;
	int wanted;

	result = -EIO;
	if (FUNC1(handle))
		goto out;

	result = 1;

	FUNC3(&journal->j_state_lock);

	/* Don't extend a locked-down transaction! */
	if (handle->h_transaction->t_state != T_RUNNING) {
		FUNC2(3, "denied handle %p %d blocks: "
			  "transaction not running\n", handle, nblocks);
		goto error_out;
	}

	FUNC3(&transaction->t_handle_lock);
	wanted = transaction->t_outstanding_credits + nblocks;

	if (wanted > journal->j_max_transaction_buffers) {
		FUNC2(3, "denied handle %p %d blocks: "
			  "transaction too large\n", handle, nblocks);
		goto unlock;
	}

	if (wanted > FUNC0(journal)) {
		FUNC2(3, "denied handle %p %d blocks: "
			  "insufficient log space\n", handle, nblocks);
		goto unlock;
	}

	handle->h_buffer_credits += nblocks;
	transaction->t_outstanding_credits += nblocks;
	result = 0;

	FUNC2(3, "extended handle %p by %d\n", handle, nblocks);
unlock:
	FUNC4(&transaction->t_handle_lock);
error_out:
	FUNC4(&journal->j_state_lock);
out:
	return result;
}