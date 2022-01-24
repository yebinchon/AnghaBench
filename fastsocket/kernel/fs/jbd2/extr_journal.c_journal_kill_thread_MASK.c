#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  j_state_lock; int /*<<< orphan*/ * j_task; int /*<<< orphan*/  j_wait_done_commit; int /*<<< orphan*/  j_wait_commit; int /*<<< orphan*/  j_flags; } ;
typedef  TYPE_1__ journal_t ;

/* Variables and functions */
 int /*<<< orphan*/  JBD2_UNMOUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(journal_t *journal)
{
	FUNC0(&journal->j_state_lock);
	journal->j_flags |= JBD2_UNMOUNT;

	while (journal->j_task) {
		FUNC3(&journal->j_wait_commit);
		FUNC1(&journal->j_state_lock);
		FUNC2(journal->j_wait_done_commit, journal->j_task == NULL);
		FUNC0(&journal->j_state_lock);
	}
	FUNC1(&journal->j_state_lock);
}