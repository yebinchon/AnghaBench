
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info_control {int dummy; } ;
struct fb_info {int dummy; } ;


 int CNTRL_REG (struct fb_info_control*,unsigned int) ;




 unsigned int ld_le32 (int ) ;
 int out_le32 (int ,unsigned int) ;

__attribute__((used)) static int controlfb_blank(int blank_mode, struct fb_info *info)
{
 struct fb_info_control *p = (struct fb_info_control *) info;
 unsigned ctrl;

 ctrl = ld_le32(CNTRL_REG(p,ctrl));
 if (blank_mode > 0)
  switch (blank_mode) {
  case 128:
   ctrl &= ~3;
   break;
  case 131:
   ctrl &= ~0x30;
   break;
  case 129:
   ctrl &= ~0x33;

  case 130:
   ctrl |= 0x400;
   break;
  default:
   break;
  }
 else {
  ctrl &= ~0x400;
  ctrl |= 0x33;
 }
 out_le32(CNTRL_REG(p,ctrl), ctrl);

 return 0;
}
