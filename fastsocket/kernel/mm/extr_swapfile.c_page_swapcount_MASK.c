#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ swp_entry_t ;
struct swap_info_struct {int /*<<< orphan*/ * swap_map; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct swap_info_struct* FUNC3 (TYPE_1__) ; 
 int /*<<< orphan*/  swap_lock ; 
 size_t FUNC4 (TYPE_1__) ; 

__attribute__((used)) static inline int FUNC5(struct page *page)
{
	int count = 0;
	struct swap_info_struct *p;
	swp_entry_t entry;

	entry.val = FUNC0(page);
	p = FUNC3(entry);
	if (p) {
		count = FUNC2(p->swap_map[FUNC4(entry)]);
		FUNC1(&swap_lock);
	}
	return count;
}