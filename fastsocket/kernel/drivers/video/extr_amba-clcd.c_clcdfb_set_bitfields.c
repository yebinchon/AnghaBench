
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int length; int offset; scalar_t__ msb_right; } ;
struct TYPE_7__ {int length; int offset; scalar_t__ msb_right; } ;
struct TYPE_6__ {int length; int offset; scalar_t__ msb_right; } ;
struct fb_var_screeninfo {int bits_per_pixel; TYPE_4__ green; TYPE_3__ blue; TYPE_2__ red; int transp; } ;
struct clcd_fb {TYPE_1__* panel; } ;
struct TYPE_5__ {int cntl; } ;


 int CNTL_BGR ;
 int CNTL_LCDTFT ;
 int EINVAL ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int
clcdfb_set_bitfields(struct clcd_fb *fb, struct fb_var_screeninfo *var)
{
 int ret = 0;

 memset(&var->transp, 0, sizeof(var->transp));

 var->red.msb_right = 0;
 var->green.msb_right = 0;
 var->blue.msb_right = 0;

 switch (var->bits_per_pixel) {
 case 1:
 case 2:
 case 4:
 case 8:
  var->red.length = var->bits_per_pixel;
  var->red.offset = 0;
  var->green.length = var->bits_per_pixel;
  var->green.offset = 0;
  var->blue.length = var->bits_per_pixel;
  var->blue.offset = 0;
  break;
 case 16:
  var->red.length = 5;
  var->blue.length = 5;




  if (var->green.length != 5 && var->green.length != 6)
   var->green.length = 6;
  break;
 case 32:
  if (fb->panel->cntl & CNTL_LCDTFT) {
   var->red.length = 8;
   var->green.length = 8;
   var->blue.length = 8;
   break;
  }
 default:
  ret = -EINVAL;
  break;
 }






 if (ret == 0 && var->bits_per_pixel >= 16) {
  if (fb->panel->cntl & CNTL_BGR) {
   var->blue.offset = 0;
   var->green.offset = var->blue.offset + var->blue.length;
   var->red.offset = var->green.offset + var->green.length;
  } else {
   var->red.offset = 0;
   var->green.offset = var->red.offset + var->red.length;
   var->blue.offset = var->green.offset + var->green.length;
  }
 }

 return ret;
}
