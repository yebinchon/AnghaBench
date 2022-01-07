
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vga16fb_par {int vesa_blanked; int palette_blanked; } ;
struct fb_info {struct vga16fb_par* par; } ;




 int vga_pal_blank () ;
 int vga_vesa_blank (struct vga16fb_par*,int) ;
 int vga_vesa_unblank (struct vga16fb_par*) ;

__attribute__((used)) static int vga16fb_blank(int blank, struct fb_info *info)
{
 struct vga16fb_par *par = info->par;

 switch (blank) {
 case 128:
  if (par->vesa_blanked) {
   vga_vesa_unblank(par);
   par->vesa_blanked = 0;
  }
  if (par->palette_blanked) {
   par->palette_blanked = 0;
  }
  break;
 case 129:
  vga_pal_blank();
  par->palette_blanked = 1;
  break;
 default:
  vga_vesa_blank(par, blank);
  par->vesa_blanked = 1;
  break;
 }
 return 0;
}
