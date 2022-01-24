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
struct writeback_control {int dummy; } ;
struct page {scalar_t__ const index; TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ pgoff_t ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  get_block_t ;
typedef  int /*<<< orphan*/  bh_end_io_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 int FUNC0 (struct inode* const,struct page*,int /*<<< orphan*/ *,struct writeback_control*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode* const) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,unsigned int,int) ; 

int FUNC5(struct page *page, get_block_t *get_block,
			struct writeback_control *wbc, bh_end_io_t *handler)
{
	struct inode * const inode = page->mapping->host;
	loff_t i_size = FUNC2(inode);
	const pgoff_t end_index = i_size >> PAGE_CACHE_SHIFT;
	unsigned offset;

	/* Is the page fully inside i_size? */
	if (page->index < end_index)
		return FUNC0(inode, page, get_block, wbc,
					       handler);

	/* Is the page fully outside i_size? (truncate in progress) */
	offset = i_size & (PAGE_CACHE_SIZE-1);
	if (page->index >= end_index+1 || !offset) {
		/*
		 * The page may have dirty, unmapped buffers.  For example,
		 * they may have been added in ext3_writepage().  Make them
		 * freeable here, so the page does not leak.
		 */
		FUNC1(page, 0);
		FUNC3(page);
		return 0; /* don't care */
	}

	/*
	 * The page straddles i_size.  It must be zeroed out on each and every
	 * writepage invokation because it may be mmapped.  "A file is mapped
	 * in multiples of the page size.  For a file that is not a multiple of
	 * the  page size, the remaining memory is zeroed when mapped, and
	 * writes to that region are not written out to the file."
	 */
	FUNC4(page, offset, PAGE_CACHE_SIZE);
	return FUNC0(inode, page, get_block, wbc, handler);
}