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
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (struct mm_struct*,unsigned long,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct vm_area_struct *vma, unsigned long addr,
			unsigned long pfn, pgprot_t prot)
{
	struct mm_struct *mm = vma->vm_mm;
	int retval;
	pte_t *pte, entry;
	spinlock_t *ptl;

	retval = -ENOMEM;
	pte = FUNC0(mm, addr, &ptl);
	if (!pte)
		goto out;
	retval = -EBUSY;
	if (!FUNC3(*pte))
		goto out_unlock;

	/* Ok, finally just insert the thing.. */
	entry = FUNC2(FUNC1(pfn, prot));
	FUNC5(mm, addr, pte, entry);
	FUNC6(vma, addr, entry); /* XXX: why not for insert_page? */

	retval = 0;
out_unlock:
	FUNC4(pte, ptl);
out:
	return retval;
}