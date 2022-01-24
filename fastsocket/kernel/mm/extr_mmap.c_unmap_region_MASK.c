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
struct vm_area_struct {int /*<<< orphan*/  vm_start; int /*<<< orphan*/  vm_end; struct vm_area_struct* vm_next; } ;
struct mmu_gather {int dummy; } ;
struct mm_struct {struct vm_area_struct* mmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIRST_USER_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (struct mmu_gather*,struct vm_area_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct mmu_gather*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct mmu_gather**,struct vm_area_struct*,unsigned long,unsigned long,unsigned long*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

__attribute__((used)) static void FUNC6(struct mm_struct *mm,
		struct vm_area_struct *vma, struct vm_area_struct *prev,
		unsigned long start, unsigned long end)
{
	struct vm_area_struct *next = prev? prev->vm_next: mm->mmap;
	struct mmu_gather *tlb;
	unsigned long nr_accounted = 0;

	FUNC1();
	FUNC4(mm);
	FUNC3(&tlb, vma, start, end, &nr_accounted, NULL, 0);
	FUNC5(nr_accounted);
	FUNC0(tlb, vma, prev? prev->vm_end: FIRST_USER_ADDRESS,
				 next? next->vm_start: 0);
	FUNC2(tlb, start, end);
}