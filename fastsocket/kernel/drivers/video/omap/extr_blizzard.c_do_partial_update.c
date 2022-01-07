
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct plane_info {int pos_x; int pos_y; int width; int height; int offset; int scr_width; int bpp; int color_mode; } ;
struct TYPE_9__ {int flags; } ;
struct TYPE_10__ {TYPE_3__ update; } ;
struct blizzard_request {TYPE_4__ par; } ;
struct TYPE_12__ {int enabled_planes; int last_color_mode; int screen_height; int zoom_on; int screen_width; int zoom_area_gx1; int zoom_area_gx2; int zoom_area_gy1; int zoom_area_gy2; TYPE_2__* extif; TYPE_5__* int_ctrl; TYPE_1__* fbdev; struct plane_info* plane; } ;
struct TYPE_11__ {int (* enable_plane ) (int,int) ;int (* setup_plane ) (int,int ,unsigned long,int,int,int,int,int,int ) ;} ;
struct TYPE_8__ {int (* transfer_area ) (int,int,int ,struct blizzard_request*) ;int (* set_bits_per_cycle ) (int) ;} ;
struct TYPE_7__ {int dev; } ;


 int BLIZZARD_COLOR_RGB565 ;
 int BLIZZARD_COLOR_YUV420 ;
 int OMAPFB_CHANNEL_OUT_LCD ;

 int OMAPFB_FORMAT_FLAG_DOUBLE ;
 int OMAPFB_FORMAT_FLAG_FORCE_VSYNC ;
 int OMAPFB_FORMAT_FLAG_TEARSYNC ;
 int OMAPFB_PLANE_NUM ;
 int REQ_PENDING ;
 TYPE_6__ blizzard ;
 int blizzard_wait_line_buffer () ;
 int blizzard_wait_yyc () ;
 scalar_t__ check_1d_intersect (int,int,int,int) ;
 int dev_dbg (int ,char*,int,unsigned long,int,int,int,int,int,int) ;
 int disable_tearsync () ;
 int enable_tearsync (int,int,int,int,int,int) ;
 int request_complete ;
 int set_window_regs (int,int,int,int,int,int,int,int,int,int,int) ;
 int stub1 (int,int) ;
 int stub2 (int,int) ;
 int stub3 (int,int ,unsigned long,int,int,int,int,int,int ) ;
 int stub4 (int,int) ;
 int stub5 (int) ;
 int stub6 (int,int,int ,struct blizzard_request*) ;

