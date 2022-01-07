
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_videomode {int dummy; } ;
typedef enum ps3av_mode_num { ____Placeholder_ps3av_mode_num } ps3av_mode_num ;


 int FIRST_NATIVE_MODE_INDEX ;
 struct fb_videomode const* ps3fb_modedb ;

__attribute__((used)) static const struct fb_videomode *ps3fb_native_vmode(enum ps3av_mode_num id)
{
 return &ps3fb_modedb[FIRST_NATIVE_MODE_INDEX + id - 1];
}
