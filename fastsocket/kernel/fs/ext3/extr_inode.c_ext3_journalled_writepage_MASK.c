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
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {int /*<<< orphan*/  i_state; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  EXT3_STATE_JDATA ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PAGE_CACHE_SIZE ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int FUNC5 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct page*,int /*<<< orphan*/ ,struct writeback_control*) ; 
 int /*<<< orphan*/  do_journal_get_write_access ; 
 int /*<<< orphan*/  ext3_get_block ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ext3_journalled_get_block ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct writeback_control*,struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_end_fn ; 

__attribute__((used)) static int FUNC17(struct page *page,
				struct writeback_control *wbc)
{
	struct inode *inode = page->mapping->host;
	handle_t *handle = NULL;
	int ret = 0;
	int err;

	if (FUNC7())
		goto no_write;

	FUNC14(page);
	handle = FUNC8(inode, FUNC10(inode));
	if (FUNC2(handle)) {
		ret = FUNC3(handle);
		goto no_write;
	}

	if (!FUNC12(page) || FUNC4(page)) {
		/*
		 * It's mmapped pagecache.  Add buffers and journal it.  There
		 * doesn't seem much point in redirtying the page here.
		 */
		FUNC0(page);
		ret = FUNC5(page, 0, PAGE_CACHE_SIZE,
					ext3_journalled_get_block);
		if (ret != 0) {
			FUNC9(handle);
			goto out_unlock;
		}
		ret = FUNC16(handle, FUNC11(page), 0,
			PAGE_CACHE_SIZE, NULL, do_journal_get_write_access);

		err = FUNC16(handle, FUNC11(page), 0,
				PAGE_CACHE_SIZE, NULL, write_end_fn);
		if (ret == 0)
			ret = err;
		FUNC1(inode)->i_state |= EXT3_STATE_JDATA;
		FUNC15(page);
	} else {
		/*
		 * It may be a page full of checkpoint-mode buffers.  We don't
		 * really know unless we go poke around in the buffer_heads.
		 * But block_write_full_page will do the right thing.
		 */
		ret = FUNC6(page, ext3_get_block, wbc);
	}
	err = FUNC9(handle);
	if (!ret)
		ret = err;
out:
	return ret;

no_write:
	FUNC13(wbc, page);
out_unlock:
	FUNC15(page);
	goto out;
}