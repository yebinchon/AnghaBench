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
struct buffer_head {unsigned long b_state; struct buffer_head* b_this_page; struct block_device* b_bdev; } ;
struct block_device {int dummy; } ;

/* Variables and functions */
 unsigned long BH_NILFS_Allocated ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC2 (struct page*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

struct page *FUNC7(struct block_device *bdev, int size,
				      unsigned long state)
{
	struct buffer_head *bh, *head, *tail;
	struct page *page;

	page = FUNC1(GFP_NOFS); /* page_count of the returned page is 1 */
	if (FUNC5(!page))
		return NULL;

	FUNC4(page);
	head = FUNC2(page, size, 0);
	if (FUNC5(!head)) {
		FUNC6(page);
		FUNC0(page);
		return NULL;
	}

	bh = head;
	do {
		bh->b_state = (1UL << BH_NILFS_Allocated) | state;
		tail = bh;
		bh->b_bdev = bdev;
		bh = bh->b_this_page;
	} while (bh);

	tail->b_this_page = head;
	FUNC3(page, head);

	return page;
}