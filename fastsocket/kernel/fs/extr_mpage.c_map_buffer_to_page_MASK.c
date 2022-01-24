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
struct inode {int i_blkbits; } ;
struct buffer_head {struct buffer_head* b_this_page; int /*<<< orphan*/  b_blocknr; int /*<<< orphan*/  b_bdev; int /*<<< orphan*/  b_state; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

__attribute__((used)) static void 
FUNC5(struct page *page, struct buffer_head *bh, int page_block) 
{
	struct inode *inode = page->mapping->host;
	struct buffer_head *page_bh, *head;
	int block = 0;

	if (!FUNC4(page)) {
		/*
		 * don't make any buffers if there is only one buffer on
		 * the page and the page just needs to be set up to date
		 */
		if (inode->i_blkbits == PAGE_CACHE_SHIFT && 
		    FUNC1(bh)) {
			FUNC0(page);    
			return;
		}
		FUNC2(page, 1 << inode->i_blkbits, 0);
	}
	head = FUNC3(page);
	page_bh = head;
	do {
		if (block == page_block) {
			page_bh->b_state = bh->b_state;
			page_bh->b_bdev = bh->b_bdev;
			page_bh->b_blocknr = bh->b_blocknr;
			break;
		}
		page_bh = page_bh->b_this_page;
		block++;
	} while (page_bh != head);
}