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
struct zap_details {int dummy; } ;
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mmu_gather {int dummy; } ;
struct mm_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct mmu_gather*,unsigned long,unsigned long) ; 
 unsigned long FUNC2 (struct mmu_gather**,struct vm_area_struct*,unsigned long,unsigned long,unsigned long*,struct zap_details*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 

unsigned long FUNC4(struct vm_area_struct *vma, unsigned long address,
		unsigned long size, struct zap_details *details)
{
	struct mm_struct *mm = vma->vm_mm;
	struct mmu_gather *tlb;
	unsigned long end = address + size;
	unsigned long nr_accounted = 0;

	FUNC0();
	FUNC3(mm);
	end = FUNC2(&tlb, vma, address, end, &nr_accounted, details, 0);
	if (tlb)
		FUNC1(tlb, address, end);
	return end;
}