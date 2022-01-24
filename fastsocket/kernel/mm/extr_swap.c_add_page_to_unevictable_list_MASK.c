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
struct zone {int /*<<< orphan*/  lru_lock; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LRU_UNEVICTABLE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct zone*,struct page*,int /*<<< orphan*/ ) ; 
 struct zone* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct page *page)
{
	struct zone *zone = FUNC3(page);

	FUNC4(&zone->lru_lock);
	FUNC1(page);
	FUNC0(page);
	FUNC2(zone, page, LRU_UNEVICTABLE);
	FUNC5(&zone->lru_lock);
}