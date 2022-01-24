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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long,int /*<<< orphan*/ ,struct page*) ; 

__attribute__((used)) static inline int FUNC4(struct vm_area_struct *vma, pud_t *pud,
				unsigned long addr, unsigned long end,
				swp_entry_t entry, struct page *page)
{
	pmd_t *pmd;
	unsigned long next;
	int ret;

	pmd = FUNC2(pud, addr);
	do {
		next = FUNC0(addr, end);
		if (FUNC1(pmd))
			continue;
		ret = FUNC3(vma, pmd, addr, next, entry, page);
		if (ret)
			return ret;
	} while (pmd++, addr = next, addr != end);
	return 0;
}