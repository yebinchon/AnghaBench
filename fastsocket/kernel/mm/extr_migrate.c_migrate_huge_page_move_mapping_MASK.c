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
struct address_space {int /*<<< orphan*/  tree_lock; int /*<<< orphan*/  page_tree; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int) ; 
 int FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int) ; 
 scalar_t__ FUNC7 (void**) ; 
 void** FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void**,struct page*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct address_space *mapping,
				   struct page *newpage, struct page *page)
{
	int expected_count;
	void **pslot;

	if (!mapping) {
		if (FUNC2(page) != 1)
			return -EAGAIN;
		return 0;
	}

	FUNC10(&mapping->tree_lock);

	pslot = FUNC8(&mapping->page_tree,
					FUNC5(page));

	expected_count = 2 + FUNC4(page);
	if (FUNC2(page) != expected_count ||
	    (struct page *)FUNC7(pslot) != page) {
		FUNC11(&mapping->tree_lock);
		return -EAGAIN;
	}

	if (!FUNC3(page, expected_count)) {
		FUNC11(&mapping->tree_lock);
		return -EAGAIN;
	}

	FUNC1(newpage);

	FUNC9(pslot, newpage);

	FUNC6(page, expected_count);

	FUNC0(page);

	FUNC11(&mapping->tree_lock);
	return 0;
}