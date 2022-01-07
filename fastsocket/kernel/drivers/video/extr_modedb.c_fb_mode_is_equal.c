
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_videomode {scalar_t__ xres; scalar_t__ yres; scalar_t__ pixclock; scalar_t__ hsync_len; scalar_t__ vsync_len; scalar_t__ left_margin; scalar_t__ right_margin; scalar_t__ upper_margin; scalar_t__ lower_margin; scalar_t__ sync; scalar_t__ vmode; } ;



int fb_mode_is_equal(const struct fb_videomode *mode1,
       const struct fb_videomode *mode2)
{
 return (mode1->xres == mode2->xres &&
  mode1->yres == mode2->yres &&
  mode1->pixclock == mode2->pixclock &&
  mode1->hsync_len == mode2->hsync_len &&
  mode1->vsync_len == mode2->vsync_len &&
  mode1->left_margin == mode2->left_margin &&
  mode1->right_margin == mode2->right_margin &&
  mode1->upper_margin == mode2->upper_margin &&
  mode1->lower_margin == mode2->lower_margin &&
  mode1->sync == mode2->sync &&
  mode1->vmode == mode2->vmode);
}
