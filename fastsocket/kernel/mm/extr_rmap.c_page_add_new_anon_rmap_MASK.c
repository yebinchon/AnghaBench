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
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; } ;
struct page {int /*<<< orphan*/  _mapcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  LRU_ACTIVE_ANON ; 
 int /*<<< orphan*/  NR_ANON_PAGES ; 
 int /*<<< orphan*/  NR_ANON_TRANSPARENT_HUGEPAGES ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,struct vm_area_struct*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct page*,struct vm_area_struct*) ; 

void FUNC9(struct page *page,
	struct vm_area_struct *vma, unsigned long address)
{
	FUNC2(address < vma->vm_start || address >= vma->vm_end);
	FUNC1(page);
	FUNC6(&page->_mapcount, 0); /* increment count (starts at -1) */
	if (!FUNC0(page))
		FUNC3(page, NR_ANON_PAGES);
	else
		FUNC3(page, NR_ANON_TRANSPARENT_HUGEPAGES);
	FUNC4(page, vma, address, 1);
	if (FUNC8(page, vma))
		FUNC7(page, LRU_ACTIVE_ANON);
	else
		FUNC5(page);
}