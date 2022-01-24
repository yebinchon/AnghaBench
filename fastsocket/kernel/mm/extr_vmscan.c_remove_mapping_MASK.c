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

/* Variables and functions */
 scalar_t__ FUNC0 (struct address_space*,struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int) ; 

int FUNC2(struct address_space *mapping, struct page *page)
{
	if (FUNC0(mapping, page)) {
		/*
		 * Unfreezing the refcount with 1 rather than 2 effectively
		 * drops the pagecache ref for us without requiring another
		 * atomic operation.
		 */
		FUNC1(page, 1);
		return 1;
	}
	return 0;
}