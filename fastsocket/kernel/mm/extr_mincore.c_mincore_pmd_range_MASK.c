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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 scalar_t__ FUNC0 (struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*,unsigned long,unsigned long,unsigned char*) ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct vm_area_struct *vma, pud_t *pud,
			unsigned long addr, unsigned long end,
			unsigned char *vec)
{
	unsigned long next;
	pmd_t *pmd;

	pmd = FUNC5(pud, addr);
	do {
		next = FUNC3(addr, end);
		if (FUNC6(*pmd)) {
			if (FUNC0(vma, pmd, addr, next, vec)) {
				vec += (next - addr) >> PAGE_SHIFT;
				continue;
			}
			/* fall through */
		}
		if (FUNC4(pmd))
			FUNC2(vma, addr, next, vec);
		else
			FUNC1(vma, pmd, addr, next, vec);
		vec += (next - addr) >> PAGE_SHIFT;
	} while (pmd++, addr = next, addr != end);
}