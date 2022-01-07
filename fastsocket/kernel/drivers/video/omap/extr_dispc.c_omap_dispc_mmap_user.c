
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long u32 ;
struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; unsigned long vm_pgoff; int vm_flags; int vm_page_prot; void* vm_private_data; int * vm_ops; } ;
struct omapfb_plane_struct {size_t idx; } ;
struct TYPE_3__ {unsigned long smem_start; unsigned long smem_len; } ;
struct fb_info {TYPE_1__ fix; struct omapfb_plane_struct* par; } ;
struct TYPE_4__ {int * map_count; } ;


 int EAGAIN ;
 int EINVAL ;
 unsigned long PAGE_SHIFT ;
 int VM_IO ;
 int VM_RESERVED ;
 int atomic_inc (int *) ;
 TYPE_2__ dispc ;
 scalar_t__ io_remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int ) ;
 int mmap_user_ops ;
 int pgprot_writecombine (int ) ;

__attribute__((used)) static int omap_dispc_mmap_user(struct fb_info *info,
    struct vm_area_struct *vma)
{
 struct omapfb_plane_struct *plane = info->par;
 unsigned long off;
 unsigned long start;
 u32 len;

 if (vma->vm_end - vma->vm_start == 0)
  return 0;
 if (vma->vm_pgoff > (~0UL >> PAGE_SHIFT))
  return -EINVAL;
 off = vma->vm_pgoff << PAGE_SHIFT;

 start = info->fix.smem_start;
 len = info->fix.smem_len;
 if (off >= len)
  return -EINVAL;
 if ((vma->vm_end - vma->vm_start + off) > len)
  return -EINVAL;
 off += start;
 vma->vm_pgoff = off >> PAGE_SHIFT;
 vma->vm_flags |= VM_IO | VM_RESERVED;
 vma->vm_page_prot = pgprot_writecombine(vma->vm_page_prot);
 vma->vm_ops = &mmap_user_ops;
 vma->vm_private_data = (void *)plane->idx;
 if (io_remap_pfn_range(vma, vma->vm_start, off >> PAGE_SHIFT,
        vma->vm_end - vma->vm_start, vma->vm_page_prot))
  return -EAGAIN;

 atomic_inc(&dispc.map_count[plane->idx]);
 return 0;
}
