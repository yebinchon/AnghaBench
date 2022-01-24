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
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  file_rss ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/ * FUNC2 (struct mm_struct*,unsigned long,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct vm_area_struct *vma, unsigned long addr,
			struct page *page, pgprot_t prot)
{
	struct mm_struct *mm = vma->vm_mm;
	int retval;
	pte_t *pte;
	spinlock_t *ptl;

	retval = -EINVAL;
	if (FUNC0(page))
		goto out;
	retval = -ENOMEM;
	FUNC1(page);
	pte = FUNC2(mm, addr, &ptl);
	if (!pte)
		goto out;
	retval = -EBUSY;
	if (!FUNC7(*pte))
		goto out_unlock;

	/* Ok, finally just insert the thing.. */
	FUNC3(page);
	FUNC4(mm, file_rss);
	FUNC6(page);
	FUNC9(mm, addr, pte, FUNC5(page, prot));

	retval = 0;
	FUNC8(pte, ptl);
	return retval;
out_unlock:
	FUNC8(pte, ptl);
out:
	return retval;
}