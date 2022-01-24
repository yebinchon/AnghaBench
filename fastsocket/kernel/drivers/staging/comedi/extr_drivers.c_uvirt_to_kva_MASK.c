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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline unsigned long FUNC8(pgd_t * pgd, unsigned long adr)
{
	unsigned long ret = 0UL;
	pmd_t *pmd;
	pte_t *ptep, pte;
	pud_t *pud;

	if (!FUNC1(*pgd)) {
		pud = FUNC7(pgd, adr);
		pmd = FUNC3(pud, adr);
		if (!FUNC2(*pmd)) {
			ptep = FUNC4(pmd, adr);
			pte = *ptep;
			if (FUNC6(pte)) {
				ret = (unsigned long)
				    FUNC0(FUNC5(pte));
				ret |= (adr & (PAGE_SIZE - 1));
			}
		}
	}
	return ret;
}