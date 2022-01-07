
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int xres_virtual; int bits_per_pixel; } ;
struct fb_fix_screeninfo {int line_length; int xpanstep; int ypanstep; int visual; int accel; int type; int id; } ;
struct fb_info {struct fb_var_screeninfo var; struct fb_fix_screeninfo fix; } ;


 int FB_ACCEL_NONE ;
 int FB_TYPE_PACKED_PIXELS ;
 int FB_VISUAL_TRUECOLOR ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static int mx3fb_set_fix(struct fb_info *fbi)
{
 struct fb_fix_screeninfo *fix = &fbi->fix;
 struct fb_var_screeninfo *var = &fbi->var;

 strncpy(fix->id, "DISP3 BG", 8);

 fix->line_length = var->xres_virtual * var->bits_per_pixel / 8;

 fix->type = FB_TYPE_PACKED_PIXELS;
 fix->accel = FB_ACCEL_NONE;
 fix->visual = FB_VISUAL_TRUECOLOR;
 fix->xpanstep = 1;
 fix->ypanstep = 1;

 return 0;
}
