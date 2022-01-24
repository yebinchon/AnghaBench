#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned long val; } ;
typedef  TYPE_1__ swp_entry_t ;
struct vm_area_struct {unsigned long vm_flags; } ;
struct page {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mmlist; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 size_t FUNC0 (struct page*) ; 
 unsigned long VM_SHARED ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__) ; 
 scalar_t__ FUNC4 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  mmlist_lock ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__) ; 
 scalar_t__ FUNC21 (int) ; 
 struct page* FUNC22 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned long
FUNC23(struct mm_struct *dst_mm, struct mm_struct *src_mm,
		pte_t *dst_pte, pte_t *src_pte, struct vm_area_struct *vma,
		unsigned long addr, int *rss)
{
	unsigned long vm_flags = vma->vm_flags;
	pte_t pte = *src_pte;
	struct page *page;

	/* pte contains position in swap or file, so copy. */
	if (FUNC21(!FUNC12(pte))) {
		if (!FUNC9(pte)) {
			swp_entry_t entry = FUNC13(pte);

			if (FUNC19(entry) < 0)
				return entry.val;

			/* make sure dst_mm is on swapoff's mmlist. */
			if (FUNC21(FUNC6(&dst_mm->mmlist))) {
				FUNC17(&mmlist_lock);
				if (FUNC6(&dst_mm->mmlist))
					FUNC5(&dst_mm->mmlist,
						 &src_mm->mmlist);
				FUNC18(&mmlist_lock);
			}
			if (!FUNC3(entry))
				rss[2]++;
			else if (FUNC4(entry) &&
					FUNC2(vm_flags)) {
				/*
				 * COW mappings require pages in both parent
				 * and child to be set to read.
				 */
				FUNC7(&entry);
				pte = FUNC20(entry);
				FUNC16(src_mm, addr, src_pte, pte);
			}
		}
		goto out_set_pte;
	}

	/*
	 * If it's a COW mapping, write protect it both
	 * in the parent and the child
	 */
	if (FUNC2(vm_flags)) {
		FUNC15(src_mm, addr, src_pte);
		pte = FUNC14(pte);
	}

	/*
	 * If it's a shared mapping, mark it clean in
	 * the child
	 */
	if (vm_flags & VM_SHARED)
		pte = FUNC10(pte);
	pte = FUNC11(pte);

	page = FUNC22(vma, addr, pte);
	if (page) {
		FUNC1(page);
		FUNC8(page);
		rss[FUNC0(page)]++;
	}

out_set_pte:
	FUNC16(dst_mm, addr, dst_pte, pte);
	return 0;
}