#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  wait_queue_t ;
struct super_block {int dummy; } ;
struct reiserfs_journal {int /*<<< orphan*/  j_join_wait; int /*<<< orphan*/  j_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  J_WRITERS_QUEUED ; 
 struct reiserfs_journal* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct super_block *s)
{
	wait_queue_t wait;
	struct reiserfs_journal *journal = FUNC0(s);
	FUNC6(J_WRITERS_QUEUED, &journal->j_state);

	/*
	 * we don't want to use wait_event here because
	 * we only want to wait once.
	 */
	FUNC3(&wait, current);
	FUNC2(&journal->j_join_wait, &wait);
	FUNC7(TASK_UNINTERRUPTIBLE);
	if (FUNC8(J_WRITERS_QUEUED, &journal->j_state))
		FUNC5();
	FUNC1(TASK_RUNNING);
	FUNC4(&journal->j_join_wait, &wait);
}