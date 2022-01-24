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
struct address_space {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int FUNC2 (struct address_space*,struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct address_space *mapping, struct page *page)
{
	int ret;

	if (page->mapping != mapping)
		return 0;

	if (FUNC1(page) && !FUNC3(page, 0))
		return 0;

	FUNC0(page);
	ret = FUNC2(mapping, page);

	return ret;
}