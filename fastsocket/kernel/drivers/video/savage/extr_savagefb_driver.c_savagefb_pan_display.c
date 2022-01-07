
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct savagefb_par {int dummy; } ;
struct fb_var_screeninfo {int dummy; } ;
struct fb_info {struct savagefb_par* par; } ;


 int savagefb_update_start (struct savagefb_par*,struct fb_var_screeninfo*) ;

__attribute__((used)) static int savagefb_pan_display(struct fb_var_screeninfo *var,
    struct fb_info *info)
{
 struct savagefb_par *par = info->par;

 savagefb_update_start(par, var);
 return 0;
}
