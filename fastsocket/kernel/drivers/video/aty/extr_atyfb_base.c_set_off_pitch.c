
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int xoffset; int yoffset; int bits_per_pixel; } ;
struct TYPE_5__ {int line_length; } ;
struct fb_info {TYPE_3__ var; TYPE_2__ fix; } ;
struct TYPE_4__ {int off_pitch; } ;
struct atyfb_par {TYPE_1__ crtc; } ;



__attribute__((used)) static void set_off_pitch(struct atyfb_par *par, const struct fb_info *info)
{
 u32 xoffset = info->var.xoffset;
 u32 yoffset = info->var.yoffset;
 u32 line_length = info->fix.line_length;
 u32 bpp = info->var.bits_per_pixel;

 par->crtc.off_pitch =
  ((yoffset * line_length + xoffset * bpp / 8) / 8) |
  ((line_length / bpp) << 22);
}
