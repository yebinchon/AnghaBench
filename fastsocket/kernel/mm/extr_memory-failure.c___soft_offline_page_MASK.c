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
struct page {int /*<<< orphan*/  flags; int /*<<< orphan*/  lru; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIGRATE_SYNC ; 
 int /*<<< orphan*/  MPOL_MF_MOVE_ALL ; 
 scalar_t__ NR_ISOLATED_ANON ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,scalar_t__) ; 
 int FUNC5 (struct page*) ; 
 int FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  new_page ; 
 int /*<<< orphan*/  num_poisoned_pages ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 scalar_t__ FUNC11 (struct page*) ; 
 unsigned long FUNC12 (struct page*) ; 
 int /*<<< orphan*/  pagelist ; 
 int /*<<< orphan*/  FUNC13 (char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 

__attribute__((used)) static int FUNC17(struct page *page, int flags)
{
	int ret;
	unsigned long pfn = FUNC12(page);

	/*
	 * Check PageHWPoison again inside page lock because PageHWPoison
	 * is set by memory_failure() outside page lock. Note that
	 * memory_failure() also double-checks PageHWPoison inside page lock,
	 * so there's no race between soft_offline_page() and memory_failure().
	 */
	FUNC8(page);
	FUNC16(page);
	if (FUNC1(page)) {
		FUNC15(page);
		FUNC14(page);
		FUNC13("soft offline: %#lx page already poisoned\n", pfn);
		return -EBUSY;
	}
	/*
	 * Try to invalidate first. This should work for
	 * non dirty unmapped page cache pages.
	 */
	ret = FUNC5(page);
	FUNC15(page);
	/*
	 * RED-PEN would be better to keep it isolated here, but we
	 * would need to fix isolation locking first.
	 */
	if (ret == 1) {
		FUNC14(page);
		FUNC13("soft_offline: %#lx: invalidated\n", pfn);
		FUNC2(page);
		FUNC3(&num_poisoned_pages);
		return 0;
	}

	/*
	 * Simple invalidation didn't work.
	 * Try to migrate to a new page instead. migrate.c
	 * handles a large number of cases for us.
	 */
	ret = FUNC6(page);
	/*
	 * Drop page reference which is came from get_any_page()
	 * successful isolate_lru_page() already took another one.
	 */
	FUNC14(page);
	if (!ret) {
		FUNC0(pagelist);
		FUNC4(page, NR_ISOLATED_ANON +
					    FUNC11(page));
		FUNC7(&page->lru, &pagelist);
		ret = FUNC9(&pagelist, new_page, MPOL_MF_MOVE_ALL,
							false, MIGRATE_SYNC);
		if (ret) {
			FUNC13("soft offline: %#lx: migration failed %d, type %lx\n",
				pfn, ret, page->flags);
			if (ret > 0)
				ret = -EIO;
		} else {
			FUNC2(page);
			FUNC3(&num_poisoned_pages);
		}
	} else {
		FUNC13("soft offline: %#lx: isolation failed: %d, page count %d, type %lx\n",
			pfn, ret, FUNC10(page), page->flags);
	}
	return ret;
}