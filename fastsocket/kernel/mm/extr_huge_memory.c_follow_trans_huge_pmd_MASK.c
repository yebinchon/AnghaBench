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
struct mm_struct {int /*<<< orphan*/  page_table_lock; } ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 unsigned int FOLL_GET ; 
 unsigned int FOLL_TOUCH ; 
 unsigned int FOLL_WRITE ; 
 unsigned long HPAGE_PMD_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct page* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

struct page *FUNC10(struct mm_struct *mm,
				   unsigned long addr,
				   pmd_t *pmd,
				   unsigned int flags)
{
	struct page *page = NULL;

	FUNC2(FUNC9(&mm->page_table_lock));

	if (flags & FOLL_WRITE && !FUNC7(*pmd))
		goto out;

	page = FUNC6(*pmd);
	FUNC2(!FUNC1(page));
	if (flags & FOLL_TOUCH) {
		pmd_t _pmd;
		/*
		 * We should set the dirty bit only for FOLL_WRITE but
		 * for now the dirty bit in the pmd is meaningless.
		 * And if the dirty bit will become meaningful and
		 * we'll only set it with FOLL_WRITE, an atomic
		 * set_bit will be required on the pmd to set the
		 * young bit, instead of the current set_pmd_at.
		 */
		_pmd = FUNC5(FUNC4(*pmd));
		FUNC8(mm, addr & HPAGE_PMD_MASK, pmd, _pmd);
	}
	page += (addr & ~HPAGE_PMD_MASK) >> PAGE_SHIFT;
	FUNC2(!FUNC0(page));
	if (flags & FOLL_GET)
		FUNC3(page);

out:
	return page;
}