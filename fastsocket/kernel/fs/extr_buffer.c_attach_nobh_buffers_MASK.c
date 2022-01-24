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
struct page {TYPE_1__* mapping; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
struct TYPE_2__ {int /*<<< orphan*/  private_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct page *page, struct buffer_head *head)
{
	struct buffer_head *bh;

	FUNC0(!FUNC2(page));

	FUNC5(&page->mapping->private_lock);
	bh = head;
	do {
		if (FUNC1(page))
			FUNC4(bh);
		if (!bh->b_this_page)
			bh->b_this_page = head;
		bh = bh->b_this_page;
	} while (bh != head);
	FUNC3(page, head);
	FUNC6(&page->mapping->private_lock);
}