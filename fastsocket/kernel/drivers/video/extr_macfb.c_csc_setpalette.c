
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_info {int dummy; } ;
struct TYPE_2__ {int clut_data; int clut_waddr; } ;


 TYPE_1__* csc_cmap_regs ;
 int mdelay (int) ;
 int nubus_writeb (unsigned int,int *) ;

__attribute__((used)) static int csc_setpalette (unsigned int regno, unsigned int red,
      unsigned int green, unsigned int blue,
      struct fb_info *info)
{
 mdelay(1);
 nubus_writeb(regno, &csc_cmap_regs->clut_waddr);
 nubus_writeb(red, &csc_cmap_regs->clut_data);
 nubus_writeb(green, &csc_cmap_regs->clut_data);
 nubus_writeb(blue, &csc_cmap_regs->clut_data);
 return 0;
}
