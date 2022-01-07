
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cirrusfb_info {scalar_t__ btype; int regbase; } ;


 scalar_t__ BT_PICASSO ;
 int VGA_PEL_D ;
 int VGA_PEL_IR ;
 unsigned char vga_r (int ,unsigned long) ;

__attribute__((used)) static unsigned char RGen(const struct cirrusfb_info *cinfo, int regnum)
{
 unsigned long regofs = 0;

 if (cinfo->btype == BT_PICASSO) {



  if (regnum == VGA_PEL_IR || regnum == VGA_PEL_D)
   regofs = 0xfff;
 }

 return vga_r(cinfo->regbase, regofs + regnum);
}
