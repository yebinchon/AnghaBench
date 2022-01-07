
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct plane_info {int bpp; unsigned long offset; int pos_x; int pos_y; int width; int height; int scr_width; int out_width; int out_height; int color_mode; } ;
struct TYPE_4__ {int vid_nonstd_color; struct plane_info* plane; TYPE_1__* fbdev; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;




 unsigned int OMAPFB_PLANE_NUM ;
 TYPE_2__ blizzard ;
 int dev_dbg (int ,char*,int,int,unsigned long,int,int,int,int,int,int) ;

__attribute__((used)) static int blizzard_setup_plane(int plane, int channel_out,
      unsigned long offset, int screen_width,
      int pos_x, int pos_y, int width, int height,
      int color_mode)
{
 struct plane_info *p;
 if ((unsigned)plane > OMAPFB_PLANE_NUM)
  return -EINVAL;
 p = &blizzard.plane[plane];

 switch (color_mode) {
 case 129:
 case 128:
  p->bpp = 16;
  blizzard.vid_nonstd_color &= ~(1 << plane);
  break;
 case 130:
  p->bpp = 12;
  blizzard.vid_nonstd_color |= 1 << plane;
  break;
 case 131:
  p->bpp = 16;
  blizzard.vid_nonstd_color &= ~(1 << plane);
  break;
 default:
  return -EINVAL;
 }

 p->offset = offset;
 p->pos_x = pos_x;
 p->pos_y = pos_y;
 p->width = width;
 p->height = height;
 p->scr_width = screen_width;
 if (!p->out_width)
  p->out_width = width;
 if (!p->out_height)
  p->out_height = height;

 p->color_mode = color_mode;

 return 0;
}
