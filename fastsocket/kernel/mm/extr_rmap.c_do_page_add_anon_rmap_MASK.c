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
 int /*<<< orphan*/  NR_ANON_PAGES ; 
 int /*<<< orphan*/  NR_ANON_TRANSPARENT_HUGEPAGES ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,struct vm_area_struct*,unsigned long,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct page *page,
	struct vm_area_struct *vma, unsigned long address, int exclusive)
{
	int first = FUNC7(&page->_mapcount);
	if (first) {
		if (!FUNC2(page))
			FUNC4(page, NR_ANON_PAGES);
		else
			FUNC4(page,
					      NR_ANON_TRANSPARENT_HUGEPAGES);
	}
	if (FUNC8(FUNC0(page)))
		return;

	FUNC3(!FUNC1(page));
	FUNC3(address < vma->vm_start || address >= vma->vm_end);
	if (first)
		FUNC6(page, vma, address, exclusive);
	else
		FUNC5(page, vma, address);
}