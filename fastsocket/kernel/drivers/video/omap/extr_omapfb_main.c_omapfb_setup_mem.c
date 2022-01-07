
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_6__ {scalar_t__ enabled; } ;
struct omapfb_plane_struct {size_t idx; TYPE_2__ info; struct omapfb_device* fbdev; } ;
struct omapfb_mem_region {size_t size; scalar_t__ type; unsigned long paddr; } ;
struct omapfb_mem_info {scalar_t__ type; int size; } ;
struct fb_var_screeninfo {int dummy; } ;
struct TYPE_5__ {struct omapfb_mem_region* region; } ;
struct omapfb_device {TYPE_3__* ctrl; struct fb_var_screeninfo new_var; TYPE_1__ mem_desc; } ;
struct TYPE_8__ {scalar_t__ smem_len; scalar_t__ smem_start; } ;
struct fb_info {int mm_lock; TYPE_4__ fix; struct fb_var_screeninfo var; struct omapfb_plane_struct* par; } ;
struct TYPE_7__ {int (* setup_mem ) (size_t,size_t,scalar_t__,unsigned long*) ;int (* sync ) () ;} ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ OMAPFB_MEMTYPE_MAX ;
 size_t PAGE_ALIGN (int ) ;
 int memcpy (struct fb_var_screeninfo*,struct fb_var_screeninfo*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omapfb_rqueue_lock (struct omapfb_device*) ;
 int omapfb_rqueue_unlock (struct omapfb_device*) ;
 int set_fb_fix (struct fb_info*,int ) ;
 int set_fb_var (struct fb_info*,struct fb_var_screeninfo*) ;
 int stub1 () ;
 int stub2 (size_t,size_t,scalar_t__,unsigned long*) ;

__attribute__((used)) static int omapfb_setup_mem(struct fb_info *fbi, struct omapfb_mem_info *mi)
{
 struct omapfb_plane_struct *plane = fbi->par;
 struct omapfb_device *fbdev = plane->fbdev;
 struct omapfb_mem_region *rg = &fbdev->mem_desc.region[plane->idx];
 size_t size;
 int r = 0;

 if (fbdev->ctrl->setup_mem == ((void*)0))
  return -ENODEV;
 if (mi->type > OMAPFB_MEMTYPE_MAX)
  return -EINVAL;

 size = PAGE_ALIGN(mi->size);
 omapfb_rqueue_lock(fbdev);
 if (plane->info.enabled) {
  r = -EBUSY;
  goto out;
 }
 if (rg->size != size || rg->type != mi->type) {
  struct fb_var_screeninfo *new_var = &fbdev->new_var;
  unsigned long old_size = rg->size;
  u8 old_type = rg->type;
  unsigned long paddr;

  rg->size = size;
  rg->type = mi->type;






  if (old_size != size && size) {
   if (size) {
    memcpy(new_var, &fbi->var, sizeof(*new_var));
    r = set_fb_var(fbi, new_var);
    if (r < 0)
     goto out;
   }
  }

  if (fbdev->ctrl->sync)
   fbdev->ctrl->sync();
  r = fbdev->ctrl->setup_mem(plane->idx, size, mi->type, &paddr);
  if (r < 0) {

   rg->size = old_size;
   rg->type = old_type;
   goto out;
  }
  rg->paddr = paddr;

  if (old_size != size) {
   if (size) {
    memcpy(&fbi->var, new_var, sizeof(fbi->var));
    set_fb_fix(fbi, 0);
   } else {





    mutex_lock(&fbi->mm_lock);
    fbi->fix.smem_start = 0;
    fbi->fix.smem_len = 0;
    mutex_unlock(&fbi->mm_lock);
   }
  }
 }
out:
 omapfb_rqueue_unlock(fbdev);

 return r;
}
