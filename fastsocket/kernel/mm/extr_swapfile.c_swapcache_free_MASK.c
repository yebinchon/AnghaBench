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
struct swap_info_struct {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAP_HAS_CACHE ; 
 int /*<<< orphan*/  FUNC0 (struct page*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned char FUNC2 (struct swap_info_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct swap_info_struct* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  swap_lock ; 

void FUNC4(swp_entry_t entry, struct page *page)
{
	struct swap_info_struct *p;
	unsigned char count;

	p = FUNC3(entry);
	if (p) {
		count = FUNC2(p, entry, SWAP_HAS_CACHE);
		if (page)
			FUNC0(page, entry, count != 0);
		FUNC1(&swap_lock);
	}
}