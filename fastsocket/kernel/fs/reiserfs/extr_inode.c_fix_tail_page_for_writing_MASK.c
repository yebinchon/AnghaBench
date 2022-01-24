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
struct buffer_head {scalar_t__ b_blocknr; struct buffer_head* b_this_page; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct buffer_head*) ; 
 struct buffer_head* FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 

__attribute__((used)) static inline void FUNC4(struct page *page)
{
	struct buffer_head *head, *next, *bh;

	if (page && FUNC2(page)) {
		head = FUNC1(page);
		bh = head;
		do {
			next = bh->b_this_page;
			if (FUNC0(bh) && bh->b_blocknr == 0) {
				FUNC3(bh);
			}
			bh = next;
		} while (bh != head);
	}
}