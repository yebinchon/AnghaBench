
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omapfb_device {int dev; TYPE_1__* panel; int pseudo_palette; } ;
struct fb_var_screeninfo {int bits_per_pixel; int rotate; void* yres_virtual; void* xres_virtual; void* yres; void* xres; int accel_flags; } ;
struct fb_fix_screeninfo {int id; } ;
struct fb_info {int cmap; int pseudo_palette; int flags; int * fbops; struct fb_fix_screeninfo fix; struct fb_var_screeninfo var; } ;
struct TYPE_2__ {int bpp; } ;


 int FBINFO_FLAG_DEFAULT ;
 int FB_ACCELF_TEXT ;
 int MODULE_NAME ;
 scalar_t__ def_accel ;
 int def_rotate ;
 void* def_vxres ;
 void* def_vyres ;
 int dev_err (int ,char*) ;
 int fb_alloc_cmap (int *,int,int ) ;
 int omapfb_ops ;
 int set_fb_fix (struct fb_info*,int) ;
 int set_fb_var (struct fb_info*,struct fb_var_screeninfo*) ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static int fbinfo_init(struct omapfb_device *fbdev, struct fb_info *info)
{
 struct fb_var_screeninfo *var = &info->var;
 struct fb_fix_screeninfo *fix = &info->fix;
 int r = 0;

 info->fbops = &omapfb_ops;
 info->flags = FBINFO_FLAG_DEFAULT;

 strncpy(fix->id, MODULE_NAME, sizeof(fix->id));

 info->pseudo_palette = fbdev->pseudo_palette;

 var->accel_flags = def_accel ? FB_ACCELF_TEXT : 0;
 var->xres = def_vxres;
 var->yres = def_vyres;
 var->xres_virtual = def_vxres;
 var->yres_virtual = def_vyres;
 var->rotate = def_rotate;
 var->bits_per_pixel = fbdev->panel->bpp;

 set_fb_var(info, var);
 set_fb_fix(info, 1);

 r = fb_alloc_cmap(&info->cmap, 16, 0);
 if (r != 0)
  dev_err(fbdev->dev, "unable to allocate color map memory\n");

 return r;
}
