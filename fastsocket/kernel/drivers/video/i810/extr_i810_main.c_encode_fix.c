
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int physical; } ;
struct i810fb_par {int mmio_start_phys; int pitch; TYPE_1__ fb; } ;
struct TYPE_4__ {int bits_per_pixel; int nonstd; } ;
struct fb_info {TYPE_2__ var; int mm_lock; struct i810fb_par* par; } ;
struct fb_fix_screeninfo {int xpanstep; int ypanstep; int accel; int mmio_len; int mmio_start; int line_length; scalar_t__ ywrapstep; int visual; scalar_t__ type_aux; int type; int smem_len; int smem_start; int id; } ;


 int EINVAL ;
 int FB_ACCEL_I810 ;
 int FB_TYPE_PACKED_PIXELS ;
 int FB_VISUAL_DIRECTCOLOR ;
 int FB_VISUAL_PSEUDOCOLOR ;
 int FB_VISUAL_TRUECOLOR ;
 int MMIO_SIZE ;
 int memset (struct fb_fix_screeninfo*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int encode_fix(struct fb_fix_screeninfo *fix, struct fb_info *info)
{
 struct i810fb_par *par = info->par;

     memset(fix, 0, sizeof(struct fb_fix_screeninfo));

     strcpy(fix->id, "I810");
 mutex_lock(&info->mm_lock);
     fix->smem_start = par->fb.physical;
     fix->smem_len = par->fb.size;
 mutex_unlock(&info->mm_lock);
     fix->type = FB_TYPE_PACKED_PIXELS;
     fix->type_aux = 0;
 fix->xpanstep = 8;
 fix->ypanstep = 1;

     switch (info->var.bits_per_pixel) {
 case 8:
      fix->visual = FB_VISUAL_PSEUDOCOLOR;
      break;
 case 16:
 case 24:
 case 32:
  if (info->var.nonstd)
   fix->visual = FB_VISUAL_DIRECTCOLOR;
  else
   fix->visual = FB_VISUAL_TRUECOLOR;
      break;
 default:
  return -EINVAL;
 }
     fix->ywrapstep = 0;
 fix->line_length = par->pitch;
 fix->mmio_start = par->mmio_start_phys;
 fix->mmio_len = MMIO_SIZE;
 fix->accel = FB_ACCEL_I810;

 return 0;
}
