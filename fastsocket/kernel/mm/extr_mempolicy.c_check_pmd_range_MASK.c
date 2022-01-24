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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  nodemask_t ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long,int /*<<< orphan*/  const*,unsigned long,void*) ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC5(struct vm_area_struct *vma, pud_t *pud,
		unsigned long addr, unsigned long end,
		const nodemask_t *nodes, unsigned long flags,
		void *private)
{
	pmd_t *pmd;
	unsigned long next;

	pmd = FUNC3(pud, addr);
	do {
		next = FUNC1(addr, end);
		FUNC4(vma->vm_mm, pmd);
		if (FUNC2(pmd))
			continue;
		if (FUNC0(vma, pmd, addr, next, nodes,
				    flags, private))
			return -EIO;
	} while (pmd++, addr = next, addr != end);
	return 0;
}