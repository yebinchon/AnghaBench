#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct jbd2_inode {int /*<<< orphan*/ * i_transaction; int /*<<< orphan*/  i_list; int /*<<< orphan*/  i_flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  j_list_lock; int /*<<< orphan*/ * j_committing_transaction; } ;
typedef  TYPE_1__ journal_t ;
struct TYPE_6__ {int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  __JI_COMMIT_RUNNING ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__ wait ; 

void FUNC10(journal_t *journal,
				    struct jbd2_inode *jinode)
{
	int writeout = 0;

	if (!journal)
		return;
restart:
	FUNC7(&journal->j_list_lock);
	/* Is commit writing out inode - we have to wait */
	if (FUNC9(__JI_COMMIT_RUNNING, &jinode->i_flags)) {
		wait_queue_head_t *wq;
		FUNC0(wait, &jinode->i_flags, __JI_COMMIT_RUNNING);
		FUNC6();
		wq = FUNC1(&jinode->i_flags, __JI_COMMIT_RUNNING);
		FUNC4(wq, &wait.wait, TASK_UNINTERRUPTIBLE);
		FUNC8(&journal->j_list_lock);
		FUNC5();
		FUNC2(wq, &wait.wait);
		goto restart;
	}

	/* Do we need to wait for data writeback? */
	if (journal->j_committing_transaction == jinode->i_transaction)
		writeout = 1;
	if (jinode->i_transaction) {
		FUNC3(&jinode->i_list);
		jinode->i_transaction = NULL;
	}
	FUNC8(&journal->j_list_lock);
}