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
struct vm_area_struct {int /*<<< orphan*/  vm_flags; int /*<<< orphan*/ * vm_ops; struct file* vm_file; scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct file {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct file*) ; 
 int FUNC1 (struct file*) ; 
 int /*<<< orphan*/  VM_CAN_NONLINEAR ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 struct file* FUNC3 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shmem_vm_ops ; 

int FUNC4(struct vm_area_struct *vma)
{
	struct file *file;
	loff_t size = vma->vm_end - vma->vm_start;

	file = FUNC3("dev/zero", size, vma->vm_flags);
	if (FUNC0(file))
		return FUNC1(file);

	if (vma->vm_file)
		FUNC2(vma->vm_file);
	vma->vm_file = file;
	vma->vm_ops = &shmem_vm_ops;
	vma->vm_flags |= VM_CAN_NONLINEAR;
	return 0;
}