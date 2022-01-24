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
struct writeback_control {int dummy; } ;
struct page {scalar_t__ index; } ;
struct mpage_da_data {scalar_t__ next_page; scalar_t__ first_page; scalar_t__ b_size; int b_state; scalar_t__ io_done; scalar_t__ b_blocknr; struct inode* inode; } ;
struct inode {int i_blkbits; } ;
struct buffer_head {int b_state; int /*<<< orphan*/  b_size; struct buffer_head* b_this_page; } ;
typedef  int sector_t ;

/* Variables and functions */
 int BH_Dirty ; 
 int BH_FLAGS ; 
 int BH_Uptodate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MPAGE_DA_EXTENT_TAIL ; 
 int PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  PAGE_CACHE_SIZE ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct mpage_da_data*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mpage_da_data*) ; 
 struct buffer_head* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct writeback_control*,struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 

__attribute__((used)) static int FUNC11(struct page *page,
				struct writeback_control *wbc, void *data)
{
	struct mpage_da_data *mpd = data;
	struct inode *inode = mpd->inode;
	struct buffer_head *bh, *head;
	sector_t logical;

	/*
	 * Can we merge this page to current extent?
	 */
	if (mpd->next_page != page->index) {
		/*
		 * Nope, we can't. So, we map non-allocated blocks
		 * and start IO on them
		 */
		if (mpd->next_page != mpd->first_page) {
			FUNC6(mpd);
			/*
			 * skip rest of the page in the page_vec
			 */
			FUNC9(wbc, page);
			FUNC10(page);
			return MPAGE_DA_EXTENT_TAIL;
		}

		/*
		 * Start next extent of pages ...
		 */
		mpd->first_page = page->index;

		/*
		 * ... and blocks
		 */
		mpd->b_size = 0;
		mpd->b_state = 0;
		mpd->b_blocknr = 0;
	}

	mpd->next_page = page->index + 1;
	logical = (sector_t) page->index <<
		  (PAGE_CACHE_SHIFT - inode->i_blkbits);

	if (!FUNC8(page)) {
		FUNC5(mpd, logical, PAGE_CACHE_SIZE,
				       (1 << BH_Dirty) | (1 << BH_Uptodate));
		if (mpd->io_done)
			return MPAGE_DA_EXTENT_TAIL;
	} else {
		/*
		 * Page with regular buffer heads, just add all dirty ones
		 */
		head = FUNC7(page);
		bh = head;
		do {
			FUNC0(FUNC2(bh));
			/*
			 * We need to try to allocate
			 * unmapped blocks in the same page.
			 * Otherwise we won't make progress
			 * with the page in ext4_writepage
			 */
			if (FUNC4(NULL, bh)) {
				FUNC5(mpd, logical,
						       bh->b_size,
						       bh->b_state);
				if (mpd->io_done)
					return MPAGE_DA_EXTENT_TAIL;
			} else if (FUNC1(bh) && (FUNC3(bh))) {
				/*
				 * mapped dirty buffer. We need to update
				 * the b_state because we look at
				 * b_state in mpage_da_map_blocks. We don't
				 * update b_size because if we find an
				 * unmapped buffer_head later we need to
				 * use the b_state flag of that buffer_head.
				 */
				if (mpd->b_size == 0)
					mpd->b_state = bh->b_state & BH_FLAGS;
			}
			logical++;
		} while ((bh = bh->b_this_page) != head);
	}

	return 0;
}