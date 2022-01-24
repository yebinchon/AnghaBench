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
struct vm_area_struct {unsigned long vm_start; int /*<<< orphan*/  vm_end; } ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 long ENOMEM ; 
 unsigned long PAGE_SHIFT ; 
 TYPE_1__* current ; 
 struct vm_area_struct* FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC1 (struct vm_area_struct*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*,unsigned long,unsigned long,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*,unsigned long,unsigned long,unsigned char*) ; 
 unsigned long FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static long FUNC6(unsigned long addr, unsigned long pages, unsigned char *vec)
{
	struct vm_area_struct *vma;
	unsigned long end;

	vma = FUNC0(current->mm, addr);
	if (!vma || addr < vma->vm_start)
		return -ENOMEM;

	end = FUNC2(vma->vm_end, addr + (pages << PAGE_SHIFT));

	if (FUNC1(vma)) {
		FUNC3(vma, addr, end, vec);
		return (end - addr) >> PAGE_SHIFT;
	}

	end = FUNC5(addr, end);

	if (FUNC1(vma))
		FUNC3(vma, addr, end, vec);
	else
		FUNC4(vma, addr, end, vec);

	return (end - addr) >> PAGE_SHIFT;
}