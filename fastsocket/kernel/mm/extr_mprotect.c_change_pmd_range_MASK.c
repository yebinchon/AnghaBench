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
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 unsigned long HPAGE_PMD_SIZE ; 
 scalar_t__ FUNC0 (struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long,unsigned long,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC7(struct vm_area_struct *vma, pud_t *pud,
		unsigned long addr, unsigned long end, pgprot_t newprot,
		int dirty_accountable)
{
	pmd_t *pmd;
	unsigned long next;

	pmd = FUNC4(pud, addr);
	do {
		next = FUNC2(addr, end);
		if (FUNC5(*pmd)) {
			if (next - addr != HPAGE_PMD_SIZE)
				FUNC6(vma->vm_mm, pmd);
			else if (FUNC0(vma, pmd, addr, newprot))
				continue;
			/* fall through */
		}
		if (FUNC3(pmd))
			continue;
		FUNC1(vma->vm_mm, pmd, addr, next, newprot,
				 dirty_accountable);
	} while (pmd++, addr = next, addr != end);
}