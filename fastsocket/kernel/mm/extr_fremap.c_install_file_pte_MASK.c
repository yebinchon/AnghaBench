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
struct vm_area_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (struct mm_struct*,unsigned long,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct mm_struct *mm, struct vm_area_struct *vma,
		unsigned long addr, unsigned long pgoff, pgprot_t prot)
{
	int err = -ENOMEM;
	pte_t *pte;
	spinlock_t *ptl;

	pte = FUNC0(mm, addr, &ptl);
	if (!pte)
		goto out;

	if (!FUNC2(*pte))
		FUNC5(mm, vma, addr, pte);

	FUNC4(mm, addr, pte, FUNC1(pgoff));
	/*
	 * We don't need to run update_mmu_cache() here because the "file pte"
	 * being installed by install_file_pte() is not a real pte - it's a
	 * non-present entry (like a swap entry), noting what file offset should
	 * be mapped there when there's a fault (in a non-linear vma where
	 * that's not obvious).
	 */
	FUNC3(pte, ptl);
	err = 0;
out:
	return err;
}