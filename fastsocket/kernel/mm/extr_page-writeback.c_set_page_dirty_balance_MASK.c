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
 int /*<<< orphan*/  FUNC0 (struct address_space*) ; 
 struct address_space* FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 

void FUNC3(struct page *page, int page_mkwrite)
{
	if (FUNC2(page) || page_mkwrite) {
		struct address_space *mapping = FUNC1(page);

		if (mapping)
			FUNC0(mapping);
	}
}