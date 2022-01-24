#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct journal_head {TYPE_2__* b_transaction; scalar_t__ b_modified; TYPE_2__* b_next_transaction; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {scalar_t__ t_state; TYPE_1__* t_journal; } ;
struct TYPE_3__ {int /*<<< orphan*/  j_list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  BJ_Metadata ; 
 int /*<<< orphan*/  BJ_Reserved ; 
 int /*<<< orphan*/  FUNC0 (struct journal_head*,int) ; 
 scalar_t__ T_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct journal_head*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct journal_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct journal_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct buffer_head*) ; 
 struct buffer_head* FUNC6 (struct journal_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int FUNC8 (struct buffer_head*) ; 

void FUNC9(struct journal_head *jh)
{
	int was_dirty;
	struct buffer_head *bh = FUNC6(jh);

	FUNC0(jh, FUNC5(bh));
	if (jh->b_transaction)
		FUNC4(&jh->b_transaction->t_journal->j_list_lock);

	/* If the buffer is now unused, just drop it. */
	if (jh->b_next_transaction == NULL) {
		FUNC3(jh);
		return;
	}

	/*
	 * It has been modified by a later transaction: add it to the new
	 * transaction's metadata list.
	 */

	was_dirty = FUNC8(bh);
	FUNC2(jh);
	jh->b_transaction = jh->b_next_transaction;
	jh->b_next_transaction = NULL;
	FUNC1(jh, jh->b_transaction,
				jh->b_modified ? BJ_Metadata : BJ_Reserved);
	FUNC0(jh, jh->b_transaction->t_state == T_RUNNING);

	if (was_dirty)
		FUNC7(bh);
}