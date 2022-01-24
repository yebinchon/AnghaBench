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
struct zone {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 struct zone* FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (unsigned long) ; 
 struct page* FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 scalar_t__ FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (struct page*) ; 

__attribute__((used)) static struct page *FUNC10(struct zone *zone, unsigned long pfn)
{
	struct page *page;

	if (!FUNC7(pfn))
		return NULL;

	page = FUNC6(pfn);
	if (FUNC4(page) != zone)
		return NULL;

	FUNC0(FUNC1(page));

	if (FUNC8(page) || FUNC9(page))
		return NULL;

	if (FUNC2(page)
	    && (!FUNC3(page) || FUNC5(pfn)))
		return NULL;

	return page;
}