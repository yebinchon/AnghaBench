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
struct page {int /*<<< orphan*/  flags; struct address_space* mapping; } ;
struct address_space {int /*<<< orphan*/  tree_lock; int /*<<< orphan*/  page_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 int /*<<< orphan*/  PG_dirty ; 
 int FUNC0 (struct page*) ; 
 int FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7(struct page *page)
{
	struct address_space *mapping = page->mapping;

	if (mapping) {
		FUNC4(&mapping->tree_lock);
		if (FUNC6(PG_dirty, &page->flags)) {
			FUNC3(&mapping->page_tree,
					     FUNC2(page),
					     PAGECACHE_TAG_DIRTY);
			FUNC5(&mapping->tree_lock);
			return FUNC1(page);
		}
		FUNC5(&mapping->tree_lock);
		return 0;
	}
	return FUNC0(page);
}