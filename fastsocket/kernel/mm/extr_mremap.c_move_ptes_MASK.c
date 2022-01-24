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
struct vm_area_struct {int /*<<< orphan*/  vm_page_prot; scalar_t__ vm_truncate_count; TYPE_1__* vm_file; struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
struct address_space {int /*<<< orphan*/  i_mmap_lock; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
struct TYPE_2__ {struct address_space* f_mapping; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * FUNC3 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct vm_area_struct *vma, pmd_t *old_pmd,
		unsigned long old_addr, unsigned long old_end,
		struct vm_area_struct *new_vma, pmd_t *new_pmd,
		unsigned long new_addr)
{
	struct address_space *mapping = NULL;
	struct mm_struct *mm = vma->vm_mm;
	pte_t *old_pte, *new_pte, pte;
	spinlock_t *old_ptl, *new_ptl;

	if (vma->vm_file) {
		/*
		 * Subtle point from Rajesh Venkatasubramanian: before
		 * moving file-based ptes, we must lock truncate_pagecache
		 * out, since it might clean the dst vma before the src vma,
		 * and we propagate stale pages into the dst afterward.
		 */
		mapping = vma->vm_file->f_mapping;
		FUNC11(&mapping->i_mmap_lock);
		new_vma->vm_truncate_count = 0;
	}

	/*
	 * We don't have to worry about the ordering of src and dst
	 * pte locks because exclusive mmap_sem prevents deadlock.
	 */
	old_pte = FUNC5(mm, old_pmd, old_addr, &old_ptl);
 	new_pte = FUNC6(new_pmd, new_addr);
	new_ptl = FUNC3(mm, new_pmd);
	if (new_ptl != old_ptl)
		FUNC12(new_ptl, SINGLE_DEPTH_NESTING);
	FUNC0();

	for (; old_addr < old_end; old_pte++, old_addr += PAGE_SIZE,
				   new_pte++, new_addr += PAGE_SIZE) {
		if (FUNC4(*old_pte))
			continue;
		pte = FUNC9(mm, old_addr, old_pte);
		pte = FUNC2(pte, new_vma->vm_page_prot, old_addr, new_addr);
		FUNC10(mm, new_addr, new_pte, pte);
	}

	FUNC1();
	if (new_ptl != old_ptl)
		FUNC13(new_ptl);
	FUNC7(new_pte - 1);
	FUNC8(old_pte - 1, old_ptl);
	if (mapping)
		FUNC13(&mapping->i_mmap_lock);
}