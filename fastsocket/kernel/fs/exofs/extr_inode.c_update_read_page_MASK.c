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
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int EFAULT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

__attribute__((used)) static int FUNC6(struct page *page, int ret)
{
	if (ret == 0) {
		/* Everything is OK */
		FUNC4(page);
		if (FUNC2(page))
			FUNC0(page);
	} else if (ret == -EFAULT) {
		/* In this case we were trying to read something that wasn't on
		 * disk yet - return a page full of zeroes.  This should be OK,
		 * because the object should be empty (if there was a write
		 * before this read, the read would be waiting with the page
		 * locked */
		FUNC5(page);

		FUNC4(page);
		if (FUNC2(page))
			FUNC0(page);
		ret = 0; /* recovered error */
		FUNC1("recovered read error\n");
	} else /* Error */
		FUNC3(page);

	return ret;
}