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
struct page {struct page* first_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 unsigned long FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct page *page, unsigned long order)
{
	int i;
	int nr_pages = 1 << order;
	int bad = 0;

	if (FUNC6(FUNC5(page) != order) ||
	    FUNC6(!FUNC0(page))) {
		FUNC4(page);
		bad++;
	}

	FUNC2(page);

	for (i = 1; i < nr_pages; i++) {
		struct page *p = page + i;

		if (FUNC6(!FUNC1(p) || (p->first_page != page))) {
			FUNC4(page);
			bad++;
		}
		FUNC3(p);
	}

	return bad;
}