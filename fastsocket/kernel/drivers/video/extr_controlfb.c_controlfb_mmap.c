
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long u32 ;
struct vm_area_struct {unsigned long vm_pgoff; unsigned long vm_end; unsigned long vm_start; int vm_page_prot; } ;
struct TYPE_4__ {unsigned long smem_start; unsigned long mmio_start; scalar_t__ mmio_len; scalar_t__ smem_len; } ;
struct TYPE_3__ {scalar_t__ accel_flags; } ;
struct fb_info {TYPE_2__ fix; TYPE_1__ var; } ;


 int EAGAIN ;
 int EINVAL ;
 unsigned long PAGE_ALIGN (scalar_t__) ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ io_remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int ) ;
 int pgprot_cached_wthru (int ) ;
 int pgprot_noncached (int ) ;

__attribute__((used)) static int controlfb_mmap(struct fb_info *info,
                       struct vm_area_struct *vma)
{
       unsigned long off, start;
       u32 len;

       off = vma->vm_pgoff << PAGE_SHIFT;


       start = info->fix.smem_start;
       len = PAGE_ALIGN((start & ~PAGE_MASK)+info->fix.smem_len);
       if (off >= len) {

               off -= len;
               if (info->var.accel_flags)
                       return -EINVAL;
               start = info->fix.mmio_start;
               len = PAGE_ALIGN((start & ~PAGE_MASK)+info->fix.mmio_len);
        vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
       } else {

        vma->vm_page_prot = pgprot_cached_wthru(vma->vm_page_prot);
       }
       start &= PAGE_MASK;
       if ((vma->vm_end - vma->vm_start + off) > len)
         return -EINVAL;
       off += start;
       vma->vm_pgoff = off >> PAGE_SHIFT;
       if (io_remap_pfn_range(vma, vma->vm_start, off >> PAGE_SHIFT,
           vma->vm_end - vma->vm_start, vma->vm_page_prot))
               return -EAGAIN;

       return 0;
}
