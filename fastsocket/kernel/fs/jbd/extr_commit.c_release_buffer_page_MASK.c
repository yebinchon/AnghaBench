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
struct page {scalar_t__ mapping; } ;
struct buffer_head {struct page* b_page; int /*<<< orphan*/  b_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

__attribute__((used)) static void FUNC8(struct buffer_head *bh)
{
	struct page *page;

	if (FUNC2(bh))
		goto nope;
	if (FUNC1(&bh->b_count) != 1)
		goto nope;
	page = bh->b_page;
	if (!page)
		goto nope;
	if (page->mapping)
		goto nope;

	/* OK, it's a truncated page */
	if (!FUNC6(page))
		goto nope;

	FUNC3(page);
	FUNC0(bh);
	FUNC5(page);
	FUNC7(page);
	FUNC4(page);
	return;

nope:
	FUNC0(bh);
}