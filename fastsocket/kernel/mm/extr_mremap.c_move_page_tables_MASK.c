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
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 unsigned long HPAGE_PMD_SIZE ; 
 unsigned long LATENCY_LIMIT ; 
 unsigned long PMD_MASK ; 
 unsigned long PMD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int FUNC10 (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long,struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

unsigned long FUNC15(struct vm_area_struct *vma,
		unsigned long old_addr, struct vm_area_struct *new_vma,
		unsigned long new_addr, unsigned long len)
{
	unsigned long extent, next, old_end;
	pmd_t *old_pmd, *new_pmd;
	bool need_flush = false;

	old_end = old_addr + len;
	FUNC4(vma, old_addr, old_end);

	FUNC9(vma->vm_mm, old_addr, old_end);

	for (; old_addr < old_end; old_addr += extent, new_addr += extent) {
		FUNC3();
		next = (old_addr + PMD_SIZE) & PMD_MASK;
		if (next - 1 > old_end)
			next = old_end;
		extent = next - old_addr;
		old_pmd = FUNC6(vma->vm_mm, old_addr);
		if (!old_pmd)
			continue;
		new_pmd = FUNC2(vma->vm_mm, vma, new_addr);
		if (!new_pmd)
			break;
		if (FUNC13(*old_pmd)) {
			int err = 0;
			if (extent == HPAGE_PMD_SIZE)
				err = FUNC10(vma, old_addr,
						    new_addr, old_end,
						    old_pmd, new_pmd);
			if (err > 0) {
				need_flush = true;
				continue;
			} else if (!err)
				FUNC14(vma->vm_mm, old_pmd);
			FUNC0(FUNC13(*old_pmd));
		}
		if (FUNC12(*new_pmd) && FUNC1(new_vma->vm_mm, new_vma,
						      new_pmd,
						      new_addr))
			break;
		next = (new_addr + PMD_SIZE) & PMD_MASK;
		if (extent > next - new_addr)
			extent = next - new_addr;
		if (extent > LATENCY_LIMIT)
			extent = LATENCY_LIMIT;
		FUNC11(vma, old_pmd, old_addr, old_addr + extent,
				new_vma, new_pmd, new_addr);
		need_flush = true;
	}
	if (FUNC7(need_flush))
		FUNC5(vma, old_end-len, old_addr);

	FUNC8(vma->vm_mm, old_end-len, old_end);

	return len + old_addr - old_end;	/* how much done */
}