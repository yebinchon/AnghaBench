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
struct scan_control {int gfp_mask; int /*<<< orphan*/  may_writepage; int /*<<< orphan*/  nr_scanned; int /*<<< orphan*/  may_unmap; } ;
struct pagevec {int dummy; } ;
struct page {int /*<<< orphan*/  lru; } ;
struct mem_cgroup_zone {scalar_t__ zone; } ;
struct list_head {int dummy; } ;
struct address_space {int dummy; } ;
typedef  enum pageout_io { ____Placeholder_pageout_io } pageout_io ;
typedef  enum page_references { ____Placeholder_page_references } page_references ;

/* Variables and functions */
 int DEF_PRIORITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PAGEOUT_IO_SYNC ; 
#define  PAGEREF_ACTIVATE 139 
#define  PAGEREF_KEEP 138 
#define  PAGEREF_RECLAIM 137 
#define  PAGEREF_RECLAIM_CLEAN 136 
#define  PAGE_ACTIVATE 135 
#define  PAGE_CLEAN 134 
#define  PAGE_KEEP 133 
#define  PAGE_SUCCESS 132 
 int /*<<< orphan*/  PGACTIVATE ; 
 int FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (struct page*) ; 
#define  SWAP_AGAIN 131 
#define  SWAP_FAIL 130 
#define  SWAP_MLOCK 129 
#define  SWAP_SUCCESS 128 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  TTU_UNMAP ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  ZONE_CONGESTED ; 
 int __GFP_FS ; 
 int __GFP_IO ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC13 (struct address_space*,struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 scalar_t__ FUNC18 (struct scan_control*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,struct list_head*) ; 
 struct page* FUNC23 (struct list_head*) ; 
 int FUNC24 (struct page*,struct mem_cgroup_zone*,struct scan_control*) ; 
 int FUNC25 (struct page*) ; 
 int /*<<< orphan*/  FUNC26 (struct page*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC27 (struct page*) ; 
 scalar_t__ FUNC28 (struct page*) ; 
 scalar_t__ FUNC29 (struct page*) ; 
 struct address_space* FUNC30 (struct page*) ; 
 scalar_t__ FUNC31 (struct page*) ; 
 int FUNC32 (struct page*,struct address_space*,int) ; 
 int /*<<< orphan*/  FUNC33 (struct pagevec*,struct page*) ; 
 scalar_t__ FUNC34 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC35 (struct pagevec*,int) ; 
 int /*<<< orphan*/  FUNC36 (struct pagevec*) ; 
 scalar_t__ FUNC37 (struct page*) ; 
 int /*<<< orphan*/  FUNC38 (struct page*) ; 
 int /*<<< orphan*/  ret_pages ; 
 int /*<<< orphan*/  FUNC39 (unsigned long) ; 
 int /*<<< orphan*/  FUNC40 (struct page*) ; 
 int /*<<< orphan*/  FUNC41 (struct page*,int) ; 
 int FUNC42 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (struct page*) ; 
 scalar_t__ FUNC44 (int) ; 
 int /*<<< orphan*/  FUNC45 (struct page*) ; 
 scalar_t__ FUNC46 () ; 
 int /*<<< orphan*/  FUNC47 (struct page*) ; 
 int /*<<< orphan*/  FUNC48 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC49(struct list_head *page_list,
					struct scan_control *sc,
					struct mem_cgroup_zone *mz,
					enum pageout_io sync_writeback,
					int priority,
					unsigned long *ret_nr_dirty,
					unsigned long *ret_nr_writeback)
{
	FUNC0(ret_pages);
	struct pagevec freed_pvec;
	int pgactivate = 0;
	unsigned long nr_dirty = 0;
	unsigned long nr_congested = 0;
	unsigned long nr_reclaimed = 0;
	unsigned long nr_writeback = 0;

	FUNC15();

	FUNC35(&freed_pvec, 1);
	while (!FUNC21(page_list)) {
		enum page_references references;
		struct address_space *mapping;
		struct page *page;
		int may_enter_fs;

		FUNC15();

		page = FUNC23(page_list);
		FUNC20(&page->lru);

		if (!FUNC43(page))
			goto keep;

		FUNC10(FUNC1(page));
		FUNC10(FUNC31(page) != mz->zone);

		sc->nr_scanned++;

		if (FUNC44(!FUNC26(page, NULL)))
			goto cull_mlocked;

		if (!sc->may_unmap && FUNC29(page))
			goto keep_locked;

		/* Double the slab pressure for mapped and swapcache pages */
		if (FUNC29(page) || FUNC5(page))
			sc->nr_scanned++;

		may_enter_fs = (sc->gfp_mask & __GFP_FS) ||
			(FUNC5(page) && (sc->gfp_mask & __GFP_IO));

		if (FUNC7(page)) {
			nr_writeback++;
			/*
			 * Synchronous reclaim cannot queue pages for
			 * writeback due to the possibility of stack overflow
			 * but if it encounters a page under writeback, wait
			 * for the IO to complete.
			 */
			if (sync_writeback == PAGEOUT_IO_SYNC && may_enter_fs)
				FUNC47(page);
			else
				goto keep_locked;
		}

		references = FUNC24(page, mz, sc);
		switch (references) {
		case PAGEREF_ACTIVATE:
			goto activate_locked;
		case PAGEREF_KEEP:
			goto keep_locked;
		case PAGEREF_RECLAIM:
		case PAGEREF_RECLAIM_CLEAN:
			; /* try to reclaim the page below */
		}

		/*
		 * Anonymous process memory has backing store?
		 * Try to allocate it some swap space here.
		 */
		if (FUNC2(page) && !FUNC5(page)) {
			if (!(sc->gfp_mask & __GFP_IO))
				goto keep_locked;
			if (!FUNC14(page))
				goto activate_locked;
			may_enter_fs = 1;
		}

		mapping = FUNC30(page);

		/*
		 * The page is mapped into the page tables of one or more
		 * processes. Try to unmap it here.
		 */
		if (FUNC29(page) && mapping) {
			switch (FUNC42(page, TTU_UNMAP)) {
			case SWAP_FAIL:
				goto activate_locked;
			case SWAP_AGAIN:
				goto keep_locked;
			case SWAP_MLOCK:
				goto cull_mlocked;
			case SWAP_SUCCESS:
				; /* try to free the page below */
			}
		}

		if (FUNC3(page)) {
			nr_dirty++;

			/*
			 * Only kswapd can writeback filesystem pages to
			 * avoid risk of stack overflow but do not writeback
			 * unless under significant pressure.
			 */
			if (FUNC28(page) &&
					(!FUNC17() || priority >= DEF_PRIORITY - 2)) {
				/*
				 * Immediately reclaim when written back.
				 * Similar in principal to deactivate_page()
				 * except we already have the page isolated
				 * and know it's dirty
				 */
				FUNC9(page);

				goto keep_locked;
			}

			if (references == PAGEREF_RECLAIM_CLEAN)
				goto keep_locked;
			if (!may_enter_fs)
				goto keep_locked;
			if (!sc->may_writepage)
				goto keep_locked;

			/* Page is dirty, try to write it out here */
			switch (FUNC32(page, mapping, sync_writeback)) {
			case PAGE_KEEP:
				nr_congested++;
				goto keep_locked;
			case PAGE_ACTIVATE:
				goto activate_locked;
			case PAGE_SUCCESS:
				if (FUNC7(page) || FUNC3(page))
					goto keep;
				/*
				 * A synchronous write - probably a ramdisk.  Go
				 * ahead and try to reclaim the page.
				 */
				if (!FUNC43(page))
					goto keep;
				if (FUNC3(page) || FUNC7(page))
					goto keep_locked;
				mapping = FUNC30(page);
			case PAGE_CLEAN:
				; /* try to free the page below */
			}
		}

		/*
		 * If the page has buffers, try to free the buffer mappings
		 * associated with this page. If we succeed we try to free
		 * the page as well.
		 *
		 * We do this even if the page is PageDirty().
		 * try_to_release_page() does not perform I/O, but it is
		 * possible for a page to have PageDirty set, but it is actually
		 * clean (all its buffers are clean).  This happens if the
		 * buffers were written out directly, with submit_bh(). ext3
		 * will do this, as well as the blockdev mapping.
		 * try_to_release_page() will discover that cleanness and will
		 * drop the buffers and mark the page clean - it can be freed.
		 *
		 * Rarely, pages can have buffers and no ->mapping.  These are
		 * the pages which were not successfully invalidated in
		 * truncate_complete_page().  We try to drop those buffers here
		 * and if that worked, and the page is no longer mapped into
		 * process address space (page_count == 1) it can be freed.
		 * Otherwise, leave the page on the LRU so it is swappable.
		 */
		if (FUNC27(page)) {
			if (!FUNC41(page, sc->gfp_mask))
				goto activate_locked;
			if (!mapping && FUNC25(page) == 1) {
				FUNC45(page);
				if (FUNC37(page))
					goto free_it;
				else {
					/*
					 * rare race with speculative reference.
					 * the speculative reference will free
					 * this page shortly, so we may
					 * increment nr_reclaimed here (and
					 * leave it off the LRU).
					 */
					nr_reclaimed++;
					continue;
				}
			}
		}

		if (!mapping || !FUNC13(mapping, page))
			goto keep_locked;

		/*
		 * At this point, we have no other references and there is
		 * no way to pick any more up (removed from LRU, removed
		 * from pagecache). Can use non-atomic bitops now (and
		 * we obviously don't have to worry about waking up a process
		 * waiting on the page lock, because there are no references.
		 */
		FUNC11(page);
free_it:
		nr_reclaimed++;
		if (!FUNC33(&freed_pvec, page)) {
			FUNC12(&freed_pvec);
			FUNC36(&freed_pvec);
		}
		continue;

cull_mlocked:
		if (FUNC5(page))
			FUNC40(page);
		FUNC45(page);
		FUNC38(page);
		continue;

activate_locked:
		/* Not a candidate for swapping, so reclaim swap space. */
		if (FUNC5(page) && FUNC46())
			FUNC40(page);
		FUNC10(FUNC1(page));
		FUNC8(page);
		pgactivate++;
keep_locked:
		FUNC45(page);
keep:
		FUNC19(&page->lru, &ret_pages);
		FUNC10(FUNC4(page) || FUNC6(page));
	}

	/*
	 * Tag a zone as congested if all the dirty pages encountered were
	 * backed by a congested BDI. In this case, reclaimers should just
	 * back off and wait for congestion to clear because further reclaim
	 * will encounter the same problem
	 */
	if (nr_dirty && nr_dirty == nr_congested && FUNC18(sc))
		FUNC48(mz->zone, ZONE_CONGESTED);

	FUNC22(&ret_pages, page_list);
	if (FUNC34(&freed_pvec))
		FUNC12(&freed_pvec);
	FUNC16(PGACTIVATE, pgactivate);
	FUNC39(nr_reclaimed);
        *ret_nr_dirty += nr_dirty;
        *ret_nr_writeback += nr_writeback;
	return nr_reclaimed;
}