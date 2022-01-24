#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct writeback_control {int encountered_congestion; scalar_t__ range_start; scalar_t__ range_end; scalar_t__ sync_mode; scalar_t__ nr_to_write; scalar_t__ range_cyclic; scalar_t__ nonblocking; } ;
struct page {scalar_t__ index; struct address_space* mapping; } ;
struct cifs_writedata {scalar_t__ sync_mode; unsigned int nr_pages; int pagesz; int /*<<< orphan*/  refcount; struct page** pages; TYPE_2__* cfile; int /*<<< orphan*/  pid; scalar_t__ tailsz; scalar_t__ bytes; scalar_t__ offset; } ;
struct cifs_sb_info {int wsize; } ;
struct backing_dev_info {int dummy; } ;
struct address_space {scalar_t__ writeback_index; TYPE_1__* host; struct backing_dev_info* backing_dev_info; } ;
typedef  scalar_t__ pgoff_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_6__ {int /*<<< orphan*/  pid; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct cifs_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EBADF ; 
 int ENOMEM ; 
 scalar_t__ LLONG_MAX ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 scalar_t__ PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 scalar_t__ WB_SYNC_ALL ; 
 scalar_t__ WB_SYNC_NONE ; 
 scalar_t__ FUNC4 (struct backing_dev_info*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (struct cifs_writedata*) ; 
 struct cifs_writedata* FUNC8 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cifs_writedata_release ; 
 int /*<<< orphan*/  cifs_writev_complete_ops ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 unsigned int FUNC11 (struct address_space*,scalar_t__*,int /*<<< orphan*/ ,scalar_t__,struct page**) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ ,int) ; 
 int FUNC13 (struct address_space*,struct writeback_control*) ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct address_space*,int) ; 
 scalar_t__ FUNC18 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 scalar_t__ FUNC20 (struct page*) ; 
 int /*<<< orphan*/  FUNC21 (struct writeback_control*,struct page*) ; 
 int /*<<< orphan*/  FUNC22 (struct page*) ; 
 int /*<<< orphan*/  FUNC23 (struct page*) ; 
 scalar_t__ FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (struct page*) ; 
 int /*<<< orphan*/  FUNC26 (struct page*) ; 

__attribute__((used)) static int FUNC27(struct address_space *mapping,
			   struct writeback_control *wbc)
{
	struct backing_dev_info *bdi = mapping->backing_dev_info;
	struct cifs_sb_info *cifs_sb = FUNC1(mapping->host->i_sb);
	bool done = false, scanned = false, range_whole = false;
	pgoff_t end, index;
	struct cifs_writedata *wdata;
	struct page *page;
	int rc = 0;

	/*
	 * BB: Is this meaningful for a non-block-device file system?
	 * If it is, we should test it again after we do I/O
	 */
	if (wbc->nonblocking && FUNC4(bdi)) {
		wbc->encountered_congestion = 1;
		return 0;
	}

	/*
	 * If wsize is smaller than the page cache size, default to writing
	 * one page at a time via cifs_writepage
	 */
	if (cifs_sb->wsize < PAGE_CACHE_SIZE)
		return FUNC13(mapping, wbc);

