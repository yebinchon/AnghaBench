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
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

__attribute__((used)) static void FUNC9(struct page *page, int err)
{
	if (!page)
		return;

	if (FUNC4(FUNC7(page)) && !FUNC1(page)) {
		/*
		 * For b-tree node pages, this function may be called twice
		 * or more because they might be split in a segment.
		 */
		if (FUNC0(page)) {
			/*
			 * For pages holding split b-tree node buffers, dirty
			 * flag on the buffers may be cleared discretely.
			 * In that case, the page is once redirtied for
			 * remaining buffers, and it must be cancelled if
			 * all the buffers get cleaned later.
			 */
			FUNC5(page);
			if (FUNC6(page))
				FUNC2(page);
			FUNC8(page);
		}
		return;
	}

	FUNC3(page, err);
}