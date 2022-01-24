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
struct page {int /*<<< orphan*/ * mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (struct page*) ; 
 scalar_t__ FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 scalar_t__ FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 int /*<<< orphan*/  FUNC20 (struct page*) ; 
 int /*<<< orphan*/  FUNC21 (struct page*,struct page*) ; 
 int /*<<< orphan*/  FUNC22 (struct page*,struct page*) ; 
 int /*<<< orphan*/  FUNC23 (struct page*) ; 
 int /*<<< orphan*/  FUNC24 (struct page*,struct page*) ; 
 int /*<<< orphan*/  FUNC25 (struct page*,struct page*) ; 
 int /*<<< orphan*/  FUNC26 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct page*,struct page*) ; 

void FUNC28(struct page *newpage, struct page *page)
{
	if (FUNC5(page))
		FUNC22(newpage, page);
	else
		FUNC21(newpage, page);

	if (FUNC4(page))
		FUNC13(newpage);
	if (FUNC7(page))
		FUNC15(newpage);
	if (FUNC9(page))
		FUNC16(newpage);
	if (FUNC17(page)) {
		FUNC18(FUNC8(page));
		FUNC11(newpage);
	} else
		FUNC27(newpage, page);
	if (FUNC2(page))
		FUNC12(newpage);
	if (FUNC6(page))
		FUNC14(newpage);

	if (FUNC3(page)) {
		FUNC20(page);
		/*
		 * Want to mark the page and the radix tree as dirty, and
		 * redo the accounting that clear_page_dirty_for_io undid,
		 * but we can't use set_page_dirty because that function
		 * is actually a signal that all of the page has become dirty.
		 * Wheras only part of our page may be dirty.
		 */
		FUNC19(newpage);
 	}

	FUNC25(newpage, page);
	FUNC24(newpage, page);
	/*
	 * Please do not reorder this without considering how mm/ksm.c's
	 * get_ksm_page() depends upon ksm_migrate_page() and PageSwapCache().
	 */
	FUNC1(page);
	FUNC0(page);
	FUNC26(page, 0);
	page->mapping = NULL;

	/*
	 * If any waiters have accumulated on the new page then
	 * wake them up.
	 */
	if (FUNC10(newpage))
		FUNC23(newpage);
}