
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_pgoff; unsigned long vm_end; unsigned long vm_start; int vm_page_prot; int vm_flags; } ;
struct sa1100fb_info {int map_size; int map_dma; int map_cpu; int dev; } ;
struct TYPE_2__ {unsigned long smem_len; unsigned long mmio_start; scalar_t__ mmio_len; } ;
struct fb_info {TYPE_1__ fix; } ;


 int EINVAL ;
 unsigned long PAGE_ALIGN (scalar_t__) ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int VM_IO ;
 int dma_mmap_writecombine (int ,struct vm_area_struct*,int ,int ,int ) ;
 int io_remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int ) ;
 int pgprot_noncached (int ) ;

__attribute__((used)) static int sa1100fb_mmap(struct fb_info *info,
    struct vm_area_struct *vma)
{
 struct sa1100fb_info *fbi = (struct sa1100fb_info *)info;
 unsigned long start, len, off = vma->vm_pgoff << PAGE_SHIFT;

 if (off < info->fix.smem_len) {
  vma->vm_pgoff += 1;
  return dma_mmap_writecombine(fbi->dev, vma, fbi->map_cpu,
          fbi->map_dma, fbi->map_size);
 }

 start = info->fix.mmio_start;
 len = PAGE_ALIGN((start & ~PAGE_MASK) + info->fix.mmio_len);

 if ((vma->vm_end - vma->vm_start + off) > len)
  return -EINVAL;

 off += start & PAGE_MASK;
 vma->vm_pgoff = off >> PAGE_SHIFT;
 vma->vm_flags |= VM_IO;
 vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
 return io_remap_pfn_range(vma, vma->vm_start, off >> PAGE_SHIFT,
       vma->vm_end - vma->vm_start,
       vma->vm_page_prot);
}
