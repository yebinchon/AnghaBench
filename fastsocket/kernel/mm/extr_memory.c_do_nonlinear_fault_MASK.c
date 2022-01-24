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
struct vm_area_struct {int vm_flags; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 unsigned int FAULT_FLAG_NONLINEAR ; 
 int VM_FAULT_SIGBUS ; 
 int VM_NONLINEAR ; 
 int FUNC0 (struct mm_struct*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct mm_struct *mm, struct vm_area_struct *vma,
		unsigned long address, pte_t *page_table, pmd_t *pmd,
		unsigned int flags, pte_t orig_pte)
{
	pgoff_t pgoff;

	flags |= FAULT_FLAG_NONLINEAR;

	if (!FUNC3(mm, pmd, page_table, orig_pte))
		return 0;

	if (FUNC4(!(vma->vm_flags & VM_NONLINEAR))) {
		/*
		 * Page table corrupted: show pte and kill process.
		 */
		FUNC1(vma, address, orig_pte, NULL);
		return VM_FAULT_SIGBUS;
	}

	pgoff = FUNC2(orig_pte);
	return FUNC0(mm, vma, address, pmd, pgoff, flags, orig_pte);
}