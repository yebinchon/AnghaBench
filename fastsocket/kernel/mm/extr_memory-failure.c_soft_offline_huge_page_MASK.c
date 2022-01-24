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
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 struct page* FUNC3 (struct page*) ; 
 int FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  new_page ; 
 int /*<<< orphan*/  num_poisoned_pages ; 
 unsigned long FUNC9 (struct page*) ; 
 int /*<<< orphan*/  pagelist ; 
 int /*<<< orphan*/  FUNC10 (char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 

__attribute__((used)) static int FUNC14(struct page *page, int flags)
{
	int ret;
	unsigned long pfn = FUNC9(page);
	struct page *hpage = FUNC3(page);
	FUNC0(pagelist);

	/*
	 * This double-check of PageHWPoison is to avoid the race with
	 * memory_failure(). See also comment in __soft_offline_page().
	 */
	FUNC7(hpage);
	if (FUNC1(hpage)) {
		FUNC13(hpage);
		FUNC11(hpage);
		FUNC10("soft offline: %#lx hugepage already poisoned\n", pfn);
		return -EBUSY;
	}
	FUNC13(hpage);

	/* Keep page count to indicate a given hugepage is isolated. */

	FUNC6(&hpage->lru, &pagelist);
	ret = FUNC8(&pagelist, new_page, MPOL_MF_MOVE_ALL, false,
				MIGRATE_SYNC);
	if (ret) {
		FUNC10("soft offline: %#lx: migration failed %d, type %lx\n",
			pfn, ret, page->flags);
		if (ret > 0)
			ret = -EIO;
	} else {
		FUNC12(hpage);
		FUNC5(hpage);
		FUNC2(1 << FUNC4(hpage),
				&num_poisoned_pages);
	}
	return ret;
}