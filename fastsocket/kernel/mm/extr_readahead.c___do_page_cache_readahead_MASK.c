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
struct page {unsigned long index; int /*<<< orphan*/  lru; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int /*<<< orphan*/  page_tree; struct inode* host; } ;
typedef  unsigned long pgoff_t ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct page* FUNC6 (struct address_space*) ; 
 int /*<<< orphan*/  page_pool ; 
 struct page* FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct address_space*,struct file*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC11(struct address_space *mapping, struct file *filp,
			pgoff_t offset, unsigned long nr_to_read,
			unsigned long lookahead_size)
{
	struct inode *inode = mapping->host;
	struct page *page;
	unsigned long end_index;	/* The last page we want to read */
	FUNC1(page_pool);
	int page_idx;
	int ret = 0;
	loff_t isize = FUNC3(inode);

	if (isize == 0)
		goto out;

	end_index = ((isize - 1) >> PAGE_CACHE_SHIFT);

	/*
	 * Preallocate as many pages as we will need.
	 */
	for (page_idx = 0; page_idx < nr_to_read; page_idx++) {
		pgoff_t page_offset = offset + page_idx;

		if (page_offset > end_index)
			break;

		FUNC8();
		page = FUNC7(&mapping->page_tree, page_offset);
		FUNC9();
		if (page)
			continue;

		page = FUNC6(mapping);
		if (!page)
			break;
		page->index = page_offset;
		FUNC4(&page->lru, &page_pool);
		if (page_idx == nr_to_read - lookahead_size)
			FUNC2(page);
		ret++;
	}

	/*
	 * Now start the IO.  We ignore I/O errors - if the page is not
	 * uptodate then the caller will launch readpage again, and
	 * will then handle the error.
	 */
	if (ret)
		FUNC10(mapping, filp, &page_pool, ret);
	FUNC0(!FUNC5(&page_pool));
out:
	return ret;
}