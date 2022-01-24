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
struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; unsigned long vm_pgoff; int vm_flags; int /*<<< orphan*/  anon_vma; struct vm_area_struct* vm_next; } ;
struct mm_struct {struct vm_area_struct* mmap; } ;
struct mempolicy {int dummy; } ;
struct file {int dummy; } ;
struct anon_vma {int dummy; } ;
typedef  unsigned long pgoff_t ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 int VM_EXEC ; 
 unsigned long VM_SPECIAL ; 
 int /*<<< orphan*/  FUNC0 (struct mm_struct*,unsigned long) ; 
 scalar_t__ FUNC1 (struct vm_area_struct*,unsigned long,struct anon_vma*,struct file*,unsigned long) ; 
 scalar_t__ FUNC2 (struct vm_area_struct*,unsigned long,struct anon_vma*,struct file*,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*) ; 
 scalar_t__ FUNC5 (struct mempolicy*,struct mempolicy*) ; 
 int FUNC6 (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ *) ; 
 struct mempolicy* FUNC7 (struct vm_area_struct*) ; 

struct vm_area_struct *FUNC8(struct mm_struct *mm,
			struct vm_area_struct *prev, unsigned long addr,
			unsigned long end, unsigned long vm_flags,
		     	struct anon_vma *anon_vma, struct file *file,
			pgoff_t pgoff, struct mempolicy *policy)
{
	pgoff_t pglen = (end - addr) >> PAGE_SHIFT;
	struct vm_area_struct *area, *next;
	int err;

	/*
	 * We later require that vma->vm_flags == vm_flags,
	 * so this tests vma->vm_flags & VM_SPECIAL, too.
	 */
	if (vm_flags & VM_SPECIAL)
		return NULL;

	if (prev)
		next = prev->vm_next;
	else
		next = mm->mmap;
	area = next;
	if (next && next->vm_end == end)		/* cases 6, 7, 8 */
		next = next->vm_next;

	/*
	 * Can it merge with the predecessor?
	 */
	if (prev && prev->vm_end == addr &&
  			FUNC5(FUNC7(prev), policy) &&
			FUNC1(prev, vm_flags,
						anon_vma, file, pgoff)) {
		/*
		 * OK, it can.  Can we now merge in the successor as well?
		 */
		if (next && end == next->vm_start &&
				FUNC5(policy, FUNC7(next)) &&
				FUNC2(next, vm_flags,
					anon_vma, file, pgoff+pglen) &&
				FUNC3(prev->anon_vma,
						      next->anon_vma, NULL)) {
							/* cases 1, 6 */
			err = FUNC6(prev, prev->vm_start,
				next->vm_end, prev->vm_pgoff, NULL);
		} else					/* cases 2, 5, 7 */
			err = FUNC6(prev, prev->vm_start,
				end, prev->vm_pgoff, NULL);
		if (err)
			return NULL;
		if (prev->vm_flags & VM_EXEC)
			FUNC0(mm, prev->vm_end);
		FUNC4(prev);
		return prev;
	}

	/*
	 * Can this new request be merged in front of next?
	 */
	if (next && end == next->vm_start &&
 			FUNC5(policy, FUNC7(next)) &&
			FUNC2(next, vm_flags,
					anon_vma, file, pgoff+pglen)) {
		if (prev && addr < prev->vm_end)	/* case 4 */
			err = FUNC6(prev, prev->vm_start,
				addr, prev->vm_pgoff, NULL);
		else					/* cases 3, 8 */
			err = FUNC6(area, addr, next->vm_end,
				next->vm_pgoff - pglen, NULL);
		if (err)
			return NULL;
		FUNC4(area);
		return area;
	}

	return NULL;
}