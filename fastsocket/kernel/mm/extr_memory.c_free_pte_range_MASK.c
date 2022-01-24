#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mmu_gather {TYPE_1__* mm; } ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgtable_t ;
struct TYPE_2__ {int /*<<< orphan*/  nr_ptes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmu_gather*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct mmu_gather *tlb, pmd_t *pmd,
			   unsigned long addr)
{
	pgtable_t token = FUNC1(*pmd);
	FUNC0(pmd);
	FUNC2(tlb, token, addr);
	tlb->mm->nr_ptes--;
}