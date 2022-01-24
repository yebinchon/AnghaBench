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
typedef  int /*<<< orphan*/  compound_page_dtor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (struct page*) ; 
 int /*<<< orphan*/ * free_huge_page ; 
 int /*<<< orphan*/ * FUNC2 (struct page*) ; 

int FUNC3(struct page *page)
{
	compound_page_dtor *dtor;

	if (!FUNC0(page))
		return 0;

	page = FUNC1(page);
	dtor = FUNC2(page);

	return dtor == free_huge_page;
}