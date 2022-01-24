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
struct vm_area_struct {int vm_flags; int /*<<< orphan*/  vm_mm; scalar_t__ vm_file; TYPE_1__* vm_ops; struct vm_area_struct* vm_next; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (struct vm_area_struct*) ;} ;

/* Variables and functions */
 int VM_EXECUTABLE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  vm_area_cachep ; 
 int /*<<< orphan*/  FUNC6 (struct vm_area_struct*) ; 

__attribute__((used)) static struct vm_area_struct *FUNC7(struct vm_area_struct *vma)
{
	struct vm_area_struct *next = vma->vm_next;

	FUNC2();
	if (vma->vm_ops && vma->vm_ops->close)
		vma->vm_ops->close(vma);
	if (vma->vm_file) {
		FUNC0(vma->vm_file);
		if (vma->vm_flags & VM_EXECUTABLE)
			FUNC4(vma->vm_mm);
	}
	FUNC3(FUNC6(vma));
	FUNC1(vm_area_cachep, vma);
	return next;
}