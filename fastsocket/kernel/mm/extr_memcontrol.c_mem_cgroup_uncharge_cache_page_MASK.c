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
struct page {int /*<<< orphan*/  mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_CGROUP_CHARGE_TYPE_CACHE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 

void FUNC3(struct page *page)
{
	FUNC0(FUNC2(page));
	FUNC0(page->mapping);
	FUNC1(page, MEM_CGROUP_CHARGE_TYPE_CACHE);
}