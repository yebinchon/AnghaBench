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
 int EBUSY ; 
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct page* FUNC8 (struct page*) ; 
 int FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int FUNC11 (struct page*,unsigned long,int) ; 
 int /*<<< orphan*/  num_poisoned_pages ; 
 unsigned long FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int FUNC15 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 

int FUNC18(struct page *page, int flags)
{
	int ret;
	unsigned long pfn = FUNC12(page);
	struct page *hpage = FUNC8(page);

	if (FUNC1(page)) {
		FUNC13("soft offline: %#lx page already poisoned\n", pfn);
		return -EBUSY;
	}
	if (!FUNC2(page) && FUNC3(hpage)) {
		if (FUNC0(hpage) && FUNC17(FUNC16(hpage))) {
			FUNC13("soft offline: %#lx: failed to split THP\n",
				pfn);
			return -EBUSY;
		}
	}

	ret = FUNC11(page, pfn, flags);
	if (ret < 0)
		return ret;
	if (ret) { /* for in-use pages */
		if (FUNC2(page))
			ret = FUNC15(page, flags);
		else
			ret = FUNC5(page, flags);
	} else { /* for free pages */
		if (FUNC2(page)) {
			FUNC14(hpage);
			FUNC10(hpage);
			FUNC6(1 << FUNC9(hpage),
					&num_poisoned_pages);
		} else {
			FUNC4(page);
			FUNC7(&num_poisoned_pages);
		}
	}
	return ret;
}