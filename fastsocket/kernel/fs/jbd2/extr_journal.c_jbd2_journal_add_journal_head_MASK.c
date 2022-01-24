#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct journal_head {int /*<<< orphan*/  b_jcount; struct buffer_head* b_bh; } ;
struct buffer_head {struct journal_head* b_private; TYPE_1__* b_page; int /*<<< orphan*/  b_count; } ;
struct TYPE_2__ {scalar_t__ mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct journal_head* FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 struct journal_head* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct journal_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct journal_head*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 

struct journal_head *FUNC12(struct buffer_head *bh)
{
	struct journal_head *jh;
	struct journal_head *new_jh = NULL;

repeat:
	if (!FUNC4(bh)) {
		new_jh = FUNC8();
		FUNC10(new_jh, 0, sizeof(*new_jh));
	}

	FUNC6(bh);
	if (FUNC4(bh)) {
		jh = FUNC3(bh);
	} else {
		FUNC1(bh,
			(FUNC2(&bh->b_count) > 0) ||
			(bh->b_page && bh->b_page->mapping));

		if (!new_jh) {
			FUNC7(bh);
			goto repeat;
		}

		jh = new_jh;
		new_jh = NULL;		/* We consumed it */
		FUNC11(bh);
		bh->b_private = jh;
		jh->b_bh = bh;
		FUNC5(bh);
		FUNC0(bh, "added journal_head");
	}
	jh->b_jcount++;
	FUNC7(bh);
	if (new_jh)
		FUNC9(new_jh);
	return bh->b_private;
}