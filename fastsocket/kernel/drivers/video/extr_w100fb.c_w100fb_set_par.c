
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct w100fb_par {scalar_t__ xres; scalar_t__ yres; int extmem_active; TYPE_3__* mach; int mode; } ;
struct TYPE_8__ {int line_length; int smem_len; scalar_t__ ywrapstep; scalar_t__ ypanstep; int visual; } ;
struct TYPE_5__ {scalar_t__ xres; scalar_t__ yres; } ;
struct fb_info {int mm_lock; TYPE_4__ fix; TYPE_1__ var; struct w100fb_par* par; } ;
struct TYPE_7__ {TYPE_2__* mem; } ;
struct TYPE_6__ {int size; } ;


 int BITS_PER_PIXEL ;
 int FB_VISUAL_TRUECOLOR ;
 int MEM_INT_SIZE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int w100fb_activate_var (struct w100fb_par*) ;
 int w100fb_get_mode (struct w100fb_par*,scalar_t__*,scalar_t__*,int ) ;

__attribute__((used)) static int w100fb_set_par(struct fb_info *info)
{
 struct w100fb_par *par=info->par;

 if (par->xres != info->var.xres || par->yres != info->var.yres) {
  par->xres = info->var.xres;
  par->yres = info->var.yres;
  par->mode = w100fb_get_mode(par, &par->xres, &par->yres, 0);

  info->fix.visual = FB_VISUAL_TRUECOLOR;
  info->fix.ypanstep = 0;
  info->fix.ywrapstep = 0;
  info->fix.line_length = par->xres * BITS_PER_PIXEL / 8;

  mutex_lock(&info->mm_lock);
  if ((par->xres*par->yres*BITS_PER_PIXEL/8) > (MEM_INT_SIZE+1)) {
   par->extmem_active = 1;
   info->fix.smem_len = par->mach->mem->size+1;
  } else {
   par->extmem_active = 0;
   info->fix.smem_len = MEM_INT_SIZE+1;
  }
  mutex_unlock(&info->mm_lock);

  w100fb_activate_var(par);
 }
 return 0;
}
