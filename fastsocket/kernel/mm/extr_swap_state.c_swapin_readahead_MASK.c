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
typedef  int /*<<< orphan*/  swp_entry_t ;
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned long*) ; 

struct page *FUNC6(swp_entry_t entry, gfp_t gfp_mask,
			struct vm_area_struct *vma, unsigned long addr)
{
	int nr_pages;
	struct page *page;
	unsigned long offset;
	unsigned long end_offset;

	/*
	 * Get starting offset for readaround, and number of pages to read.
	 * Adjust starting address by readbehind (for NUMA interleave case)?
	 * No, it's very unlikely that swap layout would follow vma layout,
	 * more likely that neighbouring swap pages came from the same node:
	 * so use the same "addr" to choose the same node for each swap read.
	 */
	nr_pages = FUNC5(entry, &offset);
	for (end_offset = offset + nr_pages; offset < end_offset; offset++) {
		/* Ok, do the async read-ahead now */
		page = FUNC2(FUNC3(FUNC4(entry), offset),
						gfp_mask, vma, addr);
		if (!page)
			break;
		FUNC1(page);
	}
	FUNC0();	/* Push any new pages onto the LRU now */
	return FUNC2(entry, gfp_mask, vma, addr);
}