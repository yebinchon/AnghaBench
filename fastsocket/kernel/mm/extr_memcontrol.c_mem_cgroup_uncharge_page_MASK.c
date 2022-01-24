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
struct page {scalar_t__ mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_CGROUP_CHARGE_TYPE_MAPPED ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct page*) ; 

void FUNC3(struct page *page)
{
	/* early check. */
	if (FUNC2(page))
		return;
	if (page->mapping && !FUNC0(page))
		return;
	FUNC1(page, MEM_CGROUP_CHARGE_TYPE_MAPPED);
}