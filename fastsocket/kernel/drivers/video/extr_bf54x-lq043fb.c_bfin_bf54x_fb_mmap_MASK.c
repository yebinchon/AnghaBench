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
struct vm_area_struct {unsigned long vm_start; int vm_flags; scalar_t__ vm_end; } ;
struct TYPE_2__ {scalar_t__ smem_len; } ;
struct fb_info {TYPE_1__ fix; struct bfin_bf54xfb_info* par; } ;
struct bfin_bf54xfb_info {int lq043_mmap; scalar_t__ fb_buffer; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int VM_MAYSHARE ; 
 int VM_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct fb_info *info, struct vm_area_struct *vma)
{

	struct bfin_bf54xfb_info *fbi = info->par;

	if (fbi->lq043_mmap)
		return -1;

	FUNC0(&fbi->lock);
	fbi->lq043_mmap = 1;
	FUNC1(&fbi->lock);

	vma->vm_start = (unsigned long)(fbi->fb_buffer);

	vma->vm_end = vma->vm_start + info->fix.smem_len;
	/* For those who don't understand how mmap works, go read
	 *   Documentation/nommu-mmap.txt.
	 * For those that do, you will know that the VM_MAYSHARE flag
	 * must be set in the vma->vm_flags structure on noMMU
	 *   Other flags can be set, and are documented in
	 *   include/linux/mm.h
	 */
	vma->vm_flags |=  VM_MAYSHARE | VM_SHARED;

	return 0;
}