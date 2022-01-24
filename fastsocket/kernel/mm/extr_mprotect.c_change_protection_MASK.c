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
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pgprot_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 unsigned long FUNC4 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (struct mm_struct*,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct vm_area_struct *vma,
		unsigned long addr, unsigned long end, pgprot_t newprot,
		int dirty_accountable)
{
	struct mm_struct *mm = vma->vm_mm;
	pgd_t *pgd;
	unsigned long next;
	unsigned long start = addr;

	FUNC0(addr >= end);
	pgd = FUNC6(mm, addr);
	FUNC2(vma, addr, end);
	do {
		next = FUNC4(addr, end);
		if (FUNC5(pgd))
			continue;
		FUNC1(vma, pgd, addr, next, newprot,
				 dirty_accountable);
	} while (pgd++, addr = next, addr != end);
	FUNC3(vma, start, end);
}