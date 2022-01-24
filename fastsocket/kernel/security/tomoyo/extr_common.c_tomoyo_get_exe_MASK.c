#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int vm_flags; TYPE_1__* vm_file; struct vm_area_struct* vm_next; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; struct vm_area_struct* mmap; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  f_path; } ;

/* Variables and functions */
 int VM_EXECUTABLE ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *FUNC3(void)
{
	struct mm_struct *mm = current->mm;
	struct vm_area_struct *vma;
	const char *cp = NULL;

	if (!mm)
		return NULL;
	FUNC0(&mm->mmap_sem);
	for (vma = mm->mmap; vma; vma = vma->vm_next) {
		if ((vma->vm_flags & VM_EXECUTABLE) && vma->vm_file) {
			cp = FUNC1(&vma->vm_file->f_path);
			break;
		}
	}
	FUNC2(&mm->mmap_sem);
	return cp;
}