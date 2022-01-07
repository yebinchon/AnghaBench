
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfb_info {int y_aoi_d; int x_aoi_d; struct diu_ad* ad; } ;
struct fb_var_screeninfo {int yoffset; int xoffset; } ;
struct fb_info {struct mfb_info* par; struct fb_var_screeninfo var; } ;
struct diu_ad {void* offset_xyd; void* offset_xyi; } ;


 void* cpu_to_le32 (int) ;

__attribute__((used)) static int fsl_diu_set_aoi(struct fb_info *info)
{
 struct fb_var_screeninfo *var = &info->var;
 struct mfb_info *mfbi = info->par;
 struct diu_ad *ad = mfbi->ad;


 ad->offset_xyi = cpu_to_le32((var->yoffset << 16) | var->xoffset);
 ad->offset_xyd = cpu_to_le32((mfbi->y_aoi_d << 16) | mfbi->x_aoi_d);
 return 0;
}
