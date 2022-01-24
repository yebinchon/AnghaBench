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
 int /*<<< orphan*/  NR_WRITEBACK ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

__attribute__((used)) static void FUNC9(struct page *page, int err)
{
	if (!err) {
		if (!FUNC7(page))
			FUNC3(page);
		FUNC0(page);
	} else {
		FUNC3(page);
		FUNC1(page);
	}

	if (FUNC4(FUNC8(page))) {
		if (FUNC2(page))
			FUNC5(page, NR_WRITEBACK);
	} else
		FUNC6(page);
}