
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int offset; int length; } ;
struct TYPE_7__ {int length; int offset; } ;
struct TYPE_6__ {int offset; int length; } ;
struct TYPE_5__ {int offset; int length; } ;
struct fb_var_screeninfo {int bits_per_pixel; TYPE_4__ transp; TYPE_3__ blue; TYPE_2__ green; TYPE_1__ red; } ;


 int PAL_ARGB8888 ;
 int PAL_RGB565 ;
 int pvr2fb_set_pal_type (int ) ;

__attribute__((used)) static void set_color_bitfields(struct fb_var_screeninfo *var)
{
 switch (var->bits_per_pixel) {
     case 16:
  pvr2fb_set_pal_type(PAL_RGB565);
  var->red.offset = 11; var->red.length = 5;
  var->green.offset = 5; var->green.length = 6;
  var->blue.offset = 0; var->blue.length = 5;
  var->transp.offset = 0; var->transp.length = 0;
  break;
     case 24:
  var->red.offset = 16; var->red.length = 8;
  var->green.offset = 8; var->green.length = 8;
  var->blue.offset = 0; var->blue.length = 8;
  var->transp.offset = 0; var->transp.length = 0;
  break;
     case 32:
  pvr2fb_set_pal_type(PAL_ARGB8888);
  var->red.offset = 16; var->red.length = 8;
  var->green.offset = 8; var->green.length = 8;
  var->blue.offset = 0; var->blue.length = 8;
  var->transp.offset = 24; var->transp.length = 8;
  break;
 }
}
