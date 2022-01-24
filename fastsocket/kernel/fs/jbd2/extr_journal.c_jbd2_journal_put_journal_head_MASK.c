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
struct journal_head {scalar_t__ b_jcount; int /*<<< orphan*/  b_transaction; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct journal_head*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 struct buffer_head* FUNC5 (struct journal_head*) ; 

void FUNC6(struct journal_head *jh)
{
	struct buffer_head *bh = FUNC5(jh);

	FUNC3(bh);
	FUNC0(jh, jh->b_jcount > 0);
	--jh->b_jcount;
	if (!jh->b_jcount && !jh->b_transaction) {
		FUNC2(bh);
		FUNC1(bh);
	}
	FUNC4(bh);
}