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
typedef  int /*<<< orphan*/  start_pfn ;
typedef  int /*<<< orphan*/  end_pfn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 struct page* FUNC1 (unsigned long,int) ; 
 int pageblock_nr_pages ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(unsigned long start_pfn, unsigned long end_pfn)
{
	unsigned long pfn;
	unsigned long undo_pfn;
	struct page *page;

	FUNC0((start_pfn) & (pageblock_nr_pages - 1));
	FUNC0((end_pfn) & (pageblock_nr_pages - 1));

	for (pfn = start_pfn;
	     pfn < end_pfn;
	     pfn += pageblock_nr_pages) {
		page = FUNC1(pfn, pageblock_nr_pages);
		if (page && FUNC3(page)) {
			undo_pfn = pfn;
			goto undo;
		}
	}
	return 0;
undo:
	for (pfn = start_pfn;
	     pfn < undo_pfn;
	     pfn += pageblock_nr_pages)
		FUNC4(FUNC2(pfn));

	return -EBUSY;
}