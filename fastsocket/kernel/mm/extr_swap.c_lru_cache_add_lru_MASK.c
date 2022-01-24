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
typedef  enum lru_list { ____Placeholder_lru_list } lru_list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int) ; 

void FUNC7(struct page *page, enum lru_list lru)
{
	if (FUNC2(page)) {
		FUNC5(FUNC4(page));
		FUNC0(page);
	} else if (FUNC4(page)) {
		FUNC5(FUNC2(page));
		FUNC1(page);
	}

	FUNC5(FUNC3(page) || FUNC2(page) || FUNC4(page));
	FUNC6(page, lru);
}