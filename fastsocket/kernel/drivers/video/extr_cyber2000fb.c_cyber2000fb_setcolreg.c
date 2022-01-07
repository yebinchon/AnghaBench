
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
typedef int u32 ;
struct TYPE_8__ {int length; int offset; } ;
struct fb_var_screeninfo {TYPE_4__ blue; TYPE_4__ green; TYPE_4__ red; TYPE_4__ transp; } ;
struct fb_info {int dummy; } ;
struct TYPE_5__ {int visual; } ;
struct TYPE_7__ {scalar_t__ pseudo_palette; TYPE_1__ fix; struct fb_var_screeninfo var; } ;
struct cfb_info {TYPE_3__ fb; TYPE_2__* palette; } ;
struct TYPE_6__ {int red; int green; int blue; } ;





 int NR_PALETTE ;
 int convert_bitfield (int,TYPE_4__*) ;
 int cyber2000fb_writeb (int,int,struct cfb_info*) ;

__attribute__((used)) static int
cyber2000fb_setcolreg(u_int regno, u_int red, u_int green, u_int blue,
        u_int transp, struct fb_info *info)
{
 struct cfb_info *cfb = (struct cfb_info *)info;
 struct fb_var_screeninfo *var = &cfb->fb.var;
 u32 pseudo_val;
 int ret = 1;

 switch (cfb->fb.fix.visual) {
 default:
  return 1;
 case 129:
  if (regno >= NR_PALETTE)
   return 1;

  red >>= 8;
  green >>= 8;
  blue >>= 8;

  cfb->palette[regno].red = red;
  cfb->palette[regno].green = green;
  cfb->palette[regno].blue = blue;

  cyber2000fb_writeb(regno, 0x3c8, cfb);
  cyber2000fb_writeb(red, 0x3c9, cfb);
  cyber2000fb_writeb(green, 0x3c9, cfb);
  cyber2000fb_writeb(blue, 0x3c9, cfb);
  return 0;
 case 130:
  red >>= 8;
  green >>= 8;
  blue >>= 8;

  if (var->green.length == 6 && regno < 64) {
   cfb->palette[regno << 2].green = green;





   cyber2000fb_writeb(regno << 2, 0x3c8, cfb);
   cyber2000fb_writeb(cfb->palette[regno >> 1].red,
        0x3c9, cfb);
   cyber2000fb_writeb(green, 0x3c9, cfb);
   cyber2000fb_writeb(cfb->palette[regno >> 1].blue,
        0x3c9, cfb);

   green = cfb->palette[regno << 3].green;

   ret = 0;
  }

  if (var->green.length >= 5 && regno < 32) {
   cfb->palette[regno << 3].red = red;
   cfb->palette[regno << 3].green = green;
   cfb->palette[regno << 3].blue = blue;





   cyber2000fb_writeb(regno << 3, 0x3c8, cfb);
   cyber2000fb_writeb(red, 0x3c9, cfb);
   cyber2000fb_writeb(green, 0x3c9, cfb);
   cyber2000fb_writeb(blue, 0x3c9, cfb);
   ret = 0;
  }

  if (var->green.length == 4 && regno < 16) {
   cfb->palette[regno << 4].red = red;
   cfb->palette[regno << 4].green = green;
   cfb->palette[regno << 4].blue = blue;





   cyber2000fb_writeb(regno << 4, 0x3c8, cfb);
   cyber2000fb_writeb(red, 0x3c9, cfb);
   cyber2000fb_writeb(green, 0x3c9, cfb);
   cyber2000fb_writeb(blue, 0x3c9, cfb);
   ret = 0;
  }





  pseudo_val = regno << var->red.offset |
        regno << var->green.offset |
        regno << var->blue.offset;
  break;
 case 128:
  pseudo_val = convert_bitfield(transp ^ 0xffff, &var->transp);
  pseudo_val |= convert_bitfield(red, &var->red);
  pseudo_val |= convert_bitfield(green, &var->green);
  pseudo_val |= convert_bitfield(blue, &var->blue);
  break;
 }




 if (regno < 16)
  ((u32 *)cfb->fb.pseudo_palette)[regno] = pseudo_val;

 return ret;
}
