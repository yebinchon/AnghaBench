#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page {struct address_space* mapping; int /*<<< orphan*/  index; } ;
struct address_space {int /*<<< orphan*/  tree_lock; int /*<<< orphan*/  nrpages; int /*<<< orphan*/  page_tree; } ;
typedef  int /*<<< orphan*/  pgoff_t ;
typedef  int gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int GFP_RECLAIM_MASK ; 
 int /*<<< orphan*/  NR_FILE_PAGES ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int __GFP_HIGHMEM ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (struct page*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct page*) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(struct page *page, struct address_space *mapping,
		pgoff_t offset, gfp_t gfp_mask)
{
	int error;

	FUNC2(!FUNC0(page));
	FUNC2(FUNC1(page));

	error = FUNC5(page, current->mm,
					gfp_mask & GFP_RECLAIM_MASK);
	if (error)
		goto out;

	error = FUNC10(gfp_mask & ~__GFP_HIGHMEM);
	if (error == 0) {
		FUNC7(page);
		page->mapping = mapping;
		page->index = offset;

		FUNC12(&mapping->tree_lock);
		error = FUNC9(&mapping->page_tree, offset, page);
		if (FUNC4(!error)) {
			mapping->nrpages++;
			FUNC3(page, NR_FILE_PAGES);
			FUNC13(&mapping->tree_lock);
		} else {
			page->mapping = NULL;
			/* Leave page->index set: truncation relies upon it */
			FUNC13(&mapping->tree_lock);
			FUNC6(page);
			FUNC8(page);
		}
		FUNC11();
	} else
		FUNC6(page);
out:
	return error;
}