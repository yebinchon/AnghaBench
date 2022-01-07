
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa168fb_info {int is_blanked; } ;
struct fb_info {struct pxa168fb_info* par; } ;


 int FB_BLANK_UNBLANK ;
 int set_dumb_panel_control (struct fb_info*) ;

__attribute__((used)) static int pxa168fb_blank(int blank, struct fb_info *info)
{
 struct pxa168fb_info *fbi = info->par;

 fbi->is_blanked = (blank == FB_BLANK_UNBLANK) ? 0 : 1;
 set_dumb_panel_control(info);

 return 0;
}