__attribute__((used)) static int do_partial_update(struct blizzard_request *req, int plane,
        int x, int y, int w, int h,
        int x_out, int y_out, int w_out, int h_out,
        int wnd_color_mode, int bpp)
{
 int i;
 int gx1, gy1, gx2, gy2;
 int gx1_out, gy1_out, gx2_out, gy2_out;
 int color_mode;
 int flags;
 int zoom_off;
 int have_zoom_for_this_update = 0;


 gx1 = x + blizzard.plane[plane].pos_x;
 gy1 = y + blizzard.plane[plane].pos_y;
 gx2 = gx1 + w;
 gy2 = gy1 + h;

 flags = req->par.update.flags;
 if (flags & OMAPFB_FORMAT_FLAG_DOUBLE) {
  gx1_out = gx1;
  gy1_out = gy1;
  gx2_out = gx1 + w * 2;
  gy2_out = gy1 + h * 2;
 } else {
  gx1_out = x_out + blizzard.plane[plane].pos_x;
  gy1_out = y_out + blizzard.plane[plane].pos_y;
  gx2_out = gx1_out + w_out;
  gy2_out = gy1_out + h_out;
 }

 for (i = 0; i < OMAPFB_PLANE_NUM; i++) {
  struct plane_info *p = &blizzard.plane[i];
  int px1, py1;
  int px2, py2;
  int pw, ph;
  int pposx, pposy;
  unsigned long offset;

  if (!(blizzard.enabled_planes & (1 << i)) ||
      (wnd_color_mode && i != plane)) {
   blizzard.int_ctrl->enable_plane(i, 0);
   continue;
  }

  if (i == plane) {




   px1 = x;
   py1 = y;
   px2 = x + w;
   py2 = y + h;
   pposx = 0;
   pposy = 0;
  } else {

   px1 = gx1 - p->pos_x;
   py1 = gy1 - p->pos_y;
   px2 = gx2 - p->pos_x;
   py2 = gy2 - p->pos_y;
   if (px1 >= p->width || py1 >= p->height ||
       px2 <= 0 || py2 <= 0) {
    blizzard.int_ctrl->enable_plane(i, 0);
    continue;
   }



   pposx = -px1;
   pposy = -py1;
   if (px1 < 0)
    px1 = 0;
   if (py1 < 0)
    py1 = 0;
   if (px2 > p->width)
    px2 = p->width;
   if (py2 > p->height)
    py2 = p->height;
   if (pposx < 0)
    pposx = 0;
   if (pposy < 0)
    pposy = 0;
  }
  pw = px2 - px1;
  ph = py2 - py1;
  offset = p->offset + (p->scr_width * py1 + px1) * p->bpp / 8;
  if (wnd_color_mode)




   pw = (pw + 1) * bpp / p->bpp;






  blizzard.int_ctrl->setup_plane(i,
    OMAPFB_CHANNEL_OUT_LCD, offset,
    p->scr_width,
    pposx, pposy, pw, ph,
    p->color_mode);

  blizzard.int_ctrl->enable_plane(i, 1);
 }

 switch (wnd_color_mode) {
 case 128:
  color_mode = BLIZZARD_COLOR_YUV420;




  w = (w + 1) * 3 / 4;
  break;
 default:
  color_mode = BLIZZARD_COLOR_RGB565;
  break;
 }

 blizzard_wait_line_buffer();
 if (blizzard.last_color_mode == BLIZZARD_COLOR_YUV420)
  blizzard_wait_yyc();
 blizzard.last_color_mode = color_mode;
 if (flags & OMAPFB_FORMAT_FLAG_TEARSYNC)
  enable_tearsync(gy1, w, h,
    blizzard.screen_height,
    h_out,
    flags & OMAPFB_FORMAT_FLAG_FORCE_VSYNC);
 else
  disable_tearsync();

 if ((gx2_out - gx1_out) != (gx2 - gx1) ||
     (gy2_out - gy1_out) != (gy2 - gy1))
  have_zoom_for_this_update = 1;



 zoom_off = blizzard.zoom_on && !have_zoom_for_this_update &&
     (gx1_out == 0) && (gx2_out == blizzard.screen_width) &&
     (gy1_out == 0) && (gy2_out == blizzard.screen_height) &&
     (gx1 == 0) && (gy1 == 0);

 if (blizzard.zoom_on && !have_zoom_for_this_update && !zoom_off &&
     check_1d_intersect(blizzard.zoom_area_gx1, blizzard.zoom_area_gx2,
          gx1_out, gx2_out) &&
     check_1d_intersect(blizzard.zoom_area_gy1, blizzard.zoom_area_gy2,
          gy1_out, gy2_out)) {






  set_window_regs(0, 0, blizzard.screen_width,
    blizzard.screen_height,
    0, 0, blizzard.screen_width,
    blizzard.screen_height,
    BLIZZARD_COLOR_RGB565, 1, flags);
  blizzard.zoom_on = 0;
 }


 if (have_zoom_for_this_update) {
  blizzard.zoom_on = 1;
  blizzard.zoom_area_gx1 = gx1_out;
  blizzard.zoom_area_gx2 = gx2_out;
  blizzard.zoom_area_gy1 = gy1_out;
  blizzard.zoom_area_gy2 = gy2_out;
 }

 set_window_regs(gx1, gy1, gx2, gy2, gx1_out, gy1_out, gx2_out, gy2_out,
   color_mode, zoom_off, flags);
 if (zoom_off)
  blizzard.zoom_on = 0;

 blizzard.extif->set_bits_per_cycle(16);



 blizzard.extif->transfer_area(w, h, request_complete, req);

 return REQ_PENDING;
}
