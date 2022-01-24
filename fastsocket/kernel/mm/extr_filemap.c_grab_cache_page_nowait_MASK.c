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
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int __GFP_FS ; 
 struct page* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct page*,struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct page* FUNC2 (struct address_space*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 

struct page *
FUNC6(struct address_space *mapping, pgoff_t index)
{
	struct page *page = FUNC2(mapping, index);

	if (page) {
		if (FUNC5(page))
			return page;
		FUNC4(page);
		return NULL;
	}
	page = FUNC0(FUNC3(mapping) & ~__GFP_FS);
	if (page && FUNC1(page, mapping, index, GFP_NOFS)) {
		FUNC4(page);
		page = NULL;
	}
	return page;
}