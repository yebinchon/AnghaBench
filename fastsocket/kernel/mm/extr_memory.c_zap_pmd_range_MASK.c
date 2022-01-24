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
struct zap_details {int dummy; } ;
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;
struct mmu_gather {TYPE_1__* mm; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;
struct TYPE_2__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 unsigned long HPAGE_PMD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct mmu_gather*,struct vm_area_struct*,int /*<<< orphan*/ *) ; 
 unsigned long FUNC8 (struct mmu_gather*,struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long,long*,struct zap_details*) ; 

__attribute__((used)) static inline unsigned long FUNC9(struct mmu_gather *tlb,
				struct vm_area_struct *vma, pud_t *pud,
				unsigned long addr, unsigned long end,
				long *zap_work, struct zap_details *details)
{
	pmd_t *pmd;
	unsigned long next;

	pmd = FUNC3(pud, addr);
	do {
		next = FUNC1(addr, end);
		if (FUNC4(*pmd)) {
			if (next-addr != HPAGE_PMD_SIZE) {
				FUNC0(!FUNC5(&tlb->mm->mmap_sem));
				FUNC6(vma->vm_mm, pmd);
			} else if (FUNC7(tlb, vma, pmd)) {
				(*zap_work)--;
				continue;
			}
			/* fall through */
		}
		/*
		 * Here there can be other concurrent MADV_DONTNEED or
		 * trans huge page faults running, and if the pmd is
		 * none or trans huge it can change under us. This is
		 * because MADV_DONTNEED holds the mmap_sem in read
		 * mode.
		 */
		if (FUNC2(pmd)) {
			(*zap_work)--;
			continue;
		}
		next = FUNC8(tlb, vma, pmd, addr, next,
						zap_work, details);
	} while (pmd++, addr = next, (addr != end && *zap_work > 0));

	return addr;
}