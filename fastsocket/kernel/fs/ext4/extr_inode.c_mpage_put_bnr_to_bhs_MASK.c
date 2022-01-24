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
struct pagevec {struct page** pages; } ;
struct page {int index; } ;
struct mpage_da_data {struct inode* inode; } ;
struct inode {int i_blkbits; TYPE_1__* i_sb; struct address_space* i_mapping; } ;
struct buffer_head {int b_size; int b_blocknr; scalar_t__ b_bdev; struct buffer_head* b_this_page; } ;
struct address_space {int dummy; } ;
typedef  int sector_t ;
typedef  int pgoff_t ;
struct TYPE_2__ {scalar_t__ s_bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PAGEVEC_SIZE ; 
 int PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 scalar_t__ FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 struct buffer_head* FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct pagevec*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct pagevec*,struct address_space*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pagevec*) ; 

__attribute__((used)) static void FUNC13(struct mpage_da_data *mpd, sector_t logical,
				 struct buffer_head *exbh)
{
	struct inode *inode = mpd->inode;
	struct address_space *mapping = inode->i_mapping;
	int blocks = exbh->b_size >> inode->i_blkbits;
	sector_t pblock = exbh->b_blocknr, cur_logical;
	struct buffer_head *head, *bh;
	pgoff_t index, end;
	struct pagevec pvec;
	int nr_pages, i;

	index = logical >> (PAGE_CACHE_SHIFT - inode->i_blkbits);
	end = (logical + blocks - 1) >> (PAGE_CACHE_SHIFT - inode->i_blkbits);
	cur_logical = index << (PAGE_CACHE_SHIFT - inode->i_blkbits);

	FUNC10(&pvec, 0);

	while (index <= end) {
		/* XXX: optimize tail */
		nr_pages = FUNC11(&pvec, mapping, index, PAGEVEC_SIZE);
		if (nr_pages == 0)
			break;
		for (i = 0; i < nr_pages; i++) {
			struct page *page = pvec.pages[i];

			index = page->index;
			if (index > end)
				break;
			index++;

			FUNC0(!FUNC1(page));
			FUNC0(FUNC2(page));
			FUNC0(!FUNC9(page));

			bh = FUNC8(page);
			head = bh;

			/* skip blocks out of the range */
			do {
				if (cur_logical >= logical)
					break;
				cur_logical++;
			} while ((bh = bh->b_this_page) != head);

			do {
				if (cur_logical >= logical + blocks)
					break;

				if (FUNC3(bh) ||
						FUNC5(bh)) {

					FUNC0(bh->b_bdev != inode->i_sb->s_bdev);

					if (FUNC3(bh)) {
						FUNC6(bh);
						bh->b_blocknr = pblock;
					} else {
						/*
						 * unwritten already should have
						 * blocknr assigned. Verify that
						 */
						FUNC7(bh);
						FUNC0(bh->b_blocknr != pblock);
					}

				} else if (FUNC4(bh))
					FUNC0(bh->b_blocknr != pblock);

				cur_logical++;
				pblock++;
			} while ((bh = bh->b_this_page) != head);
		}
		FUNC12(&pvec);
	}
}