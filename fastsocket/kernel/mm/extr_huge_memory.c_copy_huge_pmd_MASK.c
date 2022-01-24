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
struct vm_area_struct {int /*<<< orphan*/  anon_vma; } ;
struct page {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  page_table_lock; int /*<<< orphan*/  nr_ptes; } ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgtable_t ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HPAGE_PMD_NR ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  anon_rss ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct page* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC12 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct mm_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC20(struct mm_struct *dst_mm, struct mm_struct *src_mm,
		  pmd_t *dst_pmd, pmd_t *src_pmd, unsigned long addr,
		  struct vm_area_struct *vma)
{
	struct page *src_page;
	pmd_t pmd;
	pgtable_t pgtable;
	int ret;

	ret = -ENOMEM;
	pgtable = FUNC12(dst_mm, addr);
	if (FUNC18(!pgtable))
		goto out;

	FUNC15(&dst_mm->page_table_lock);
	FUNC16(&src_mm->page_table_lock, SINGLE_DEPTH_NESTING);

	ret = -EAGAIN;
	pmd = *src_pmd;
	if (FUNC18(!FUNC7(pmd))) {
		FUNC13(dst_mm, pgtable);
		goto out_unlock;
	}
	if (FUNC18(FUNC8(pmd))) {
		/* split huge page running from under us */
		FUNC17(&src_mm->page_table_lock);
		FUNC17(&dst_mm->page_table_lock);
		FUNC13(dst_mm, pgtable);

		FUNC19(vma->anon_vma, src_pmd); /* src_vma */
		goto out;
	}
	src_page = FUNC6(pmd);
	FUNC1(!FUNC0(src_page));
	FUNC3(src_page);
	FUNC4(src_page);
	FUNC2(dst_mm, anon_rss, HPAGE_PMD_NR);

	FUNC10(src_mm, addr, src_pmd);
	pmd = FUNC5(FUNC9(pmd));
	FUNC14(dst_mm, addr, dst_pmd, pmd);
	FUNC11(pgtable, dst_mm);
	dst_mm->nr_ptes++;

	ret = 0;
out_unlock:
	FUNC17(&src_mm->page_table_lock);
	FUNC17(&dst_mm->page_table_lock);
out:
	return ret;
}