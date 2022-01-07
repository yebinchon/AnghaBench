
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fb_cvt_data {int flags; int htotal; } ;


 int FB_CVT_CELLSIZE ;
 int FB_CVT_FLAG_REDUCED_BLANK ;

__attribute__((used)) static u32 fb_cvt_hsync(struct fb_cvt_data *cvt)
{
 u32 hsync;

 if (cvt->flags & FB_CVT_FLAG_REDUCED_BLANK)
  hsync = 32;
 else
  hsync = (FB_CVT_CELLSIZE * cvt->htotal)/100;

 hsync &= ~(FB_CVT_CELLSIZE - 1);
 return hsync;
}
