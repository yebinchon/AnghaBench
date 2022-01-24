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
struct file_ra_state {unsigned long start; unsigned long size; unsigned long async_size; unsigned long prev_pos; int /*<<< orphan*/  ra_pages; } ;
struct file {int dummy; } ;
struct address_space {int /*<<< orphan*/  page_tree; } ;
typedef  unsigned long pgoff_t ;

/* Variables and functions */
 unsigned long PAGE_CACHE_SHIFT ; 
 unsigned long FUNC0 (struct address_space*,struct file*,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 void* FUNC2 (struct file_ra_state*,unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (struct file_ra_state*,struct address_space*,struct file*) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (struct address_space*,struct file_ra_state*,unsigned long,unsigned long,unsigned long) ; 

__attribute__((used)) static unsigned long
FUNC9(struct address_space *mapping,
		   struct file_ra_state *ra, struct file *filp,
		   bool hit_readahead_marker, pgoff_t offset,
		   unsigned long req_size)
{
	unsigned long max = FUNC3(ra->ra_pages);

	/*
	 * start of file
	 */
	if (!offset)
		goto initial_readahead;

	/*
	 * It's the expected callback offset, assume sequential access.
	 * Ramp up sizes, and push forward the readahead window.
	 */
	if ((offset == (ra->start + ra->size - ra->async_size) ||
	     offset == (ra->start + ra->size))) {
		ra->start += ra->size;
		ra->size = FUNC2(ra, max);
		ra->async_size = ra->size;
		goto readit;
	}

	/*
	 * Hit a marked page without valid readahead state.
	 * E.g. interleaved reads.
	 * Query the pagecache for async_size, which normally equals to
	 * readahead size. Ramp it up and use it as the new readahead size.
	 */
	if (hit_readahead_marker) {
		pgoff_t start;

		FUNC6();
		start = FUNC5(&mapping->page_tree, offset+1,max);
		FUNC7();

		if (!start || start - offset > max)
			return 0;

		ra->start = start;
		ra->size = start - offset;	/* old async_size */
		ra->size += req_size;
		ra->size = FUNC2(ra, max);
		ra->async_size = ra->size;
		goto readit;
	}

	/*
	 * oversize read
	 */
	if (req_size > max)
		goto initial_readahead;

	/*
	 * sequential cache miss
	 */
	if (offset - (ra->prev_pos >> PAGE_CACHE_SHIFT) <= 1UL)
		goto initial_readahead;

	/*
	 * Query the page cache and look for the traces(cached history pages)
	 * that a sequential stream would leave behind.
	 */
	if (FUNC8(mapping, ra, offset, req_size, max))
		goto readit;

	/*
	 * standalone, small random read
	 * Read as is, and do not pollute the readahead state.
	 */
	return FUNC0(mapping, filp, offset, req_size, 0);

initial_readahead:
	ra->start = offset;
	ra->size = FUNC1(req_size, max);
	ra->async_size = ra->size > req_size ? ra->size - req_size : ra->size;

readit:
	/*
	 * Will this read hit the readahead marker made by itself?
	 * If so, trigger the readahead marker hit now, and merge
	 * the resulted next readahead window into the current one.
	 */
	if (offset == ra->start && ra->size == ra->async_size) {
		ra->async_size = FUNC2(ra, max);
		ra->size += ra->async_size;
	}

	return FUNC4(ra, mapping, filp);
}