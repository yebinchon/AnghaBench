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
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int vm_flags; int /*<<< orphan*/  anon_vma; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int ENOMEM ; 
 int VM_HUGETLB ; 
 int VM_INSERTPAGE ; 
 int VM_NONLINEAR ; 
 int VM_PFNMAP ; 
 int FUNC0 (struct mm_struct*,struct mm_struct*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*,struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct vm_area_struct*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*) ; 
 scalar_t__ FUNC4 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*,unsigned long,unsigned long) ; 
 unsigned long FUNC7 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (struct mm_struct*,unsigned long) ; 
 int FUNC10 (struct vm_area_struct*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

int FUNC12(struct mm_struct *dst_mm, struct mm_struct *src_mm,
		struct vm_area_struct *vma)
{
	pgd_t *src_pgd, *dst_pgd;
	unsigned long next;
	unsigned long addr = vma->vm_start;
	unsigned long end = vma->vm_end;
	int ret;

	/*
	 * Don't copy ptes where a page fault will fill them correctly.
	 * Fork becomes much lighter when there are big shared or private
	 * readonly mappings. The tradeoff is that copy_page_range is more
	 * efficient than faulting.
	 */
	if (!(vma->vm_flags & (VM_HUGETLB|VM_NONLINEAR|VM_PFNMAP|VM_INSERTPAGE))) {
		if (!vma->anon_vma)
			return 0;
	}

	if (FUNC4(vma))
		return FUNC0(dst_mm, src_mm, vma);

	if (FUNC11(FUNC3(vma))) {
		/*
		 * We do not free on error cases below as remove_vma
		 * gets called on error from higher level routine
		 */
		ret = FUNC10(vma);
		if (ret)
			return ret;
	}

	/*
	 * We need to invalidate the secondary MMU mappings only when
	 * there could be a permission downgrade on the ptes of the
	 * parent mm. And a permission downgrade will only happen if
	 * is_cow_mapping() returns true.
	 */
	if (FUNC2(vma->vm_flags))
		FUNC6(src_mm, addr, end);

	ret = 0;
	dst_pgd = FUNC9(dst_mm, addr);
	src_pgd = FUNC9(src_mm, addr);
	do {
		next = FUNC7(addr, end);
		if (FUNC8(src_pgd))
			continue;
		if (FUNC11(FUNC1(dst_mm, src_mm, dst_pgd, src_pgd,
					    vma, addr, next))) {
			ret = -ENOMEM;
			break;
		}
	} while (dst_pgd++, src_pgd++, addr = next, addr != end);

	if (FUNC2(vma->vm_flags))
		FUNC5(src_mm,
						  vma->vm_start, end);
	return ret;
}