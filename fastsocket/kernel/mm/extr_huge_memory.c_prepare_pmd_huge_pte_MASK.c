#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mm_struct {TYPE_1__* pmd_huge_pte; int /*<<< orphan*/  page_table_lock; } ;
typedef  TYPE_1__* pgtable_t ;
struct TYPE_3__ {int /*<<< orphan*/  lru; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(pgtable_t pgtable,
				 struct mm_struct *mm)
{
	FUNC1(FUNC3(&mm->page_table_lock));

	/* FIFO */
	if (!mm->pmd_huge_pte)
		FUNC0(&pgtable->lru);
	else
		FUNC2(&pgtable->lru, &mm->pmd_huge_pte->lru);
	mm->pmd_huge_pte = pgtable;
}