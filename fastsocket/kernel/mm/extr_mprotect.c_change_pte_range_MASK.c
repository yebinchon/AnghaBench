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
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 scalar_t__ PAGE_MIGRATION ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC20(struct mm_struct *mm, pmd_t *pmd,
		unsigned long addr, unsigned long end, pgprot_t newprot,
		int dirty_accountable)
{
	pte_t *pte, oldpte;
	spinlock_t *ptl;

	pte = FUNC12(mm, pmd, addr, &ptl);
	FUNC2();
	do {
		oldpte = *pte;
		if (FUNC13(oldpte)) {
			pte_t ptent;

#ifdef CONFIG_PARAVIRT
			if (likely(!paravirt_enabled()))
				ptent = __ptep_modify_prot_start(mm, addr, pte);
			else
#endif
				ptent = FUNC17(mm, addr, pte);
			ptent = FUNC11(ptent, newprot);

			/*
			 * Avoid taking write faults for pages we know to be
			 * dirty.
			 */
			if (dirty_accountable && FUNC8(ptent))
				ptent = FUNC10(ptent);

#ifdef CONFIG_PARAVIRT
			if (likely(!paravirt_enabled()))
				__ptep_modify_prot_commit(mm, addr, pte, ptent);
			else
#endif
				FUNC16(mm, addr, pte, ptent);
		} else if (PAGE_MIGRATION && !FUNC9(oldpte)) {
			swp_entry_t entry = FUNC14(oldpte);

			if (FUNC4(entry)) {
				/*
				 * A protection check is difficult so
				 * just be safe and disable write
				 */
				FUNC6(&entry);
				FUNC18(mm, addr, pte,
					FUNC19(entry));
			}
		}
	} while (pte++, addr += PAGE_SIZE, addr != end);
	FUNC3();
	FUNC15(pte - 1, ptl);
}