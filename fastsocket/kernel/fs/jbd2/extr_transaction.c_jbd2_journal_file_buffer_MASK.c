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
struct TYPE_6__ {TYPE_1__* t_journal; } ;
typedef  TYPE_2__ transaction_t ;
struct journal_head {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  j_list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct journal_head*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct journal_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct journal_head *jh,
				transaction_t *transaction, int jlist)
{
	FUNC1(FUNC3(jh));
	FUNC4(&transaction->t_journal->j_list_lock);
	FUNC0(jh, transaction, jlist);
	FUNC5(&transaction->t_journal->j_list_lock);
	FUNC2(FUNC3(jh));
}