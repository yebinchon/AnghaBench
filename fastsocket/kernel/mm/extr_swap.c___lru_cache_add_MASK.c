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
struct pagevec {int dummy; } ;
struct page {int dummy; } ;
typedef  enum lru_list { ____Placeholder_lru_list } lru_list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pagevec*,int) ; 
 struct pagevec* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lru_add_pvecs ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct pagevec*,struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct page *page, enum lru_list lru)
{
	struct pagevec *pvec = &FUNC1(lru_add_pvecs)[lru];

	FUNC2(page);
	if (!FUNC3(pvec, page))
		FUNC0(pvec, lru);
	FUNC4(lru_add_pvecs);
}