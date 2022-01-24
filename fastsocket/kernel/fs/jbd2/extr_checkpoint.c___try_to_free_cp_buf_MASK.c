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
struct journal_head {scalar_t__ b_jlist; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 scalar_t__ BJ_None ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct journal_head*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int FUNC3 (struct journal_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 struct buffer_head* FUNC9 (struct journal_head*) ; 

__attribute__((used)) static int FUNC10(struct journal_head *jh)
{
	int ret = 0;
	struct buffer_head *bh = FUNC9(jh);

	if (jh->b_jlist == BJ_None && !FUNC5(bh) &&
	    !FUNC4(bh) && !FUNC6(bh)) {
		FUNC1(jh, "remove from checkpoint list");
		ret = FUNC3(jh) + 1;
		FUNC8(bh);
		FUNC7(bh);
		FUNC0(bh, "release");
		FUNC2(bh);
	} else {
		FUNC8(bh);
	}
	return ret;
}