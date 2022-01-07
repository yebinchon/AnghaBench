
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; int vm_flags; scalar_t__ vm_end; } ;
struct TYPE_2__ {scalar_t__ smem_len; } ;
struct fb_info {TYPE_1__ fix; struct bfin_bf54xfb_info* par; } ;
struct bfin_bf54xfb_info {int lq043_mmap; scalar_t__ fb_buffer; int lock; } ;


 int VM_MAYSHARE ;
 int VM_SHARED ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int bfin_bf54x_fb_mmap(struct fb_info *info, struct vm_area_struct *vma)
{

 struct bfin_bf54xfb_info *fbi = info->par;

 if (fbi->lq043_mmap)
  return -1;

 spin_lock(&fbi->lock);
 fbi->lq043_mmap = 1;
 spin_unlock(&fbi->lock);

 vma->vm_start = (unsigned long)(fbi->fb_buffer);

 vma->vm_end = vma->vm_start + info->fix.smem_len;







 vma->vm_flags |= VM_MAYSHARE | VM_SHARED;

 return 0;
}
