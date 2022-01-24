#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct writeback_control {scalar_t__ sync_mode; scalar_t__ nr_to_write; int encountered_congestion; scalar_t__ nonblocking; int /*<<< orphan*/  range_cyclic; } ;
struct pagevec {struct page** pages; } ;
struct page {scalar_t__ index; struct address_space* mapping; } ;
struct inode {TYPE_1__* i_sb; } ;
struct gfs2_sbd {int dummy; } ;
struct backing_dev_info {int dummy; } ;
struct address_space {TYPE_2__* a_ops; struct backing_dev_info* backing_dev_info; struct inode* host; } ;
typedef  scalar_t__ pgoff_t ;
typedef  int loff_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* invalidatepage ) (struct page*,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int s_blocksize; } ;

/* Variables and functions */
 struct gfs2_sbd* FUNC0 (struct inode*) ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ WB_SYNC_NONE ; 
 int FUNC2 (struct page*,struct writeback_control*) ; 
 scalar_t__ FUNC3 (struct backing_dev_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (struct gfs2_sbd*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_sbd*) ; 
 int FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 

__attribute__((used)) static int FUNC13(struct address_space *mapping,
				    struct writeback_control *wbc,
				    struct pagevec *pvec,
				    int nr_pages, pgoff_t end)
{
	struct inode *inode = mapping->host;
	struct gfs2_sbd *sdp = FUNC0(inode);
	loff_t i_size = FUNC7(inode);
	pgoff_t end_index = i_size >> PAGE_CACHE_SHIFT;
	unsigned offset = i_size & (PAGE_CACHE_SIZE-1);
	unsigned nrblocks = nr_pages * (PAGE_CACHE_SIZE/inode->i_sb->s_blocksize);
	struct backing_dev_info *bdi = mapping->backing_dev_info;
	int i;
	int ret;

	ret = FUNC5(sdp, nrblocks, nrblocks);
	if (ret < 0)
		return ret;

	for(i = 0; i < nr_pages; i++) {
		struct page *page = pvec->pages[i];

		FUNC8(page);

		if (FUNC10(page->mapping != mapping)) {
			FUNC11(page);
			continue;
		}

		if (!wbc->range_cyclic && page->index > end) {
			ret = 1;
			FUNC11(page);
			continue;
		}

		if (wbc->sync_mode != WB_SYNC_NONE)
			FUNC12(page);

		if (FUNC1(page) ||
		    !FUNC4(page)) {
			FUNC11(page);
			continue;
		}

		/* Is the page fully outside i_size? (truncate in progress) */
		if (page->index > end_index || (page->index == end_index && !offset)) {
			page->mapping->a_ops->invalidatepage(page, 0);
			FUNC11(page);
			continue;
		}

		ret = FUNC2(page, wbc);

		if (ret || (--(wbc->nr_to_write) <= 0))
			ret = 1;
		if (wbc->nonblocking && FUNC3(bdi)) {
			wbc->encountered_congestion = 1;
			ret = 1;
		}

	}
	FUNC6(sdp);
	return ret;
}