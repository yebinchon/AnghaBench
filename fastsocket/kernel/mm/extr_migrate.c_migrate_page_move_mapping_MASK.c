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
struct page {int dummy; } ;
struct buffer_head {int dummy; } ;
struct address_space {int /*<<< orphan*/  tree_lock; int /*<<< orphan*/  page_tree; } ;
typedef  enum migrate_mode { ____Placeholder_migrate_mode } migrate_mode ;

/* Variables and functions */
 int EAGAIN ; 
 int MIGRATE_ASYNC ; 
 int /*<<< orphan*/  NR_FILE_PAGES ; 
 int /*<<< orphan*/  NR_SHMEM ; 
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,int) ; 
 int FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*,int) ; 
 scalar_t__ FUNC14 (void**) ; 
 void** FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (void**,struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct address_space *mapping,
		struct page *newpage, struct page *page,
		struct buffer_head *head, enum migrate_mode mode)
{
	int expected_count;
	void **pslot;

	if (!mapping) {
		/* Anonymous page without mapping */
		if (FUNC8(page) != 1)
			return -EAGAIN;
		return 0;
	}

	FUNC18(&mapping->tree_lock);

	pslot = FUNC15(&mapping->page_tree,
 					FUNC11(page));

	expected_count = 2 + FUNC10(page);
	if (FUNC8(page) != expected_count ||
			(struct page *)FUNC14(pslot) != page) {
		FUNC19(&mapping->tree_lock);
		return -EAGAIN;
	}

	if (!FUNC9(page, expected_count)) {
		FUNC19(&mapping->tree_lock);
		return -EAGAIN;
	}

	/*
	 * In the async migration case of moving a page with buffers, lock the
	 * buffers using trylock before the mapping is moved. If the mapping
	 * was moved, we later failed to lock the buffers and could not move
	 * the mapping back due to an elevated page count, we would have to
	 * block waiting on other references to be dropped.
	 */
	if (mode == MIGRATE_ASYNC && head &&
			!FUNC6(head, mode)) {
		FUNC13(page, expected_count);
		FUNC19(&mapping->tree_lock);
		return -EAGAIN;
	}

	/*
	 * Now we know that no one else is looking at the page.
	 */
	FUNC7(newpage);	/* add cache reference */
	if (FUNC1(page)) {
		FUNC2(newpage);
		FUNC17(newpage, FUNC12(page));
	}

	FUNC16(pslot, newpage);

	FUNC13(page, expected_count);
	/*
	 * Drop cache reference from old page.
	 * We know this isn't the last reference.
	 */
	FUNC5(page);

	/*
	 * If moved to a different zone then also account
	 * the page for that zone. Other VM counters will be
	 * taken care of when we establish references to the
	 * new page and drop references to the old page.
	 *
	 * Note that anonymous pages are accounted for
	 * via NR_FILE_PAGES and NR_ANON_PAGES if they
	 * are mapped to swap space.
	 */
	FUNC3(page, NR_FILE_PAGES);
	FUNC4(newpage, NR_FILE_PAGES);
	if (!FUNC1(page) && FUNC0(page)) {
		FUNC3(page, NR_SHMEM);
		FUNC4(newpage, NR_SHMEM);
	}
	FUNC19(&mapping->tree_lock);

	return 0;
}