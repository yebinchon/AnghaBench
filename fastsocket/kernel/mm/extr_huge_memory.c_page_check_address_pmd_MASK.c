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
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  enum page_check_address_pmd_flag { ____Placeholder_page_check_address_pmd_flag } page_check_address_pmd_flag ;

/* Variables and functions */
 unsigned long HPAGE_PMD_MASK ; 
 int PAGE_CHECK_ADDRESS_PMD_NOTSPLITTING_FLAG ; 
 int PAGE_CHECK_ADDRESS_PMD_SPLITTING_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct page* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

pmd_t *FUNC10(struct page *page,
			      struct mm_struct *mm,
			      unsigned long address,
			      enum page_check_address_pmd_flag flag)
{
	pgd_t *pgd;
	pud_t *pud;
	pmd_t *pmd, *ret = NULL;

	if (address & ~HPAGE_PMD_MASK)
		goto out;

	pgd = FUNC1(mm, address);
	if (!FUNC2(*pgd))
		goto out;

	pud = FUNC8(pgd, address);
	if (!FUNC9(*pud))
		goto out;

	pmd = FUNC4(pud, address);
	if (FUNC3(*pmd))
		goto out;
	if (FUNC5(*pmd) != page)
		goto out;
	/*
	 * split_vma() may create temporary aliased mappings. There is
	 * no risk as long as all huge pmd are found and have their
	 * splitting bit set before __split_huge_page_refcount
	 * runs. Finding the same huge pmd more than once during the
	 * same rmap walk is not a problem.
	 */
	if (flag == PAGE_CHECK_ADDRESS_PMD_NOTSPLITTING_FLAG &&
	    FUNC7(*pmd))
		goto out;
	if (FUNC6(*pmd)) {
		FUNC0(flag == PAGE_CHECK_ADDRESS_PMD_SPLITTING_FLAG &&
			  !FUNC7(*pmd));
		ret = pmd;
	}
out:
	return ret;
}