
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tga_par {int vesa_blanked; } ;
struct fb_info {scalar_t__ par; } ;







 int TGA_HORIZ_REG ;
 int TGA_READ_REG (struct tga_par*,int ) ;
 int TGA_VALID_BLANK ;
 int TGA_VALID_REG ;
 int TGA_VALID_VIDEO ;
 int TGA_VERT_REG ;
 int TGA_WRITE_REG (struct tga_par*,int,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static int
tgafb_blank(int blank, struct fb_info *info)
{
 struct tga_par *par = (struct tga_par *) info->par;
 u32 vhcr, vvcr, vvvr;
 unsigned long flags;

 local_irq_save(flags);

 vhcr = TGA_READ_REG(par, TGA_HORIZ_REG);
 vvcr = TGA_READ_REG(par, TGA_VERT_REG);
 vvvr = TGA_READ_REG(par, TGA_VALID_REG);
 vvvr &= ~(TGA_VALID_VIDEO | TGA_VALID_BLANK);

 switch (blank) {
 case 129:
  if (par->vesa_blanked) {
   TGA_WRITE_REG(par, vhcr & 0xbfffffff, TGA_HORIZ_REG);
   TGA_WRITE_REG(par, vvcr & 0xbfffffff, TGA_VERT_REG);
   par->vesa_blanked = 0;
  }
  TGA_WRITE_REG(par, vvvr | TGA_VALID_VIDEO, TGA_VALID_REG);
  break;

 case 131:
  TGA_WRITE_REG(par, vvvr | TGA_VALID_VIDEO | TGA_VALID_BLANK,
         TGA_VALID_REG);
  break;

 case 128:
  TGA_WRITE_REG(par, vvcr | 0x40000000, TGA_VERT_REG);
  TGA_WRITE_REG(par, vvvr | TGA_VALID_BLANK, TGA_VALID_REG);
  par->vesa_blanked = 1;
  break;

 case 132:
  TGA_WRITE_REG(par, vhcr | 0x40000000, TGA_HORIZ_REG);
  TGA_WRITE_REG(par, vvvr | TGA_VALID_BLANK, TGA_VALID_REG);
  par->vesa_blanked = 1;
  break;

 case 130:
  TGA_WRITE_REG(par, vhcr | 0x40000000, TGA_HORIZ_REG);
  TGA_WRITE_REG(par, vvcr | 0x40000000, TGA_VERT_REG);
  TGA_WRITE_REG(par, vvvr | TGA_VALID_BLANK, TGA_VALID_REG);
  par->vesa_blanked = 1;
  break;
 }

 local_irq_restore(flags);
 return 0;
}
