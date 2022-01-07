
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fb_videomode {int dummy; } ;


 int PS3AV_MODE_1080P50 ;
 int PS3AV_MODE_480I ;
 int PS3AV_MODE_FULL ;
 int PS3AV_MODE_MASK ;
 int PS3AV_MODE_WUXGA ;
 struct fb_videomode const* ps3fb_modedb ;
 struct fb_videomode const* ps3fb_native_vmode (int) ;

__attribute__((used)) static const struct fb_videomode *ps3fb_vmode(int id)
{
 u32 mode = id & PS3AV_MODE_MASK;

 if (mode < PS3AV_MODE_480I || mode > PS3AV_MODE_WUXGA)
  return ((void*)0);

 if (mode <= PS3AV_MODE_1080P50 && !(id & PS3AV_MODE_FULL)) {

  return &ps3fb_modedb[mode - 1];
 }

 return ps3fb_native_vmode(mode);
}
