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
struct zap_details {int /*<<< orphan*/  nonlinear_vma; int /*<<< orphan*/  check_mapping; } ;
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;
struct mmu_gather {int dummy; } ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct mmu_gather*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct mmu_gather*,struct vm_area_struct*) ; 
 unsigned long FUNC8 (struct mmu_gather*,struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long,long*,struct zap_details*) ; 

__attribute__((used)) static unsigned long FUNC9(struct mmu_gather *tlb,
				struct vm_area_struct *vma,
				unsigned long addr, unsigned long end,
				long *zap_work, struct zap_details *details)
{
	pgd_t *pgd;
	unsigned long next;

	if (details && !details->check_mapping && !details->nonlinear_vma)
		details = NULL;

	FUNC0(addr >= end);
	FUNC2();
	FUNC7(tlb, vma);
	pgd = FUNC5(vma->vm_mm, addr);
	do {
		next = FUNC3(addr, end);
		if (FUNC4(pgd)) {
			(*zap_work)--;
			continue;
		}
		next = FUNC8(tlb, vma, pgd, addr, next,
						zap_work, details);
	} while (pgd++, addr = next, (addr != end && *zap_work > 0));
	FUNC6(tlb, vma);
	FUNC1();

	return addr;
}