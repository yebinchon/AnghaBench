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
struct inode {int dummy; } ;
struct buffer_head {unsigned int b_size; struct buffer_head* b_this_page; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct inode*,struct buffer_head*) ; 
 struct buffer_head* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int FUNC7 (struct page*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct page *page, unsigned long offset)
{
	struct buffer_head *head, *bh, *next;
	struct inode *inode = page->mapping->host;
	unsigned int curr_off = 0;
	int ret = 1;

	FUNC0(!FUNC2(page));

	if (offset == 0)
		FUNC1(page);

	if (!FUNC5(page))
		goto out;

	head = FUNC4(page);
	bh = head;
	do {
		unsigned int next_off = curr_off + bh->b_size;
		next = bh->b_this_page;

		/*
		 * is this block fully invalidated?
		 */
		if (offset <= curr_off) {
			if (FUNC3(inode, bh))
				FUNC6(bh);
			else
				ret = 0;
		}
		curr_off = next_off;
		bh = next;
	} while (bh != head);

	/*
	 * We release buffers only if the entire page is being invalidated.
	 * The get_block cached value has been unconditionally invalidated,
	 * so real IO is not possible anymore.
	 */
	if (!offset && ret) {
		ret = FUNC7(page, 0);
		/* maybe should BUG_ON(!ret); - neilb */
	}
      out:
	return;
}