
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int OMAPFB_CHANNEL_OUT_LCD ;
 int OMAPFB_PLANE_GFX ;

__attribute__((used)) static int hwa742_setup_plane(int plane, int channel_out,
      unsigned long offset, int screen_width,
      int pos_x, int pos_y, int width, int height,
      int color_mode)
{
 if (plane != OMAPFB_PLANE_GFX ||
     channel_out != OMAPFB_CHANNEL_OUT_LCD)
  return -EINVAL;

 return 0;
}
