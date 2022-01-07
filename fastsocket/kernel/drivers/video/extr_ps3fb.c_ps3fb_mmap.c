
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; unsigned long vm_pgoff; int vm_page_prot; } ;
struct TYPE_2__ {unsigned long smem_len; scalar_t__ smem_start; } ;
struct fb_info {int device; TYPE_1__ fix; } ;


 int EAGAIN ;
 int EINVAL ;
 unsigned long PAGE_SHIFT ;
 int dev_dbg (int ,char*,unsigned long,unsigned long) ;
 scalar_t__ remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int ) ;

__attribute__((used)) static int ps3fb_mmap(struct fb_info *info, struct vm_area_struct *vma)
{
 unsigned long size, offset;

 size = vma->vm_end - vma->vm_start;
 offset = vma->vm_pgoff << PAGE_SHIFT;
 if (offset + size > info->fix.smem_len)
  return -EINVAL;

 offset += info->fix.smem_start;
 if (remap_pfn_range(vma, vma->vm_start, offset >> PAGE_SHIFT,
       size, vma->vm_page_prot))
  return -EAGAIN;

 dev_dbg(info->device, "ps3fb: mmap framebuffer P(%lx)->V(%lx)\n",
  offset, vma->vm_start);
 return 0;
}
