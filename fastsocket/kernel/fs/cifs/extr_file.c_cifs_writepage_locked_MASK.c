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
struct writeback_control {scalar_t__ sync_mode; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 scalar_t__ WB_SYNC_ALL ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int FUNC6 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct writeback_control*,struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 

__attribute__((used)) static int
FUNC12(struct page *page, struct writeback_control *wbc)
{
	int rc;
	int xid;

	xid = FUNC1();
/* BB add check for wbc flags */
	FUNC8(page);
	if (!FUNC2(page))
		FUNC5(1, "ppw - page not up to date");

	/*
	 * Set the "writeback" flag, and clear "dirty" in the radix tree.
	 *
	 * A writepage() implementation always needs to do either this,
	 * or re-dirty the page with "redirty_page_for_writepage()" in
	 * the case of a failure.
	 *
	 * Just unlocking the page will cause the radix tree tag-bits
	 * to fail to update with the state of the page correctly.
	 */
	FUNC11(page);
retry_write:
	rc = FUNC6(page, 0, PAGE_CACHE_SIZE);
	if (rc == -EAGAIN && wbc->sync_mode == WB_SYNC_ALL)
		goto retry_write;
	else if (rc == -EAGAIN)
		FUNC10(wbc, page);
	else if (rc != 0)
		FUNC3(page);
	else
		FUNC4(page);
	FUNC7(page);
	FUNC9(page);
	FUNC0(xid);
	return rc;
}