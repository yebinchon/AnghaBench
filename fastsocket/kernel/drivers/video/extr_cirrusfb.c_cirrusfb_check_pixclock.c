
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fb_var_screeninfo {int bits_per_pixel; int pixclock; } ;
struct TYPE_3__ {scalar_t__ smem_len; } ;
struct fb_info {TYPE_1__ fix; int device; struct cirrusfb_info* par; } ;
struct cirrusfb_info {size_t btype; int multiplexing; int doubleVCLK; } ;
struct TYPE_4__ {long* maxclock; } ;






 int EINVAL ;
 scalar_t__ MB_ ;
 long PICOS2KHZ (int ) ;
 TYPE_2__* cirrusfb_board_info ;
 int dev_dbg (int ,char*,long) ;
 int dev_err (int ,char*,long) ;

__attribute__((used)) static int cirrusfb_check_pixclock(const struct fb_var_screeninfo *var,
       struct fb_info *info)
{
 long freq;
 long maxclock;
 struct cirrusfb_info *cinfo = info->par;
 unsigned maxclockidx = var->bits_per_pixel >> 3;


 freq = PICOS2KHZ(var->pixclock);

 dev_dbg(info->device, "desired pixclock: %ld kHz\n", freq);

 maxclock = cirrusfb_board_info[cinfo->btype].maxclock[maxclockidx];
 cinfo->multiplexing = 0;



 if (freq > maxclock) {
  dev_err(info->device,
   "Frequency greater than maxclock (%ld kHz)\n",
   maxclock);
  return -EINVAL;
 }




 if (var->bits_per_pixel == 8) {
  switch (cinfo->btype) {
  case 131:
  case 128:
  case 129:
   if (freq > 85500)
    cinfo->multiplexing = 1;
   break;
  case 130:
   if (freq > 135100)
    cinfo->multiplexing = 1;
   break;

  default:
   break;
  }
 }



 cinfo->doubleVCLK = 0;
 if (cinfo->btype == 128 && info->fix.smem_len <= MB_ &&
     var->bits_per_pixel == 16) {
  cinfo->doubleVCLK = 1;
 }

 return 0;
}
