
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct par_info {int dummy; } ;
struct TYPE_10__ {int length; int offset; scalar_t__ msb_right; } ;
struct TYPE_9__ {int offset; int length; scalar_t__ msb_right; } ;
struct TYPE_8__ {int offset; int length; scalar_t__ msb_right; } ;
struct TYPE_7__ {int offset; int length; scalar_t__ msb_right; } ;
struct fb_var_screeninfo {int bits_per_pixel; int xres_virtual; int yres_virtual; int yres; int xres; TYPE_4__ blue; TYPE_3__ green; TYPE_2__ red; TYPE_1__ transp; } ;
struct fb_info {int dummy; } ;
struct TYPE_11__ {unsigned int smem_len; } ;
struct TYPE_12__ {TYPE_5__ fix; } ;
struct cfb_info {TYPE_6__ fb; } ;


 int EINVAL ;
 int cyber2000fb_decode_clock (struct par_info*,struct cfb_info*,struct fb_var_screeninfo*) ;
 int cyber2000fb_decode_crtc (struct par_info*,struct cfb_info*,struct fb_var_screeninfo*) ;

__attribute__((used)) static int
cyber2000fb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
{
 struct cfb_info *cfb = (struct cfb_info *)info;
 struct par_info hw;
 unsigned int mem;
 int err;

 var->transp.msb_right = 0;
 var->red.msb_right = 0;
 var->green.msb_right = 0;
 var->blue.msb_right = 0;
 var->transp.offset = 0;
 var->transp.length = 0;

 switch (var->bits_per_pixel) {
 case 8:
  var->red.offset = 0;
  var->red.length = 8;
  var->green.offset = 0;
  var->green.length = 8;
  var->blue.offset = 0;
  var->blue.length = 8;
  break;

 case 16:
  switch (var->green.length) {
  case 6:
   var->red.offset = 11;
   var->red.length = 5;
   var->green.offset = 5;
   var->green.length = 6;
   var->blue.offset = 0;
   var->blue.length = 5;
   break;

  default:
  case 5:
   var->red.offset = 10;
   var->red.length = 5;
   var->green.offset = 5;
   var->green.length = 5;
   var->blue.offset = 0;
   var->blue.length = 5;
   break;

  case 4:
   var->transp.offset = 12;
   var->transp.length = 4;
   var->red.offset = 8;
   var->red.length = 4;
   var->green.offset = 4;
   var->green.length = 4;
   var->blue.offset = 0;
   var->blue.length = 4;
   break;
  }
  break;

 case 24:
  var->red.offset = 16;
  var->red.length = 8;
  var->green.offset = 8;
  var->green.length = 8;
  var->blue.offset = 0;
  var->blue.length = 8;
  break;

 case 32:
  var->transp.offset = 24;
  var->transp.length = 8;
  var->red.offset = 16;
  var->red.length = 8;
  var->green.offset = 8;
  var->green.length = 8;
  var->blue.offset = 0;
  var->blue.length = 8;
  break;

 default:
  return -EINVAL;
 }

 mem = var->xres_virtual * var->yres_virtual * (var->bits_per_pixel / 8);
 if (mem > cfb->fb.fix.smem_len)
  var->yres_virtual = cfb->fb.fix.smem_len * 8 /
        (var->bits_per_pixel * var->xres_virtual);

 if (var->yres > var->yres_virtual)
  var->yres = var->yres_virtual;
 if (var->xres > var->xres_virtual)
  var->xres = var->xres_virtual;

 err = cyber2000fb_decode_clock(&hw, cfb, var);
 if (err)
  return err;

 err = cyber2000fb_decode_crtc(&hw, cfb, var);
 if (err)
  return err;

 return 0;
}
