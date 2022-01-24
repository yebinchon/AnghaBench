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
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int /*<<< orphan*/  vm_mm; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 unsigned long EFAULT ; 
 unsigned long PAGE_SIZE ; 
 unsigned long FUNC0 (struct page*,struct vm_area_struct*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC5 (struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long,int /*<<< orphan*/ ,struct page*) ; 

__attribute__((used)) static int FUNC6(struct vm_area_struct *vma,
				swp_entry_t entry, struct page *page)
{
	pgd_t *pgd;
	unsigned long addr, end, next;
	int ret;

	if (FUNC1(page)) {
		addr = FUNC0(page, vma);
		if (addr == -EFAULT)
			return 0;
		else
			end = addr + PAGE_SIZE;
	} else {
		addr = vma->vm_start;
		end = vma->vm_end;
	}

	pgd = FUNC4(vma->vm_mm, addr);
	do {
		next = FUNC2(addr, end);
		if (FUNC3(pgd))
			continue;
		ret = FUNC5(vma, pgd, addr, next, entry, page);
		if (ret)
			return ret;
	} while (pgd++, addr = next, addr != end);
	return 0;
}