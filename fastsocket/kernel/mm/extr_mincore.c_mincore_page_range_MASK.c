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
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*,unsigned long,unsigned long,unsigned char*) ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct vm_area_struct *vma,
			unsigned long addr, unsigned long end,
			unsigned char *vec)
{
	unsigned long next;
	pgd_t *pgd;

	pgd = FUNC4(vma->vm_mm, addr);
	do {
		next = FUNC2(addr, end);
		if (FUNC3(pgd))
			FUNC1(vma, addr, next, vec);
		else
			FUNC0(vma, pgd, addr, next, vec);
		vec += (next - addr) >> PAGE_SHIFT;
	} while (pgd++, addr = next, addr != end);
}