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
struct writeback_control {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {TYPE_2__* i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {int /*<<< orphan*/  s_blocksize; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int BH_Dirty ; 
 int BH_Uptodate ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_CACHE_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  bget_one ; 
 int FUNC4 (struct page*,int /*<<< orphan*/ *,struct writeback_control*) ; 
 int /*<<< orphan*/  bput_one ; 
 int /*<<< orphan*/  buffer_unmapped ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * ext3_get_block ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  journal_dirty_data_fn ; 
 struct buffer_head* FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct writeback_control*,struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct page *page,
				struct writeback_control *wbc)
{
	struct inode *inode = page->mapping->host;
	struct buffer_head *page_bufs;
	handle_t *handle = NULL;
	int ret = 0;
	int err;

	FUNC1(FUNC3(page));

	/*
	 * We give up here if we're reentered, because it might be for a
	 * different filesystem.
	 */
	if (FUNC6())
		goto out_fail;

	FUNC13(page);
	if (!FUNC11(page)) {
		FUNC5(page, inode->i_sb->s_blocksize,
				(1 << BH_Dirty)|(1 << BH_Uptodate));
		page_bufs = FUNC10(page);
	} else {
		page_bufs = FUNC10(page);
		if (!FUNC15(NULL, page_bufs, 0, PAGE_CACHE_SIZE,
				       NULL, buffer_unmapped)) {
			/* Provide NULL get_block() to catch bugs if buffers
			 * weren't really mapped */
			return FUNC4(page, NULL, wbc);
		}
	}
	handle = FUNC7(inode, FUNC9(inode));

	if (FUNC0(handle)) {
		ret = FUNC2(handle);
		goto out_fail;
	}

	FUNC15(handle, page_bufs, 0,
			PAGE_CACHE_SIZE, NULL, bget_one);

	ret = FUNC4(page, ext3_get_block, wbc);

	/*
	 * The page can become unlocked at any point now, and
	 * truncate can then come in and change things.  So we
	 * can't touch *page from now on.  But *page_bufs is
	 * safe due to elevated refcount.
	 */

	/*
	 * And attach them to the current transaction.  But only if
	 * block_write_full_page() succeeded.  Otherwise they are unmapped,
	 * and generally junk.
	 */
	if (ret == 0) {
		err = FUNC15(handle, page_bufs, 0, PAGE_CACHE_SIZE,
					NULL, journal_dirty_data_fn);
		if (!ret)
			ret = err;
	}
	FUNC15(handle, page_bufs, 0,
			PAGE_CACHE_SIZE, NULL, bput_one);
	err = FUNC8(handle);
	if (!ret)
		ret = err;
	return ret;

out_fail:
	FUNC12(wbc, page);
	FUNC14(page);
	return ret;
}