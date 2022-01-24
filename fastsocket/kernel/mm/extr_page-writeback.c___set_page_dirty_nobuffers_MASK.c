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
struct address_space {scalar_t__ host; int /*<<< orphan*/  tree_lock; int /*<<< orphan*/  page_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  I_DIRTY_PAGES ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,struct address_space*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 struct address_space* FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct page *page)
{
	if (!FUNC3(page)) {
		struct address_space *mapping = FUNC8(page);
		struct address_space *mapping2;

		if (!mapping)
			return 1;

		FUNC10(&mapping->tree_lock);
		mapping2 = FUNC8(page);
		if (mapping2) { /* Race with truncate? */
			FUNC0(mapping2 != mapping);
			FUNC4(!FUNC1(page) && !FUNC2(page));
			FUNC6(page, mapping);
			FUNC9(&mapping->page_tree,
				FUNC7(page), PAGECACHE_TAG_DIRTY);
		}
		FUNC11(&mapping->tree_lock);
		if (mapping->host) {
			/* !PageAnon && !swapper_space */
			FUNC5(mapping->host, I_DIRTY_PAGES);
		}
		return 1;
	}
	return 0;
}