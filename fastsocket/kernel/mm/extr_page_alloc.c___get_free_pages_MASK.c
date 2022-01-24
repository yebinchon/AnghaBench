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
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int __GFP_HIGHMEM ; 
 struct page* FUNC1 (int,unsigned int) ; 
 scalar_t__ FUNC2 (struct page*) ; 

unsigned long FUNC3(gfp_t gfp_mask, unsigned int order)
{
	struct page *page;

	/*
	 * __get_free_pages() returns a 32-bit address, which cannot represent
	 * a highmem page
	 */
	FUNC0((gfp_mask & __GFP_HIGHMEM) != 0);

	page = FUNC1(gfp_mask, order);
	if (!page)
		return 0;
	return (unsigned long) FUNC2(page);
}