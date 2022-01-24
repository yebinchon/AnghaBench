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
struct page {int flags; int /*<<< orphan*/  _count; int /*<<< orphan*/ * mapping; } ;

/* Variables and functions */
 int PAGE_FLAGS_CHECK_AT_FREE ; 
 int PAGE_FLAGS_CHECK_AT_PREP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 int FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static inline int FUNC5(struct page *page)
{
	if (FUNC4(FUNC3(page) |
		(page->mapping != NULL)  |
		(FUNC0(&page->_count) != 0) |
		(page->flags & PAGE_FLAGS_CHECK_AT_FREE) |
		(FUNC2(page)))) {
		FUNC1(page);
		return 1;
	}
	if (page->flags & PAGE_FLAGS_CHECK_AT_PREP)
		page->flags &= ~PAGE_FLAGS_CHECK_AT_PREP;
	return 0;
}