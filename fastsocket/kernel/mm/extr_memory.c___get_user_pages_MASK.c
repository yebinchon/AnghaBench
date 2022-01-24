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
struct vm_area_struct {int vm_flags; unsigned long vm_end; } ;
struct task_struct {int /*<<< orphan*/  min_flt; int /*<<< orphan*/  maj_flt; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EFAULT ; 
 int EHWPOISON ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FAULT_FLAG_WRITE ; 
 unsigned int FOLL_FORCE ; 
 unsigned int FOLL_GET ; 
 unsigned int FOLL_HWPOISON ; 
 unsigned int FOLL_WRITE ; 
 scalar_t__ FUNC2 (struct page*) ; 
 unsigned long PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int FUNC3 (struct page*) ; 
 unsigned long TASK_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int VM_FAULT_ERROR ; 
 int VM_FAULT_HWPOISON ; 
 int VM_FAULT_HWPOISON_LARGE ; 
 int VM_FAULT_MAJOR ; 
 int VM_FAULT_OOM ; 
 int VM_FAULT_SIGBUS ; 
 int VM_FAULT_WRITE ; 
 int VM_IO ; 
 unsigned long VM_MAYREAD ; 
 unsigned long VM_MAYWRITE ; 
 int VM_PFNMAP ; 
 unsigned long VM_READ ; 
 unsigned long VM_WRITE ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct vm_area_struct* FUNC7 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct vm_area_struct*,struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int FUNC10 (struct mm_struct*,struct vm_area_struct*,struct page**,struct vm_area_struct**,unsigned long*,int*,int,unsigned int) ; 
 struct page* FUNC11 (struct vm_area_struct*,unsigned long,unsigned int) ; 
 struct vm_area_struct* FUNC12 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int FUNC14 (struct mm_struct*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct mm_struct*,unsigned long) ; 
 scalar_t__ FUNC16 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC18 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC19 (unsigned long) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC27 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ) ; 
 struct page* FUNC29 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 

int FUNC30(struct task_struct *tsk, struct mm_struct *mm,
		     unsigned long start, int nr_pages, unsigned int gup_flags,
		     struct page **pages, struct vm_area_struct **vmas)
{
	int i;
	unsigned long vm_flags;

	if (nr_pages <= 0)
		return 0;

	FUNC4(!!pages != !!(gup_flags & FOLL_GET));

	/* 
	 * Require read or write permissions.
	 * If FOLL_FORCE is set, we only require the "MAY" flags.
	 */
	vm_flags  = (gup_flags & FOLL_WRITE) ?
			(VM_WRITE | VM_MAYWRITE) : (VM_READ | VM_MAYREAD);
	vm_flags &= (gup_flags & FOLL_FORCE) ?
			(VM_MAYREAD | VM_MAYWRITE) : (VM_READ | VM_WRITE);
	i = 0;

	do {
		struct vm_area_struct *vma;

		vma = FUNC7(mm, start);
		if (!vma && FUNC15(mm, start)) {
			unsigned long pg = start & PAGE_MASK;
			struct vm_area_struct *gate_vma = FUNC12(mm);
			pgd_t *pgd;
			pud_t *pud;
			pmd_t *pmd;
			pte_t *pte;

			/* user gate pages are read-only */
			if (gup_flags & FOLL_WRITE)
				return i ? : -EFAULT;
			if (pg > TASK_SIZE)
				pgd = FUNC19(pg);
			else
				pgd = FUNC18(mm, pg);
			FUNC1(FUNC17(*pgd));
			pud = FUNC27(pgd, pg);
			FUNC1(FUNC26(*pud));
			pmd = FUNC21(pud, pg);
			if (FUNC20(*pmd))
				return i ? : -EFAULT;
			FUNC4(FUNC22(*pmd));
			pte = FUNC24(pmd, pg);
			if (FUNC23(*pte)) {
				FUNC25(pte);
				return i ? : -EFAULT;
			}
			if (pages) {
				struct page *page = FUNC29(gate_vma, start, *pte);
				pages[i] = page;
				if (page)
					FUNC13(page);
			}
			FUNC25(pte);
			if (vmas)
				vmas[i] = gate_vma;
			i++;
			start += PAGE_SIZE;
			nr_pages--;
			continue;
		}

		if (!vma ||
		    (vma->vm_flags & (VM_IO | VM_PFNMAP)) ||
		    !(vm_flags & vma->vm_flags))
			return i ? : -EFAULT;

		if (FUNC16(vma)) {
			i = FUNC10(mm, vma, pages, vmas,
					&start, &nr_pages, i, gup_flags);
			continue;
		}

		do {
			struct page *page;
			unsigned int foll_flags = gup_flags;

			/*
			 * If we have a pending SIGKILL, don't keep faulting
			 * pages and potentially allocating memory.
			 */
			if (FUNC28(FUNC6(current)))
				return i ? i : -ERESTARTSYS;

			FUNC5();
			while (!(page = FUNC11(vma, start, foll_flags))) {
				int ret;

				ret = FUNC14(mm, vma, start,
					(foll_flags & FOLL_WRITE) ?
					FAULT_FLAG_WRITE : 0);

				if (ret & VM_FAULT_ERROR) {
					if (ret & VM_FAULT_OOM)
						return i ? i : -ENOMEM;
					if (ret & (VM_FAULT_HWPOISON |
						   VM_FAULT_HWPOISON_LARGE)) {
						if (i)
							return i;
						else if (gup_flags & FOLL_HWPOISON)
							return -EHWPOISON;
						else
							return -EFAULT;
					}
					if (ret & VM_FAULT_SIGBUS)
						return i ? i : -EFAULT;
					FUNC0();
				}

				if (tsk) {
					if (ret & VM_FAULT_MAJOR)
						tsk->maj_flt++;
					else
						tsk->min_flt++;
				}

				/*
				 * The VM_FAULT_WRITE bit tells us that
				 * do_wp_page has broken COW when necessary,
				 * even if maybe_mkwrite decided not to set
				 * pte_write. We can thus safely do subsequent
				 * page lookups as if they were reads. But only
				 * do so when looping for pte_write is futile:
				 * in some cases userspace may also be wanting
				 * to write to the gotten user page, which a
				 * read fault here might prevent (a readonly
				 * page might get reCOWed by userspace write).
				 */
				if ((ret & VM_FAULT_WRITE) &&
				    !(vma->vm_flags & VM_WRITE))
					foll_flags &= ~FOLL_WRITE;

				FUNC5();
			}
			if (FUNC2(page))
				return i ? i : FUNC3(page);
			if (pages) {
				pages[i] = page;

				FUNC8(vma, page, start);
				FUNC9(page);
			}
			if (vmas)
				vmas[i] = vma;
			i++;
			start += PAGE_SIZE;
			nr_pages--;
		} while (nr_pages && start < vma->vm_end);
	} while (nr_pages);
	return i;
}