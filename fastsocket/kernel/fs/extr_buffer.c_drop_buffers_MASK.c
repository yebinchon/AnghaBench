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
struct buffer_head {scalar_t__ b_assoc_map; struct buffer_head* b_this_page; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AS_EIO ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 struct buffer_head* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct page *page, struct buffer_head **buffers_to_free)
{
	struct buffer_head *head = FUNC4(page);
	struct buffer_head *bh;

	bh = head;
	do {
		if (FUNC3(bh) && page->mapping)
			FUNC5(AS_EIO, &page->mapping->flags);
		if (FUNC2(bh))
			goto failed;
		bh = bh->b_this_page;
	} while (bh != head);

	do {
		struct buffer_head *next = bh->b_this_page;

		if (bh->b_assoc_map)
			FUNC1(bh);
		bh = next;
	} while (bh != head);
	*buffers_to_free = head;
	FUNC0(page);
	return 1;
failed:
	return 0;
}