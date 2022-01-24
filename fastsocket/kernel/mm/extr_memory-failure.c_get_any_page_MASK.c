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
struct page {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct page*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int) ; 

__attribute__((used)) static int FUNC6(struct page *page, unsigned long pfn, int flags)
{
	int ret = FUNC2(page, pfn, flags);

	if (ret == 1 && !FUNC0(page) && !FUNC1(page)) {
		/*
		 * Try to free it.
		 */
		FUNC4(page);
		FUNC5(page, 1);

		/*
		 * Did it turn free?
		 */
		ret = FUNC2(page, pfn, 0);
		if (!FUNC1(page)) {
			FUNC3("soft_offline: %#lx: unknown non LRU page type %lx\n",
				pfn, page->flags);
			return -EIO;
		}
	}
	return ret;
}