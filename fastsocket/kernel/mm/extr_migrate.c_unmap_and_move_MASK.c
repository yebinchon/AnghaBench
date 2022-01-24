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
struct page {int /*<<< orphan*/  lru; } ;
typedef  struct page* (* new_page_t ) (struct page*,unsigned long,int**) ;
typedef  enum migrate_mode { ____Placeholder_migrate_mode } migrate_mode ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 scalar_t__ NR_ISOLATED_ANON ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int FUNC1 (struct page*,struct page*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(new_page_t get_new_page, unsigned long private,
			struct page *page, int force, bool offlining,
			enum migrate_mode mode)
{
	int rc = 0;
	int *result = NULL;
	struct page *newpage = get_new_page(page, private, &result);

	if (!newpage)
		return -ENOMEM;

	if (FUNC4(page) == 1) {
		/* page was freed from under us. So we are done. */
		goto out;
	}

	if (FUNC9(FUNC0(page)))
		if (FUNC9(FUNC8(page)))
			goto out;

	rc = FUNC1(page, newpage, force, offlining, mode);
out:
	if (rc != -EAGAIN) {
 		/*
 		 * A page that has been migrated has all references
 		 * removed and will be freed. A page that has not been
 		 * migrated will have kepts its references and be
 		 * restored.
 		 */
 		FUNC3(&page->lru);
		FUNC2(page, NR_ISOLATED_ANON +
				FUNC5(page));
		FUNC7(page);
	}
	/*
	 * Move the new page to the LRU. If migration was not successful
	 * then this will free the page.
	 */
	FUNC7(newpage);
	if (result) {
		if (rc)
			*result = rc;
		else
			*result = FUNC6(newpage);
	}
	return rc;
}