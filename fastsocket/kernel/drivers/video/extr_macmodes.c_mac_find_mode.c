
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_videomode {int dummy; } ;
struct fb_var_screeninfo {int dummy; } ;
struct fb_info {int dummy; } ;


 unsigned int ARRAY_SIZE (struct fb_videomode*) ;
 size_t DEFAULT_MODEDB_INDEX ;
 int fb_find_mode (struct fb_var_screeninfo*,struct fb_info*,char const*,struct fb_videomode const*,unsigned int,struct fb_videomode*,unsigned int) ;
 struct fb_videomode* mac_modedb ;
 int strncmp (char const*,char*,int) ;

int mac_find_mode(struct fb_var_screeninfo *var, struct fb_info *info,
    const char *mode_option, unsigned int default_bpp)
{
    const struct fb_videomode *db = ((void*)0);
    unsigned int dbsize = 0;

    if (mode_option && !strncmp(mode_option, "mac", 3)) {
 mode_option += 3;
 db = mac_modedb;
 dbsize = ARRAY_SIZE(mac_modedb);
    }
    return fb_find_mode(var, info, mode_option, db, dbsize,
   &mac_modedb[DEFAULT_MODEDB_INDEX], default_bpp);
}
