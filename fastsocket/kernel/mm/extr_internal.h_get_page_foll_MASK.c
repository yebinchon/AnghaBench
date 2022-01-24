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
struct page {int /*<<< orphan*/  _count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC6(struct page *page)
{
	if (FUNC5(FUNC0(page)))
		/*
		 * This is safe only because
		 * __split_huge_page_refcount() can't run under
		 * get_page_foll() because we hold the proper PT lock.
		 */
		FUNC2(page, true);
	else {
		/*
		 * Getting a normal page or the head of a compound page
		 * requires to already have an elevated page->_count.
		 */
		FUNC1(FUNC4(&page->_count) <= 0);
		FUNC3(&page->_count);
	}
}