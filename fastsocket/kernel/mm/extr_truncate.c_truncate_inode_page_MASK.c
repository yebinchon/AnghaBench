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
struct page {scalar_t__ index; } ;
struct address_space {int dummy; } ;
typedef  int loff_t ;

/* Variables and functions */
 int PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  PAGE_CACHE_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int FUNC1 (struct address_space*,struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct address_space*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct address_space *mapping, struct page *page)
{
	if (FUNC0(page)) {
		FUNC2(mapping,
				   (loff_t)page->index << PAGE_CACHE_SHIFT,
				   PAGE_CACHE_SIZE, 0);
	}
	return FUNC1(mapping, page);
}