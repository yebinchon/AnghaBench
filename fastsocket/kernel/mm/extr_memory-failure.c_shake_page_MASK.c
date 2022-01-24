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
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct page*) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int) ; 

void FUNC7(struct page *p, int access)
{
	if (!FUNC1(p)) {
		FUNC4();
		if (FUNC0(p))
			return;
		FUNC2();
		if (FUNC0(p) || FUNC3(p))
			return;
	}

	/*
	 * Only call shrink_slab here (which would also shrink other caches) if
	 * access is not potentially fatal.
	 */
	if (access) {
		int nr;
		do {
			nr = FUNC6(1000, GFP_KERNEL, 1000);
			if (FUNC5(p) == 1)
				break;
		} while (nr > 10);
	}
}