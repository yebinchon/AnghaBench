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
 int FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int) ; 
 unsigned long FUNC3 (struct page*) ; 
 struct page* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,unsigned long) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static bool FUNC10(struct page *page)
{
	/*
	 * This takes care of get_page() if run on a tail page
	 * returned by one of the get_user_pages/follow_page variants.
	 * get_user_pages/follow_page itself doesn't need the compound
	 * lock because it runs __get_page_tail_foll() under the
	 * proper PT lock that already serializes against
	 * split_huge_page().
	 */
	unsigned long flags;
	bool got = false;
	struct page *page_head = FUNC4(page);

	if (FUNC7(page != page_head && FUNC6(page_head))) {

		/* Ref to put_compound_page() comment. */
		if (FUNC0(page_head)) {
			if (FUNC7(FUNC1(page))) {
				FUNC2(page, false);
				return true;
			} else {
				FUNC8(page_head);
				return false;
			}
		}

		/*
		 * page_head wasn't a dangling pointer but it
		 * may not be a head page anymore by the time
		 * we obtain the lock. That is ok as long as it
		 * can't be freed from under us.
		 */
		flags = FUNC3(page_head);
		/* here __split_huge_page_refcount won't run anymore */
		if (FUNC7(FUNC1(page))) {
			FUNC2(page, false);
			got = true;
		}
		FUNC5(page_head, flags);
		if (FUNC9(!got))
			FUNC8(page_head);
	}
	return got;
}