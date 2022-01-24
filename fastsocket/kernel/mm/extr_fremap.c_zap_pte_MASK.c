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
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mm_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  file_rss ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct mm_struct*) ; 
 struct page* FUNC14 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct mm_struct *mm, struct vm_area_struct *vma,
			unsigned long addr, pte_t *ptep)
{
	pte_t pte = *ptep;

	if (FUNC9(pte)) {
		struct page *page;

		FUNC1(vma, addr, FUNC8(pte));
		pte = FUNC11(vma, addr, ptep);
		page = FUNC14(vma, addr, pte);
		if (page) {
			if (FUNC6(pte))
				FUNC12(page);
			FUNC4(page);
			FUNC3(page);
			FUNC13(mm);
			FUNC0(mm, file_rss);
		}
	} else {
		if (!FUNC7(pte))
			FUNC2(FUNC10(pte));
		FUNC5(mm, addr, ptep, 0);
	}
}