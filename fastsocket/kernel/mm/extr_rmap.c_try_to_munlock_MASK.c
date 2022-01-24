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
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  TTU_MUNLOCK ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct page*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct page*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct page*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct page *page)
{
	FUNC4(!FUNC3(page) || FUNC2(page));

	if (FUNC8(FUNC1(page)))
		return FUNC7(page, TTU_MUNLOCK);
	else if (FUNC0(page))
		return FUNC5(page, TTU_MUNLOCK);
	else
		return FUNC6(page, TTU_MUNLOCK);
}