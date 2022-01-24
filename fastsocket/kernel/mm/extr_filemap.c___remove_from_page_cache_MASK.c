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
struct page {struct address_space* mapping; int /*<<< orphan*/  index; } ;
struct address_space {int /*<<< orphan*/  backing_dev_info; int /*<<< orphan*/  nrpages; int /*<<< orphan*/  page_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDI_RECLAIMABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NR_FILE_DIRTY ; 
 int /*<<< orphan*/  NR_FILE_PAGES ; 
 int /*<<< orphan*/  NR_SHMEM ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC9(struct page *page)
{
	struct address_space *mapping = page->mapping;

	FUNC8(&mapping->page_tree, page->index);
	page->mapping = NULL;
	/* Leave page->index set: truncation lookup relies upon it */
	mapping->nrpages--;
	FUNC3(page, NR_FILE_PAGES);
	if (FUNC2(page))
		FUNC3(page, NR_SHMEM);
	FUNC0(FUNC7(page));

	/*
	 * Some filesystems seem to re-dirty the page even after
	 * the VM has canceled the dirty bit (eg ext3 journaling).
	 *
	 * Fix it up by doing a final dirty accounting check after
	 * having removed the page entirely.
	 */
	if (FUNC1(page) && FUNC6(mapping)) {
		FUNC5(page, NR_FILE_DIRTY);
		FUNC4(mapping->backing_dev_info, BDI_RECLAIMABLE);
	}
}