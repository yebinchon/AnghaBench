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
struct mm_struct {int /*<<< orphan*/  page_table_lock; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct mm_struct *mm, pud_t *pud, unsigned long address)
{
	pmd_t *new = FUNC2(mm, address);
	if (!new)
		return -ENOMEM;

	FUNC6(); /* See comment in __pte_alloc */

	FUNC7(&mm->page_table_lock);
#ifndef __ARCH_HAS_4LEVEL_HACK
	if (FUNC5(*pud))		/* Another has populated it */
		FUNC3(mm, new);
	else
		FUNC4(mm, pud, new);
#else
	if (pgd_present(*pud))		/* Another has populated it */
		pmd_free(mm, new);
	else
		pgd_populate(mm, pud, new);
#endif /* __ARCH_HAS_4LEVEL_HACK */
	FUNC8(&mm->page_table_lock);
	return 0;
}