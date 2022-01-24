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
struct address_space {int dummy; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;

/* Variables and functions */
 int ENOMEM ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 struct page* FUNC0 (struct address_space*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,unsigned int,int) ; 

__attribute__((used)) static int FUNC4(struct address_space *mapping, loff_t from)
{
	pgoff_t index = from >> PAGE_CACHE_SHIFT;
	unsigned offset = from & (PAGE_CACHE_SIZE - 1);
	struct page *page;
	int rc = 0;

	page = FUNC0(mapping, index);
	if (!page)
		return -ENOMEM;

	FUNC3(page, offset, PAGE_CACHE_SIZE);
	FUNC2(page);
	FUNC1(page);
	return rc;
}