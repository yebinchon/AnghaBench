
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2fb_par {scalar_t__ disp_start; } ;
struct fb_var_screeninfo {int bits_per_pixel; scalar_t__ xres; scalar_t__ xoffset; } ;
struct fb_info {struct fb_var_screeninfo var; scalar_t__ par; } ;


 int DISP_DIWADDRL ;
 int DISP_DIWADDRS ;
 int fb_writel (scalar_t__,int ) ;
 scalar_t__ get_line_length (scalar_t__,int ) ;

__attribute__((used)) static void pvr2_update_display(struct fb_info *info)
{
 struct pvr2fb_par *par = (struct pvr2fb_par *) info->par;
 struct fb_var_screeninfo *var = &info->var;


 fb_writel(par->disp_start, DISP_DIWADDRL);
 fb_writel(par->disp_start +
    get_line_length(var->xoffset+var->xres, var->bits_per_pixel),
           DISP_DIWADDRS);
}
