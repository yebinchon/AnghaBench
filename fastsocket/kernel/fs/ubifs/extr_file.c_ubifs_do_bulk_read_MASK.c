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
struct ubifs_inode {int read_in_a_row; int bulk_read; int last_page_read; } ;
struct ubifs_info {scalar_t__ leb_size; } ;
struct page {int index; struct address_space* mapping; } ;
struct inode {int dummy; } ;
struct bu_info {int blk_cnt; int cnt; scalar_t__ buf_len; scalar_t__ buf; TYPE_1__* zbranch; scalar_t__ eof; } ;
struct address_space {struct inode* host; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;
struct TYPE_2__ {scalar_t__ offs; scalar_t__ len; } ;

/* Variables and functions */
 int GFP_NOFS ; 
 int PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int UBIFS_BLOCKS_PER_PAGE_SHIFT ; 
 int __GFP_COLD ; 
 int __GFP_NOWARN ; 
 struct page* FUNC1 (struct address_space*,int,int) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int FUNC6 (struct ubifs_info*,struct page*,struct bu_info*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct ubifs_inode* FUNC8 (struct inode*) ; 
 int FUNC9 (struct ubifs_info*,struct bu_info*) ; 
 int FUNC10 (struct ubifs_info*,struct bu_info*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 

__attribute__((used)) static int FUNC13(struct ubifs_info *c, struct bu_info *bu,
			      struct page *page1)
{
	pgoff_t offset = page1->index, end_index;
	struct address_space *mapping = page1->mapping;
	struct inode *inode = mapping->host;
	struct ubifs_inode *ui = FUNC8(inode);
	int err, page_idx, page_cnt, ret = 0, n = 0;
	int allocate = bu->buf ? 0 : 1;
	loff_t isize;

	err = FUNC10(c, bu);
	if (err)
		goto out_warn;

	if (bu->eof) {
		/* Turn off bulk-read at the end of the file */
		ui->read_in_a_row = 1;
		ui->bulk_read = 0;
	}

	page_cnt = bu->blk_cnt >> UBIFS_BLOCKS_PER_PAGE_SHIFT;
	if (!page_cnt) {
		/*
		 * This happens when there are multiple blocks per page and the
		 * blocks for the first page we are looking for, are not
		 * together. If all the pages were like this, bulk-read would
		 * reduce performance, so we turn it off for a while.
		 */
		goto out_bu_off;
	}

	if (bu->cnt) {
		if (allocate) {
			/*
			 * Allocate bulk-read buffer depending on how many data
			 * nodes we are going to read.
			 */
			bu->buf_len = bu->zbranch[bu->cnt - 1].offs +
				      bu->zbranch[bu->cnt - 1].len -
				      bu->zbranch[0].offs;
			FUNC7(bu->buf_len > 0);
			FUNC7(bu->buf_len <= c->leb_size);
			bu->buf = FUNC4(bu->buf_len, GFP_NOFS | __GFP_NOWARN);
			if (!bu->buf)
				goto out_bu_off;
		}

		err = FUNC9(c, bu);
		if (err)
			goto out_warn;
	}

	err = FUNC6(c, page1, bu, &n);
	if (err)
		goto out_warn;

	FUNC12(page1);
	ret = 1;

	isize = FUNC2(inode);
	if (isize == 0)
		goto out_free;
	end_index = ((isize - 1) >> PAGE_CACHE_SHIFT);

	for (page_idx = 1; page_idx < page_cnt; page_idx++) {
		pgoff_t page_offset = offset + page_idx;
		struct page *page;

		if (page_offset > end_index)
			break;
		page = FUNC1(mapping, page_offset,
					   GFP_NOFS | __GFP_COLD);
		if (!page)
			break;
		if (!FUNC0(page))
			err = FUNC6(c, page, bu, &n);
		FUNC12(page);
		FUNC5(page);
		if (err)
			break;
	}

	ui->last_page_read = offset + page_idx - 1;

out_free:
	if (allocate)
		FUNC3(bu->buf);
	return ret;

out_warn:
	FUNC11("ignoring error %d and skipping bulk-read", err);
	goto out_free;

out_bu_off:
	ui->read_in_a_row = ui->bulk_read = 0;
	goto out_free;
}