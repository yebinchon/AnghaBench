
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int offset; } ;
struct TYPE_6__ {int bits_per_pixel; int xres; TYPE_1__ red; int pixclock; } ;
struct TYPE_5__ {int line_length; int visual; } ;
struct fb_info {TYPE_3__ var; TYPE_2__ fix; } ;


 int FB_VISUAL_PSEUDOCOLOR ;
 int FB_VISUAL_TRUECOLOR ;
 int asiliant_calc_dclk2 (int *,int*,int*,int*) ;
 int asiliant_set_timing (struct fb_info*) ;
 int write_xr (int,int) ;

__attribute__((used)) static int asiliantfb_set_par(struct fb_info *p)
{
 u8 dclk2_m;
 u8 dclk2_n;
 u8 dclk2_div;


 asiliant_calc_dclk2(&p->var.pixclock, &dclk2_m, &dclk2_n, &dclk2_div);


 if (p->var.bits_per_pixel == 24) {
  write_xr(0x81, 0x16);
  write_xr(0x82, 0x00);
  write_xr(0x20, 0x20);
 } else if (p->var.bits_per_pixel == 16) {
  if (p->var.red.offset == 11)
   write_xr(0x81, 0x15);
  else
   write_xr(0x81, 0x14);
  write_xr(0x82, 0x00);
  write_xr(0x20, 0x10);
 } else if (p->var.bits_per_pixel == 8) {
  write_xr(0x0a, 0x02);
  write_xr(0x81, 0x12);
  write_xr(0x82, 0x00);
  write_xr(0x20, 0x00);
 }
 p->fix.line_length = p->var.xres * (p->var.bits_per_pixel >> 3);
 p->fix.visual = (p->var.bits_per_pixel == 8) ? FB_VISUAL_PSEUDOCOLOR : FB_VISUAL_TRUECOLOR;
 write_xr(0xc4, dclk2_m);
 write_xr(0xc5, dclk2_n);
 write_xr(0xc7, dclk2_div);

 asiliant_set_timing(p);
 return 0;
}
