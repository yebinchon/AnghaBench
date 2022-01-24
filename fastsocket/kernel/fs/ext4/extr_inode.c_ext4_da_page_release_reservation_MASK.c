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
struct buffer_head {unsigned int b_size; struct buffer_head* b_this_page; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct buffer_head* FUNC3 (struct page*) ; 

__attribute__((used)) static void FUNC4(struct page *page,
					     unsigned long offset)
{
	int to_release = 0;
	struct buffer_head *head, *bh;
	unsigned int curr_off = 0;

	head = FUNC3(page);
	bh = head;
	do {
		unsigned int next_off = curr_off + bh->b_size;

		if ((offset <= curr_off) && (FUNC0(bh))) {
			to_release++;
			FUNC1(bh);
		}
		curr_off = next_off;
	} while ((bh = bh->b_this_page) != head);
	FUNC2(page->mapping->host, to_release);
}