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
 struct page* FUNC2 (struct page*,struct page*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct page *page, unsigned long order)
{
	int i;
	int nr_pages = 1 << order;
	struct page *p = page + 1;

	/* we rely on prep_new_huge_page to set the destructor */
	FUNC3(page, order);
	FUNC0(page);
	for (i = 1; i < nr_pages; i++, p = FUNC2(p, page, i)) {
		FUNC1(p);
		FUNC4(p, 0);
		p->first_page = page;
	}
}