	if (wbc->range_cyclic) {
		index = mapping->writeback_index; /* Start from prev offset */
		end = -1;
	} else {
		index = wbc->range_start >> PAGE_CACHE_SHIFT;
		end = wbc->range_end >> PAGE_CACHE_SHIFT;
		if (wbc->range_start == 0 && wbc->range_end == LLONG_MAX)
			range_whole = true;
		scanned = true;
	}
retry:
	while (!done && index <= end) {
		unsigned int i, nr_pages, found_pages;
		pgoff_t next = 0, tofind;
		struct page **pages;

		tofind = FUNC18((cifs_sb->wsize / PAGE_CACHE_SIZE) - 1,
				end - index) + 1;

		wdata = FUNC8((unsigned int)tofind,
					     &cifs_writev_complete_ops);
		if (!wdata) {
			rc = -ENOMEM;
			break;
		}

		/*
		 * find_get_pages_tag seems to return a max of 256 on each
		 * iteration, so we must call it several times in order to
		 * fill the array or the wsize is effectively limited to
		 * 256 * PAGE_CACHE_SIZE.
		 */
		found_pages = 0;
		pages = wdata->pages;
		do {
			nr_pages = FUNC11(mapping, &index,
							PAGECACHE_TAG_DIRTY,
							tofind, pages);
			found_pages += nr_pages;
			tofind -= nr_pages;
			pages += nr_pages;
		} while (nr_pages && tofind && index <= end);

		if (found_pages == 0) {
			FUNC15(&wdata->refcount, cifs_writedata_release);
			break;
		}

		nr_pages = 0;
		for (i = 0; i < found_pages; i++) {
			page = wdata->pages[i];
			/*
			 * At this point we hold neither mapping->tree_lock nor
			 * lock on the page itself: the page may be truncated or
			 * invalidated (changing page->mapping to NULL), or even
			 * swizzled back from swapper_space to tmpfs file
			 * mapping
			 */

			if (nr_pages == 0)
				FUNC16(page);
			else if (!FUNC23(page))
				break;

			if (FUNC24(page->mapping != mapping)) {
				FUNC25(page);
				break;
			}

			if (!wbc->range_cyclic && page->index > end) {
				done = true;
				FUNC25(page);
				break;
			}

			if (next && (page->index != next)) {
				/* Not next consecutive page */
				FUNC25(page);
				break;
			}

			if (wbc->sync_mode != WB_SYNC_NONE)
				FUNC26(page);

			if (FUNC2(page) ||
					!FUNC9(page)) {
				FUNC25(page);
				break;
			}

			/*
			 * This actually clears the dirty bit in the radix tree.
			 * See cifs_writepage() for more commentary.
			 */
			FUNC22(page);

			if (FUNC20(page) >= FUNC14(mapping->host)) {
				done = true;
				FUNC25(page);
				FUNC10(page);
				break;
			}

			wdata->pages[i] = page;
			next = page->index + 1;
			++nr_pages;
		}

		/* reset index to refind any pages skipped */
		if (nr_pages == 0)
			index = wdata->pages[0]->index + 1;

		/* put any pages we aren't going to use */
		for (i = nr_pages; i < found_pages; i++) {
			FUNC19(wdata->pages[i]);
			wdata->pages[i] = NULL;
		}

		/* nothing to write? */
		if (nr_pages == 0) {
			FUNC15(&wdata->refcount, cifs_writedata_release);
			continue;
		}

		wdata->sync_mode = wbc->sync_mode;
		wdata->nr_pages = nr_pages;
		wdata->offset = FUNC20(wdata->pages[0]);
		wdata->pagesz = PAGE_CACHE_SIZE;
		wdata->tailsz =
			FUNC18(FUNC14(mapping->host) -
			    FUNC20(wdata->pages[nr_pages - 1]),
			    (loff_t)PAGE_CACHE_SIZE);
		wdata->bytes = ((nr_pages - 1) * PAGE_CACHE_SIZE) +
					wdata->tailsz;

		do {
			if (wdata->cfile != NULL)
				FUNC6(wdata->cfile);
			wdata->cfile = FUNC12(FUNC0(mapping->host),
							  false);
			if (!wdata->cfile) {
				FUNC5(1, "No writable handles for inode");
				rc = -EBADF;
				break;
			}
			wdata->pid = wdata->cfile->pid;
			rc = FUNC7(wdata);
		} while (wbc->sync_mode == WB_SYNC_ALL && rc == -EAGAIN);

		for (i = 0; i < nr_pages; ++i)
			FUNC25(wdata->pages[i]);

		/* send failure -- clean up the mess */
		if (rc != 0) {
			for (i = 0; i < nr_pages; ++i) {
				if (rc == -EAGAIN)
					FUNC21(wbc,
							   wdata->pages[i]);
				else
					FUNC3(wdata->pages[i]);
				FUNC10(wdata->pages[i]);
				FUNC19(wdata->pages[i]);
			}
			if (rc != -EAGAIN)
				FUNC17(mapping, rc);
		}
		FUNC15(&wdata->refcount, cifs_writedata_release);

		wbc->nr_to_write -= nr_pages;
		if (wbc->nr_to_write <= 0)
			done = true;

		index = next;
	}

	if (!scanned && !done) {
		/*
		 * We hit the last page and there is more work to be done: wrap
		 * back to the start of the file
		 */
		scanned = true;
		index = 0;
		goto retry;
	}

	if (wbc->range_cyclic || (range_whole && wbc->nr_to_write > 0))
		mapping->writeback_index = index;

	return rc;
}