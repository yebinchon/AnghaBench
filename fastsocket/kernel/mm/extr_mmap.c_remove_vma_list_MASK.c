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
struct vm_area_struct {int /*<<< orphan*/  vm_file; int /*<<< orphan*/  vm_flags; } ;
struct mm_struct {long total_vm; long cached_hole_size; } ;

/* Variables and functions */
 struct vm_area_struct* FUNC0 (struct vm_area_struct*) ; 
 unsigned int sysctl_unmap_area_factor ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 long FUNC5 (struct vm_area_struct*) ; 

__attribute__((used)) static void FUNC6(struct mm_struct *mm, struct vm_area_struct *vma)
{
	unsigned int unmap_factor = sysctl_unmap_area_factor;
	/* Update high watermark before we lower total_vm */
	FUNC2(mm);
	do {
		long nrpages = FUNC5(vma);

		mm->total_vm -= nrpages;
		if (FUNC1(unmap_factor))
			mm->cached_hole_size += nrpages;
		FUNC4(mm, vma->vm_flags, vma->vm_file, -nrpages);
		vma = FUNC0(vma);
	} while (vma);
	FUNC3(mm);
}