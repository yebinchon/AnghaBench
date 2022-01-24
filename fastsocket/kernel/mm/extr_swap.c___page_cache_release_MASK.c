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
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct zone*,struct page*) ; 
 struct zone* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct page *page)
{
	if (FUNC0(page)) {
		unsigned long flags;
		struct zone *zone = FUNC4(page);

		FUNC5(&zone->lru_lock, flags);
		FUNC1(!FUNC0(page));
		FUNC2(page);
		FUNC3(zone, page);
		FUNC6(&zone->lru_lock, flags);
	}
}