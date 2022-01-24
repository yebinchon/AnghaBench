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
struct buffer_head {unsigned int b_size; struct buffer_head* b_this_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 unsigned int FUNC6 (unsigned int,unsigned int) ; 
 unsigned int FUNC7 (unsigned int,unsigned int) ; 
 struct buffer_head* FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,unsigned int,unsigned int) ; 

void FUNC12(struct page *page, unsigned from, unsigned to)
{
	unsigned int block_start, block_end;
	struct buffer_head *head, *bh;

	FUNC0(!FUNC1(page));
	if (!FUNC9(page))
		return;

	bh = head = FUNC8(page);
	block_start = 0;
	do {
		block_end = block_start + bh->b_size;

		if (FUNC3(bh)) {
			if (block_end > from && block_start < to) {
				if (!FUNC2(page)) {
					unsigned start, size;

					start = FUNC6(from, block_start);
					size = FUNC7(to, block_end) - start;

					FUNC11(page, start, size);
					FUNC10(bh);
				}

				FUNC4(bh);
				FUNC5(bh);
			}
		}

		block_start = block_end;
		bh = bh->b_this_page;
	} while (bh != head);
}