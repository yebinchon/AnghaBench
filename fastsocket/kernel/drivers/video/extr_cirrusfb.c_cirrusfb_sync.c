
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct cirrusfb_info* par; } ;
struct cirrusfb_info {int regbase; } ;


 int CL_GR31 ;
 int cpu_relax () ;
 int is_laguna (struct cirrusfb_info*) ;
 int vga_rgfx (int ,int ) ;

__attribute__((used)) static int cirrusfb_sync(struct fb_info *info)
{
 struct cirrusfb_info *cinfo = info->par;

 if (!is_laguna(cinfo)) {
  while (vga_rgfx(cinfo->regbase, CL_GR31) & 0x03)
   cpu_relax();
 }
 return 0;
}
