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
struct buffer_head {struct buffer_head* b_this_page; } ;
struct address_space {int /*<<< orphan*/  private_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,struct address_space*,int) ; 
 struct buffer_head* FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 struct address_space* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(struct page *page)
{
	int newly_dirty;
	struct address_space *mapping = FUNC4(page);

	if (FUNC8(!mapping))
		return !FUNC0(page);

	FUNC6(&mapping->private_lock);
	if (FUNC3(page)) {
		struct buffer_head *head = FUNC2(page);
		struct buffer_head *bh = head;

		do {
			FUNC5(bh);
			bh = bh->b_this_page;
		} while (bh != head);
	}
	newly_dirty = !FUNC0(page);
	FUNC7(&mapping->private_lock);

	if (newly_dirty)
		FUNC1(page, mapping, 1);
	return newly_dirty;
}