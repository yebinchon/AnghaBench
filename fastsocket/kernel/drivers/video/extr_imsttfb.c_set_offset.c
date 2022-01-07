
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imstt_par {int dc_regs; } ;
struct fb_var_screeninfo {int yoffset; int xoffset; int bits_per_pixel; } ;
struct TYPE_2__ {int line_length; } ;
struct fb_info {TYPE_1__ fix; struct imstt_par* par; } ;
typedef int __u32 ;


 int SSR ;
 int write_reg_le32 (int ,int ,int) ;

__attribute__((used)) static inline void
set_offset (struct fb_var_screeninfo *var, struct fb_info *info)
{
 struct imstt_par *par = info->par;
 __u32 off = var->yoffset * (info->fix.line_length >> 3)
      + ((var->xoffset * (var->bits_per_pixel >> 3)) >> 3);
 write_reg_le32(par->dc_regs, SSR, off);
}
