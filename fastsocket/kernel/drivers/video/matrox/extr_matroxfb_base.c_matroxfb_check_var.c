
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrox_fb_info {scalar_t__ dead; } ;
struct fb_var_screeninfo {int dummy; } ;
struct fb_info {int dummy; } ;


 int ENXIO ;
 struct matrox_fb_info* info2minfo (struct fb_info*) ;
 int matroxfb_decode_var (struct matrox_fb_info*,struct fb_var_screeninfo*,int*,int*,unsigned int*) ;

__attribute__((used)) static int matroxfb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
{
 int err;
 int visual;
 int cmap_len;
 unsigned int ydstorg;
 struct matrox_fb_info *minfo = info2minfo(info);

 if (minfo->dead) {
  return -ENXIO;
 }
 if ((err = matroxfb_decode_var(minfo, var, &visual, &cmap_len, &ydstorg)) != 0)
  return err;
 return 0;
}
