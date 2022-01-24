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
 int /*<<< orphan*/  free_compound_page ; 
 int /*<<< orphan*/  FUNC2 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int /*<<< orphan*/ ) ; 

void FUNC5(struct page *page, unsigned long order)
{
	int i;
	int nr_pages = 1 << order;

	FUNC3(page, free_compound_page);
	FUNC2(page, order);
	FUNC0(page);
	for (i = 1; i < nr_pages; i++) {
		struct page *p = page + i;
		FUNC1(p);
		FUNC4(p, 0);
		p->first_page = page;
	}
}