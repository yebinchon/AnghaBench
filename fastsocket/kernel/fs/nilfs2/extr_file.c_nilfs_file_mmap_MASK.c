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
struct vm_area_struct {int /*<<< orphan*/  vm_flags; int /*<<< orphan*/ * vm_ops; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VM_CAN_NONLINEAR ; 
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 int /*<<< orphan*/  nilfs_file_vm_ops ; 

__attribute__((used)) static int FUNC1(struct file *file, struct vm_area_struct *vma)
{
	FUNC0(file);
	vma->vm_ops = &nilfs_file_vm_ops;
	vma->vm_flags |= VM_CAN_NONLINEAR;
	return 0;
}