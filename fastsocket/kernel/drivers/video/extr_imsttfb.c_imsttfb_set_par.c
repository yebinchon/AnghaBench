
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct imstt_par {int dummy; } ;
struct TYPE_3__ {int length; } ;
struct TYPE_4__ {int pixclock; int bits_per_pixel; TYPE_1__ green; int yres; int xres; } ;
struct fb_info {TYPE_2__ var; struct imstt_par* par; } ;


 int EINVAL ;
 int compute_imstt_regvals (struct imstt_par*,int ,int ) ;
 int getclkMHz (struct imstt_par*) ;
 int set_555 (struct imstt_par*) ;
 int set_565 (struct imstt_par*) ;
 int set_imstt_regvals (struct fb_info*,int ) ;

__attribute__((used)) static int
imsttfb_set_par(struct fb_info *info)
{
 struct imstt_par *par = info->par;

 if (!compute_imstt_regvals(par, info->var.xres, info->var.yres))
  return -EINVAL;

 if (info->var.green.length == 6)
  set_565(par);
 else
  set_555(par);
 set_imstt_regvals(info, info->var.bits_per_pixel);
 info->var.pixclock = 1000000 / getclkMHz(par);
 return 0;
}
