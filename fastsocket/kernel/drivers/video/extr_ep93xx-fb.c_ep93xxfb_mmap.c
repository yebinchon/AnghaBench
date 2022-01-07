
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned int vm_pgoff; } ;
struct TYPE_2__ {unsigned int smem_len; int smem_start; } ;
struct fb_info {TYPE_1__ fix; int screen_base; int dev; } ;


 int EINVAL ;
 unsigned int PAGE_SHIFT ;
 int dma_mmap_writecombine (int ,struct vm_area_struct*,int ,int ,unsigned int) ;

__attribute__((used)) static int ep93xxfb_mmap(struct fb_info *info, struct vm_area_struct *vma)
{
 unsigned int offset = vma->vm_pgoff << PAGE_SHIFT;

 if (offset < info->fix.smem_len) {
  return dma_mmap_writecombine(info->dev, vma, info->screen_base,
          info->fix.smem_start,
          info->fix.smem_len);
 }

 return -EINVAL;
}
