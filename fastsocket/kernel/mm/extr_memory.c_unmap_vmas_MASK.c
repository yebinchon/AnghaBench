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
struct zap_details {int /*<<< orphan*/ * i_mmap_lock; } ;
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int vm_flags; struct mm_struct* vm_mm; scalar_t__ vm_file; struct vm_area_struct* vm_next; } ;
struct mmu_gather {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long PAGE_SHIFT ; 
 int VM_ACCOUNT ; 
 long ZAP_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*) ; 
 unsigned long FUNC5 (unsigned long,unsigned long) ; 
 unsigned long FUNC6 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct mm_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct mm_struct*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC9 () ; 
 unsigned long FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct mmu_gather*,unsigned long,unsigned long) ; 
 struct mmu_gather* FUNC13 (struct mm_struct*,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct vm_area_struct*,unsigned long,unsigned long,int /*<<< orphan*/ *) ; 
 unsigned long FUNC16 (struct mmu_gather*,struct vm_area_struct*,unsigned long,unsigned long,long*,struct zap_details*) ; 
 int /*<<< orphan*/  FUNC17 (struct vm_area_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

unsigned long FUNC18(struct mmu_gather **tlbp,
		struct vm_area_struct *vma, unsigned long start_addr,
		unsigned long end_addr, unsigned long *nr_accounted,
		struct zap_details *details, int fullmm)
{
	long zap_work = ZAP_BLOCK_SIZE;
	unsigned long tlb_start = 0;	/* For tlb_finish_mmu */
	int tlb_start_valid = 0;
	unsigned long start = start_addr;
	spinlock_t *i_mmap_lock = details? details->i_mmap_lock: NULL;
	struct mm_struct *mm = vma->vm_mm;

	/*
	 * mmu_notifier_invalidate_range_start can sleep. Don't initialize
	 * mmu_gather until it completes
	 */
	FUNC8(mm, start_addr, end_addr);
	*tlbp = FUNC13(mm, fullmm);
	for ( ; vma && vma->vm_start < end_addr; vma = vma->vm_next) {
		unsigned long end;

		start = FUNC5(vma->vm_start, start_addr);
		if (start >= vma->vm_end)
			continue;
		end = FUNC6(vma->vm_end, end_addr);
		if (end <= vma->vm_start)
			continue;

		if (vma->vm_flags & VM_ACCOUNT)
			*nr_accounted += (end - start) >> PAGE_SHIFT;

		if (FUNC14(FUNC3(vma)))
			FUNC17(vma, 0, 0);

		while (start != end) {
			if (!tlb_start_valid) {
				tlb_start = start;
				tlb_start_valid = 1;
			}

			if (FUNC14(FUNC4(vma))) {
				/*
				 * It is undesirable to test vma->vm_file as it
				 * should be non-null for valid hugetlb area.
				 * However, vm_file will be NULL in the error
				 * cleanup path of do_mmap_pgoff. When
				 * hugetlbfs ->mmap method fails,
				 * do_mmap_pgoff() nullifies vma->vm_file
				 * before calling this function to clean up.
				 * Since no pte has actually been setup, it is
				 * safe to do nothing in this case.
				 */
				if (vma->vm_file) {
					FUNC15(vma, start, end, NULL);
					zap_work -= (end - start) /
					FUNC10(FUNC2(vma));
				}

				start = end;
			} else
				start = FUNC16(*tlbp, vma,
						start, end, &zap_work, details);

			if (zap_work > 0) {
				FUNC0(start != end);
				break;
			}

			FUNC12(*tlbp, tlb_start, start);

			if (FUNC9() ||
				(i_mmap_lock && FUNC11(i_mmap_lock))) {
				if (i_mmap_lock) {
					*tlbp = NULL;
					goto out;
				}
				FUNC1();
			}

			*tlbp = FUNC13(vma->vm_mm, fullmm);
			tlb_start_valid = 0;
			zap_work = ZAP_BLOCK_SIZE;
		}
	}
out:
	FUNC7(mm, start_addr, end_addr);
	return start;	/* which is now the end (or restart) address */
}