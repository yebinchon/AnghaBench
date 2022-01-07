
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int bits_per_pixel; int xres_virtual; scalar_t__ nonstd; } ;
struct TYPE_3__ {int line_length; void* type; int type_aux; } ;
struct fb_info {TYPE_2__ var; TYPE_1__ fix; } ;


 int FB_AUX_TEXT_CGA ;
 int FB_AUX_VGA_PLANES_CFB8 ;
 int FB_AUX_VGA_PLANES_VGA4 ;
 void* FB_TYPE_PACKED_PIXELS ;
 void* FB_TYPE_TEXT ;
 void* FB_TYPE_VGA_PLANES ;

__attribute__((used)) static void vga16fb_update_fix(struct fb_info *info)
{
 if (info->var.bits_per_pixel == 4) {
  if (info->var.nonstd) {
   info->fix.type = FB_TYPE_PACKED_PIXELS;
   info->fix.line_length = info->var.xres_virtual / 2;
  } else {
   info->fix.type = FB_TYPE_VGA_PLANES;
   info->fix.type_aux = FB_AUX_VGA_PLANES_VGA4;
   info->fix.line_length = info->var.xres_virtual / 8;
  }
 } else if (info->var.bits_per_pixel == 0) {
  info->fix.type = FB_TYPE_TEXT;
  info->fix.type_aux = FB_AUX_TEXT_CGA;
  info->fix.line_length = info->var.xres_virtual / 4;
 } else {
  if (info->var.nonstd) {
   info->fix.type = FB_TYPE_VGA_PLANES;
   info->fix.type_aux = FB_AUX_VGA_PLANES_CFB8;
   info->fix.line_length = info->var.xres_virtual / 4;
  } else {
   info->fix.type = FB_TYPE_PACKED_PIXELS;
   info->fix.line_length = info->var.xres_virtual;
  }
 }
}
