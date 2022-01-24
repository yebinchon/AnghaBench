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
struct page {struct address_space* mapping; } ;
struct address_space {int /*<<< orphan*/  backing_dev_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDI_RECLAIMABLE ; 
 int /*<<< orphan*/  NR_FILE_DIRTY ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 

void FUNC5(struct page *page, unsigned int account_size)
{
	if (FUNC0(page)) {
		struct address_space *mapping = page->mapping;
		if (mapping && FUNC3(mapping)) {
			FUNC2(page, NR_FILE_DIRTY);
			FUNC1(mapping->backing_dev_info,
					BDI_RECLAIMABLE);
			if (account_size)
				FUNC4(account_size);
		}
	}
}