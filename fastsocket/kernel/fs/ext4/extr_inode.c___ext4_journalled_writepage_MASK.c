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
struct page {struct address_space* mapping; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EXT4_STATE_JDATA ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bget_one ; 
 int /*<<< orphan*/  bput_one ; 
 int /*<<< orphan*/  do_journal_get_write_access ; 
 int /*<<< orphan*/ * FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 struct buffer_head* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct buffer_head*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_end_fn ; 

__attribute__((used)) static int FUNC10(struct page *page,
				       struct writeback_control *wbc,
				       unsigned int len)
{
	struct address_space *mapping = page->mapping;
	struct inode *inode = mapping->host;
	struct buffer_head *page_bufs;
	handle_t *handle = NULL;
	int ret = 0;
	int err;

	page_bufs = FUNC7(page);
	FUNC0(!page_bufs);
	FUNC9(handle, page_bufs, 0, len, NULL, bget_one);
	/* As soon as we unlock the page, it can go away, but we have
	 * references to buffers so we are safe */
	FUNC8(page);

	handle = FUNC3(inode, FUNC6(inode));
	if (FUNC1(handle)) {
		ret = FUNC2(handle);
		goto out;
	}

	ret = FUNC9(handle, page_bufs, 0, len, NULL,
				do_journal_get_write_access);

	err = FUNC9(handle, page_bufs, 0, len, NULL,
				write_end_fn);
	if (ret == 0)
		ret = err;
	err = FUNC4(handle);
	if (!ret)
		ret = err;

	FUNC9(handle, page_bufs, 0, len, NULL, bput_one);
	FUNC5(inode, EXT4_STATE_JDATA);
out:
	return ret;
}