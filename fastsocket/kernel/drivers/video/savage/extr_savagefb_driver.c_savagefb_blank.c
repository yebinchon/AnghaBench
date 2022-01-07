
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct savagefb_par {scalar_t__ display_type; } ;
struct fb_info {struct savagefb_par* par; } ;


 scalar_t__ DISP_CRT ;
 scalar_t__ DISP_DFP ;
 scalar_t__ DISP_LCD ;





 int vga_in8 (int,struct savagefb_par*) ;
 int vga_out8 (int,int,struct savagefb_par*) ;

__attribute__((used)) static int savagefb_blank(int blank, struct fb_info *info)
{
 struct savagefb_par *par = info->par;
 u8 sr8 = 0, srd = 0;

 if (par->display_type == DISP_CRT) {
  vga_out8(0x3c4, 0x08, par);
  sr8 = vga_in8(0x3c5, par);
  sr8 |= 0x06;
  vga_out8(0x3c5, sr8, par);
  vga_out8(0x3c4, 0x0d, par);
  srd = vga_in8(0x3c5, par);
  srd &= 0x50;

  switch (blank) {
  case 129:
  case 131:
   break;
  case 128:
   srd |= 0x10;
   break;
  case 132:
   srd |= 0x40;
   break;
  case 130:
   srd |= 0x50;
   break;
  }

  vga_out8(0x3c4, 0x0d, par);
  vga_out8(0x3c5, srd, par);
 }

 if (par->display_type == DISP_LCD ||
     par->display_type == DISP_DFP) {
  switch(blank) {
  case 129:
  case 131:
   vga_out8(0x3c4, 0x31, par);
   vga_out8(0x3c5, vga_in8(0x3c5, par) | 0x10, par);
   break;
  case 128:
  case 132:
  case 130:
   vga_out8(0x3c4, 0x31, par);
   vga_out8(0x3c5, vga_in8(0x3c5, par) & ~0x10, par);
   break;
  }
 }

 return (blank == 131) ? 1 : 0;
}
