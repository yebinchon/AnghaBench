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
typedef  int /*<<< orphan*/  transaction_t ;
struct journal_head {scalar_t__ b_cp_transaction; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BJ_Forget ; 
 int /*<<< orphan*/  FUNC0 (struct journal_head*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct journal_head*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct journal_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 struct buffer_head* FUNC5 (struct journal_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC7(struct journal_head *jh, transaction_t *transaction)
{
	int may_free = 1;
	struct buffer_head *bh = FUNC5(jh);

	FUNC3(jh);

	if (jh->b_cp_transaction) {
		FUNC0(jh, "on running+cp transaction");
		/*
		 * We don't want to write the buffer anymore, clear the
		 * bit so that we don't confuse checks in
		 * __journal_file_buffer
		 */
		FUNC4(bh);
		FUNC2(jh, transaction, BJ_Forget);
		may_free = 0;
	} else {
		FUNC0(jh, "on running transaction");
		FUNC6(bh);
		FUNC1(bh);
	}
	return may_free;
}