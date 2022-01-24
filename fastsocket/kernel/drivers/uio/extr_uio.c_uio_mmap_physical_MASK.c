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
struct vm_area_struct {int vm_flags; int /*<<< orphan*/  vm_page_prot; scalar_t__ vm_start; scalar_t__ vm_end; struct uio_device* vm_private_data; } ;
struct uio_device {TYPE_2__* info; } ;
struct TYPE_4__ {TYPE_1__* mem; } ;
struct TYPE_3__ {int addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int PAGE_SHIFT ; 
 int VM_IO ; 
 int VM_RESERVED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vm_area_struct*,scalar_t__,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC3(struct vm_area_struct *vma)
{
	struct uio_device *idev = vma->vm_private_data;
	int mi = FUNC2(vma);
	if (mi < 0)
		return -EINVAL;

	vma->vm_flags |= VM_IO | VM_RESERVED;

	vma->vm_page_prot = FUNC0(vma->vm_page_prot);

	return FUNC1(vma,
			       vma->vm_start,
			       idev->info->mem[mi].addr >> PAGE_SHIFT,
			       vma->vm_end - vma->vm_start,
			       vma->vm_page_prot);
}