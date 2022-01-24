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
struct mmu_gather {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 unsigned long PGDIR_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct mmu_gather*,int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct mmu_gather*,int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC6(struct mmu_gather *tlb, pgd_t *pgd,
				unsigned long addr, unsigned long end,
				unsigned long floor, unsigned long ceiling)
{
	pud_t *pud;
	unsigned long next;
	unsigned long start;

	start = addr;
	pud = FUNC5(pgd, addr);
	do {
		next = FUNC2(addr, end);
		if (FUNC4(pud))
			continue;
		FUNC0(tlb, pud, addr, next, floor, ceiling);
	} while (pud++, addr = next, addr != end);

	start &= PGDIR_MASK;
	if (start < floor)
		return;
	if (ceiling) {
		ceiling &= PGDIR_MASK;
		if (!ceiling)
			return;
	}
	if (end - 1 > ceiling - 1)
		return;

	pud = FUNC5(pgd, start);
	FUNC1(pgd);
	FUNC3(tlb, pud, start);
}