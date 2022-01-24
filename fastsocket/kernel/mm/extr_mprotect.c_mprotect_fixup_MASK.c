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
struct vm_area_struct {unsigned long vm_flags; unsigned long vm_end; unsigned long vm_start; int /*<<< orphan*/  vm_file; int /*<<< orphan*/  vm_page_prot; int /*<<< orphan*/  anon_vma; scalar_t__ vm_pgoff; struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef  scalar_t__ pgoff_t ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long VM_ACCOUNT ; 
 unsigned long VM_EXEC ; 
 unsigned long VM_HUGETLB ; 
 unsigned long VM_NORESERVE ; 
 unsigned long VM_SHARED ; 
 unsigned long VM_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*,unsigned long,unsigned long,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (unsigned long) ; 
 int FUNC9 (struct mm_struct*,struct vm_area_struct*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct mm_struct*,unsigned long,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long) ; 
 struct vm_area_struct* FUNC13 (struct mm_struct*,struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct vm_area_struct*) ; 
 scalar_t__ FUNC15 (struct vm_area_struct*) ; 

int
FUNC16(struct vm_area_struct *vma, struct vm_area_struct **pprev,
	unsigned long start, unsigned long end, unsigned long newflags)
{
	struct mm_struct *mm = vma->vm_mm;
	unsigned long oldflags = vma->vm_flags;
	long nrpages = (end - start) >> PAGE_SHIFT;
	unsigned long charged = 0;
	unsigned long old_end;
	pgoff_t pgoff;
	int error;
	int dirty_accountable = 0;

	old_end = vma->vm_end;
	if (newflags == oldflags) {
		*pprev = vma;
		return 0;
	}

	/*
	 * If we make a private mapping writable we increase our commit;
	 * but (without finer accounting) cannot reduce our commit if we
	 * make it unwritable again. hugetlb mapping were accounted for
	 * even if read-only so there is no need to account for them here
	 */
	if (newflags & VM_WRITE) {
		if (!(oldflags & (VM_ACCOUNT|VM_WRITE|VM_HUGETLB|
						VM_SHARED|VM_NORESERVE))) {
			charged = nrpages;
			if (FUNC8(charged))
				return -ENOMEM;
			newflags |= VM_ACCOUNT;
		}
	}

	/*
	 * First try to merge with previous and/or next vma.
	 */
	pgoff = vma->vm_pgoff + ((start - vma->vm_start) >> PAGE_SHIFT);
	*pprev = FUNC13(mm, *pprev, start, end, newflags,
			vma->anon_vma, vma->vm_file, pgoff, FUNC14(vma));
	if (*pprev) {
		vma = *pprev;
		goto success;
	}

	*pprev = vma;

	if (start != vma->vm_start) {
		error = FUNC9(mm, vma, start, 1);
		if (error)
			goto fail;
	}

	if (end != vma->vm_end) {
		error = FUNC9(mm, vma, end, 0);
		if (error)
			goto fail;
	}

success:
	/*
	 * vm_flags and vm_page_prot are protected by the mmap_sem
	 * held in write mode.
	 */
	vma->vm_flags = newflags;
	vma->vm_page_prot = FUNC7(vma->vm_page_prot,
					  FUNC10(newflags));

	if (FUNC15(vma)) {
		vma->vm_page_prot = FUNC10(newflags & ~VM_SHARED);
		dirty_accountable = 1;
	}

	if (oldflags & VM_EXEC)
		FUNC0(current->mm, old_end);

	FUNC5(mm, start, end);
	if (FUNC3(vma))
		FUNC2(vma, start, end, vma->vm_page_prot);
	else
		FUNC1(vma, start, end, vma->vm_page_prot, dirty_accountable);
	FUNC4(mm, start, end);
	FUNC11(mm, oldflags, vma->vm_file, -nrpages);
	FUNC11(mm, newflags, vma->vm_file, nrpages);
	FUNC6(vma);
	return 0;

fail:
	FUNC12(charged);
	return error;
}