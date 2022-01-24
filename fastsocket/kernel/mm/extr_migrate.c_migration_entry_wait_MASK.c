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
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

void FUNC9(struct mm_struct *mm, pmd_t *pmd,
				unsigned long address)
{
	pte_t *ptep, pte;
	spinlock_t *ptl;
	swp_entry_t entry;
	struct page *page;

	ptep = FUNC4(mm, pmd, address, &ptl);
	pte = *ptep;
	if (!FUNC2(pte))
		goto out;

	entry = FUNC5(pte);
	if (!FUNC1(entry))
		goto out;

	page = FUNC3(entry);

	/*
	 * Once radix-tree replacement of page migration started, page_count
	 * *must* be zero. And, we don't want to call wait_on_page_locked()
	 * against a page without get_page().
	 * So, we use get_page_unless_zero(), here. Even failed, page fault
	 * will occur again.
	 */
	if (!FUNC0(page))
		goto out;
	FUNC6(ptep, ptl);
	FUNC8(page);
	FUNC7(page);
	return;
out:
	FUNC6(ptep, ptl);
}