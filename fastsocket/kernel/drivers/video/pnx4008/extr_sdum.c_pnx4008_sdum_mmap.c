
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_pgoff; } ;
struct TYPE_3__ {unsigned long smem_len; } ;
struct fb_info {TYPE_1__ fix; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int lcd_phys_start; scalar_t__ lcd_virt_start; } ;


 int EINVAL ;
 int FB_DMA_SIZE ;
 unsigned long PAGE_SHIFT ;
 int dma_mmap_writecombine (struct device*,struct vm_area_struct*,void*,int ,int ) ;
 TYPE_2__ dum_data ;

int pnx4008_sdum_mmap(struct fb_info *info, struct vm_area_struct *vma,
        struct device *dev)
{
 unsigned long off = vma->vm_pgoff << PAGE_SHIFT;

 if (off < info->fix.smem_len) {
  vma->vm_pgoff += 1;
  return dma_mmap_writecombine(dev, vma,
    (void *)dum_data.lcd_virt_start,
    dum_data.lcd_phys_start,
    FB_DMA_SIZE);
 }
 return -EINVAL;
}
