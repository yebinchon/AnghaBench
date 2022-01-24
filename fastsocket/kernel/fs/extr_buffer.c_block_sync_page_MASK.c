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
struct address_space {int /*<<< orphan*/  backing_dev_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct page*) ; 
 struct address_space* FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct page *page)
{
	struct address_space *mapping;

	FUNC2();
	mapping = FUNC1(page);
	if (mapping)
		FUNC0(mapping->backing_dev_info, page);
}