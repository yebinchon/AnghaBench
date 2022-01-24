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
struct page {scalar_t__ index; struct address_space* mapping; } ;
struct address_space {int dummy; } ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct page* FUNC1 (struct address_space*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

struct page *FUNC7(struct address_space *mapping, pgoff_t offset)
{
	struct page *page;

repeat:
	page = FUNC1(mapping, offset);
	if (page && !FUNC4(page)) {
		FUNC2(page);
		/* Has the page been truncated? */
		if (FUNC5(page->mapping != mapping)) {
			FUNC6(page);
			FUNC3(page);
			goto repeat;
		}
		FUNC0(page->index != offset);
	}
	return page;
}