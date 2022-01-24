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
struct super_block {int dummy; } ;
struct reiserfs_journal {int /*<<< orphan*/  j_state; int /*<<< orphan*/  j_join_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  J_WRITERS_BLOCKED ; 
 struct reiserfs_journal* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3(struct super_block *s)
{
	struct reiserfs_journal *journal = FUNC0(s);
	FUNC2(journal->j_join_wait,
		   !FUNC1(J_WRITERS_BLOCKED, &journal->j_state));
}