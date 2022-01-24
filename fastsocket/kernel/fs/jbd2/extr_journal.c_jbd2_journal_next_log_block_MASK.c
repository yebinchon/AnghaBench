#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int j_free; unsigned long j_head; unsigned long j_last; unsigned long j_first; int /*<<< orphan*/  j_state_lock; } ;
typedef  TYPE_1__ journal_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,unsigned long,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(journal_t *journal, unsigned long long *retp)
{
	unsigned long blocknr;

	FUNC2(&journal->j_state_lock);
	FUNC0(journal->j_free > 1);

	blocknr = journal->j_head;
	journal->j_head++;
	journal->j_free--;
	if (journal->j_head == journal->j_last)
		journal->j_head = journal->j_first;
	FUNC3(&journal->j_state_lock);
	return FUNC1(journal, blocknr, retp);
}