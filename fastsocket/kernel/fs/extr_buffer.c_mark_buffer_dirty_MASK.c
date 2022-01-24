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
struct page {int dummy; } ;
struct buffer_head {struct page* b_page; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,struct address_space*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 struct address_space* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 

void FUNC8(struct buffer_head *bh)
{
	FUNC1(!FUNC4(bh));

	/*
	 * Very *carefully* optimize the it-is-already-dirty case.
	 *
	 * Don't let the final "is it dirty" escape to before we
	 * perhaps modified the buffer.
	 */
	if (FUNC3(bh)) {
		FUNC6();
		if (FUNC3(bh))
			return;
	}

	if (!FUNC7(bh)) {
		struct page *page = bh->b_page;
		if (!FUNC0(page)) {
			struct address_space *mapping = FUNC5(page);
			if (mapping)
				FUNC2(page, mapping, 0);
		}
	}
}