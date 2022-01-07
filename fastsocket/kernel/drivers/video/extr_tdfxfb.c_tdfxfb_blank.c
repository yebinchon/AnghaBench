
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tdfx_par {int dummy; } ;
struct fb_info {struct tdfx_par* par; } ;


 int BIT (int) ;
 int DACMODE ;





 int banshee_make_room (struct tdfx_par*,int) ;
 int tdfx_inl (struct tdfx_par*,int ) ;
 int tdfx_outl (struct tdfx_par*,int ,int) ;
 int vga_disable_video (struct tdfx_par*) ;
 int vga_enable_video (struct tdfx_par*) ;

__attribute__((used)) static int tdfxfb_blank(int blank, struct fb_info *info)
{
 struct tdfx_par *par = info->par;
 int vgablank = 1;
 u32 dacmode = tdfx_inl(par, DACMODE);

 dacmode &= ~(BIT(1) | BIT(3));

 switch (blank) {
 case 129:
  vgablank = 0;
  break;
 case 131:
  break;
 case 128:
  dacmode |= BIT(3);
  break;
 case 132:
  dacmode |= BIT(1);
  break;
 case 130:
  dacmode |= BIT(1) | BIT(3);
  break;
 }

 banshee_make_room(par, 1);
 tdfx_outl(par, DACMODE, dacmode);
 if (vgablank)
  vga_disable_video(par);
 else
  vga_enable_video(par);
 return 0;
}
