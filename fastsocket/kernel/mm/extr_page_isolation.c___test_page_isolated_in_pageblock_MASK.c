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
 scalar_t__ MIGRATE_ISOLATE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 struct page* FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

__attribute__((used)) static int
FUNC6(unsigned long pfn, unsigned long end_pfn)
{
	struct page *page;

	while (pfn < end_pfn) {
		if (!FUNC5(pfn)) {
			pfn++;
			continue;
		}
		page = FUNC4(pfn);
		if (FUNC0(page))
			pfn += 1 << FUNC2(page);
		else if (FUNC1(page) == 0 &&
				FUNC3(page) == MIGRATE_ISOLATE)
			pfn += 1;
		else
			break;
	}
	if (pfn < end_pfn)
		return 0;
	return 1;
}