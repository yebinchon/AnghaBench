
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct update_param {int plane; int flags; int bpp; int color_mode; int out_height; int out_width; int out_y; int out_x; int height; int width; int y; int x; } ;
struct TYPE_4__ {struct update_param update; } ;
struct blizzard_request {TYPE_1__ par; } ;
struct TYPE_6__ {int enabled_planes; int vid_nonstd_color; int vid_scaled; TYPE_2__* fbdev; } ;
struct TYPE_5__ {int dev; } ;


 int OMAPFB_FORMAT_FLAG_DISABLE_OVERLAY ;
 TYPE_3__ blizzard ;
 int dev_dbg (int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int,int) ;
 int disable_overlay () ;
 int do_full_screen_update (struct blizzard_request*) ;
 int do_partial_update (struct blizzard_request*,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int send_frame_handler(struct blizzard_request *req)
{
 struct update_param *par = &req->par.update;
 int plane = par->plane;
 if (par->flags & OMAPFB_FORMAT_FLAG_DISABLE_OVERLAY)
  disable_overlay();

 if ((blizzard.enabled_planes & blizzard.vid_nonstd_color) ||
      (blizzard.enabled_planes & blizzard.vid_scaled))
  return do_full_screen_update(req);

 return do_partial_update(req, plane, par->x, par->y,
     par->width, par->height,
     par->out_x, par->out_y,
     par->out_width, par->out_height,
     par->color_mode, par->bpp);
}
