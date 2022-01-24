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
 int DELAYED ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int RECOVERED ; 
 struct page* FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 

__attribute__((used)) static int FUNC4(struct page *p, unsigned long pfn)
{
	int res = 0;
	struct page *hpage = FUNC1(p);
	/*
	 * We can safely recover from error on free or reserved (i.e.
	 * not in-use) hugepage by dequeuing it from freelist.
	 * To check whether a hugepage is in-use or not, we can't use
	 * page->lru because it can be used in other hugepage operations,
	 * such as __unmap_hugepage_range() and gather_surplus_pages().
	 * So instead we use page_mapping() and PageAnon().
	 * We assume that this function is called with page lock held,
	 * so there is no race between isolation and mapping/unmapping.
	 */
	if (!(FUNC3(hpage) || FUNC0(hpage))) {
		res = FUNC2(hpage);
		if (!res)
			return RECOVERED;
	}
	return DELAYED;
}