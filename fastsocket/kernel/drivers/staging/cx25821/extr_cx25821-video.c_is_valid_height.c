
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v4l2_std_id ;
typedef int u32 ;


 scalar_t__ V4L2_STD_NTSC_M ;
 scalar_t__ V4L2_STD_PAL_BG ;

int is_valid_height(u32 height, v4l2_std_id tvnorm)
{
 if (tvnorm == V4L2_STD_PAL_BG) {
  if (height == 576 || height == 288)
   return 1;
  else
   return 0;
 }

 if (tvnorm == V4L2_STD_NTSC_M) {
  if (height == 480 || height == 240)
   return 1;
  else
   return 0;
 }

 return 0;
}
