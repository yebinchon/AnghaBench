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
struct journal_head {scalar_t__ b_jlist; int /*<<< orphan*/ * b_transaction; int /*<<< orphan*/ * b_cp_transaction; int /*<<< orphan*/ * b_next_transaction; } ;
struct buffer_head {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  j_list_lock; } ;
typedef  TYPE_1__ journal_t ;

/* Variables and functions */
 scalar_t__ BJ_Locked ; 
 scalar_t__ BJ_None ; 
 scalar_t__ BJ_SyncData ; 
 int /*<<< orphan*/  FUNC0 (struct journal_head*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct journal_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct journal_head*) ; 
 struct journal_head* FUNC4 (struct buffer_head*) ; 
 scalar_t__ FUNC5 (struct buffer_head*) ; 
 scalar_t__ FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(journal_t *journal, struct buffer_head *bh)
{
	struct journal_head *jh;

	jh = FUNC4(bh);

	if (FUNC6(bh) || FUNC5(bh))
		goto out;

	if (jh->b_next_transaction != NULL)
		goto out;

	FUNC8(&journal->j_list_lock);
	if (jh->b_transaction != NULL && jh->b_cp_transaction == NULL) {
		if (jh->b_jlist == BJ_SyncData || jh->b_jlist == BJ_Locked) {
			/* A written-back ordered data buffer */
			FUNC0(jh, "release data");
			FUNC3(jh);
			FUNC7(bh);
			FUNC1(bh);
		}
	} else if (jh->b_cp_transaction != NULL && jh->b_transaction == NULL) {
		/* written-back checkpointed metadata buffer */
		if (jh->b_jlist == BJ_None) {
			FUNC0(jh, "remove from checkpoint list");
			FUNC2(jh);
			FUNC7(bh);
			FUNC1(bh);
		}
	}
	FUNC9(&journal->j_list_lock);
out:
	return;
}