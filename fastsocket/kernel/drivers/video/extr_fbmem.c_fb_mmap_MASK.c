#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long u32 ;
struct vm_area_struct {unsigned long vm_pgoff; unsigned long vm_end; unsigned long vm_start; int vm_flags; int /*<<< orphan*/  vm_page_prot; } ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct fb_ops {int (* fb_mmap ) (struct fb_info*,struct vm_area_struct*) ;} ;
struct TYPE_8__ {unsigned long smem_start; unsigned long mmio_start; scalar_t__ mmio_len; scalar_t__ smem_len; } ;
struct TYPE_7__ {scalar_t__ accel_flags; } ;
struct fb_info {int /*<<< orphan*/  mm_lock; TYPE_4__ fix; TYPE_3__ var; struct fb_ops* fbops; } ;
struct TYPE_5__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int ENODEV ; 
 unsigned long FUNC0 (scalar_t__) ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int VM_IO ; 
 int VM_RESERVED ; 
 int /*<<< orphan*/  FUNC1 (struct file*,struct vm_area_struct*,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct fb_info** registered_fb ; 
 int FUNC6 (struct fb_info*,struct vm_area_struct*) ; 

__attribute__((used)) static int
FUNC7(struct file *file, struct vm_area_struct * vma)
{
	int fbidx = FUNC2(file->f_path.dentry->d_inode);
	struct fb_info *info = registered_fb[fbidx];
	struct fb_ops *fb = info->fbops;
	unsigned long off;
	unsigned long start;
	u32 len;

	if (vma->vm_pgoff > (~0UL >> PAGE_SHIFT))
		return -EINVAL;
	off = vma->vm_pgoff << PAGE_SHIFT;
	if (!fb)
		return -ENODEV;
	FUNC4(&info->mm_lock);
	if (fb->fb_mmap) {
		int res;
		res = fb->fb_mmap(info, vma);
		FUNC5(&info->mm_lock);
		return res;
	}

	/* frame buffer memory */
	start = info->fix.smem_start;
	len = FUNC0((start & ~PAGE_MASK) + info->fix.smem_len);
	if (off >= len) {
		/* memory mapped io */
		off -= len;
		if (info->var.accel_flags) {
			FUNC5(&info->mm_lock);
			return -EINVAL;
		}
		start = info->fix.mmio_start;
		len = FUNC0((start & ~PAGE_MASK) + info->fix.mmio_len);
	}
	FUNC5(&info->mm_lock);
	start &= PAGE_MASK;
	if ((vma->vm_end - vma->vm_start + off) > len)
		return -EINVAL;
	off += start;
	vma->vm_pgoff = off >> PAGE_SHIFT;
	/* This is an IO map - tell maydump to skip this VMA */
	vma->vm_flags |= VM_IO | VM_RESERVED;
	FUNC1(file, vma, off);
	if (FUNC3(vma, vma->vm_start, off >> PAGE_SHIFT,
			     vma->vm_end - vma->vm_start, vma->vm_page_prot))
		return -EAGAIN;
	return 0;
}