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
struct page {int /*<<< orphan*/ * mapping; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,unsigned int) ; 

__attribute__((used)) static struct page *FUNC3(gfp_t gfp_mask, unsigned int order)
{
	struct page *pages;

	pages = FUNC1(gfp_mask, order);
	if (pages) {
		unsigned int count, i;
		pages->mapping = NULL;
		FUNC2(pages, order);
		count = 1 << order;
		for (i = 0; i < count; i++)
			FUNC0(pages + i);
	}

	return pages;
}