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
struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_end; } ;
struct page {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  page_table_lock; } ;
struct hstate {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int VM_MAYWRITE ; 
 int VM_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct hstate* FUNC1 (struct vm_area_struct*) ; 
 unsigned long FUNC2 (struct hstate*) ; 
 int /*<<< orphan*/ * FUNC3 (struct mm_struct*,unsigned long,unsigned long,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 struct page* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(struct mm_struct *dst, struct mm_struct *src,
			    struct vm_area_struct *vma)
{
	pte_t *src_pte, *dst_pte, entry;
	struct page *ptepage;
	unsigned long addr;
	int cow;
	struct hstate *h = FUNC1(vma);
	unsigned long sz = FUNC2(h);
	bool shared = false;

	cow = (vma->vm_flags & (VM_SHARED | VM_MAYWRITE)) == VM_MAYWRITE;

	for (addr = vma->vm_start; addr < vma->vm_end; addr += sz) {
		src_pte = FUNC5(src, addr);
		if (!src_pte)
			continue;
		dst_pte = FUNC3(dst, addr, sz, &shared);
		if (!dst_pte)
			goto nomem;

		/* If the pagetables are shared don't copy or take references */
		if (shared)
			continue;

		FUNC11(&dst->page_table_lock);
		FUNC12(&src->page_table_lock, SINGLE_DEPTH_NESTING);
		if (!FUNC4(FUNC6(src_pte))) {
			if (cow)
				FUNC7(src, addr, src_pte);
			entry = FUNC6(src_pte);
			ptepage = FUNC9(entry);
			FUNC0(ptepage);
			FUNC8(ptepage);
			FUNC10(dst, addr, dst_pte, entry);
		}
		FUNC13(&src->page_table_lock);
		FUNC13(&dst->page_table_lock);
	}
	return 0;

nomem:
	return -ENOMEM;
}