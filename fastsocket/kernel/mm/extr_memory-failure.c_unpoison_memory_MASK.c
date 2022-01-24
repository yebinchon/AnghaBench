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

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 struct page* FUNC5 (struct page*) ; 
 int FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  num_poisoned_pages ; 
 struct page* FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 

int FUNC14(unsigned long pfn)
{
	struct page *page;
	struct page *p;
	int freeit = 0;
	unsigned int nr_pages;

	if (!FUNC10(pfn))
		return -ENXIO;

	p = FUNC9(pfn);
	page = FUNC5(p);

	if (!FUNC0(p)) {
		FUNC11("MCE: Page was already unpoisoned %#lx\n", pfn);
		return 0;
	}

	nr_pages = 1 << FUNC6(page);

	if (!FUNC7(page)) {
		/*
		 * Since HWPoisoned hugepage should have non-zero refcount,
		 * race between memory failure and unpoison seems to happen.
		 * In such case unpoison fails and memory failure runs
		 * to the end.
		 */
		if (FUNC1(page)) {
			FUNC11("MCE: Memory failure is now running on free hugepage %#lx\n", pfn);
			return 0;
		}
		if (FUNC2(p))
			FUNC3(nr_pages, &num_poisoned_pages);
		FUNC11("MCE: Software-unpoisoned free page %#lx\n", pfn);
		return 0;
	}

	FUNC8(page);
	/*
	 * This test is racy because PG_hwpoison is set outside of page lock.
	 * That's acceptable because that won't trigger kernel panic. Instead,
	 * the PG_hwpoison page will be caught and isolated on the entrance to
	 * the free buddy page pool.
	 */
	if (FUNC2(page)) {
		FUNC11("MCE: Software-unpoisoned page %#lx\n", pfn);
		FUNC3(nr_pages, &num_poisoned_pages);
		freeit = 1;
		if (FUNC1(page))
			FUNC4(page);
	}
	FUNC13(page);

	FUNC12(page);
	if (freeit)
		FUNC12(page);

	return 0;
}