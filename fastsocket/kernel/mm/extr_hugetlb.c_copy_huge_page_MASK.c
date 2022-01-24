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
struct hstate {int dummy; } ;

/* Variables and functions */
 int MAX_ORDER_NR_PAGES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct page*,struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,struct page*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct hstate* FUNC4 (struct page*) ; 
 int FUNC5 (struct hstate*) ; 
 scalar_t__ FUNC6 (int) ; 

void FUNC7(struct page *dst, struct page *src)
{
	int i;
	struct hstate *h = FUNC4(src);

	if (FUNC6(FUNC5(h) > MAX_ORDER_NR_PAGES)) {
		FUNC1(dst, src);
		return;
	}

	FUNC3();
	for (i = 0; i < FUNC5(h); i++) {
		FUNC0();
		FUNC2(dst + i, src + i);
	}
}