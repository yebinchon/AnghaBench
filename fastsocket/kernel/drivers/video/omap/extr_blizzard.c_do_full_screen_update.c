
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


struct plane_info {int color_mode; int height; int width; int pos_y; int pos_x; int scr_width; int offset; } ;
struct TYPE_9__ {int flags; } ;
struct TYPE_10__ {TYPE_3__ update; } ;
struct blizzard_request {TYPE_4__ par; } ;
struct TYPE_12__ {int enabled_planes; int screen_height; int screen_width; TYPE_5__* extif; scalar_t__ zoom_on; TYPE_2__* fbdev; TYPE_1__* int_ctrl; struct plane_info* plane; } ;
struct TYPE_11__ {int (* transfer_area ) (int ,int ,int ,struct blizzard_request*) ;int (* set_bits_per_cycle ) (int) ;} ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {int (* enable_plane ) (int,int) ;int (* setup_plane ) (int,int ,int ,int ,int ,int ,int ,int ,int ) ;} ;


 int BLIZZARD_COLOR_RGB565 ;
 int OMAPFB_CHANNEL_OUT_LCD ;
 int OMAPFB_FORMAT_FLAG_FORCE_VSYNC ;
 int OMAPFB_FORMAT_FLAG_TEARSYNC ;
 int REQ_PENDING ;
 TYPE_6__ blizzard ;
 int blizzard_wait_line_buffer () ;
 int dev_dbg (int ,char*,int ,int ) ;
 int disable_tearsync () ;
 int enable_tearsync (int ,int ,int ,int ,int ,int) ;
 int request_complete ;
 int set_window_regs (int ,int ,int ,int ,int ,int ,int ,int ,int ,scalar_t__,int) ;
 int stub1 (int,int) ;
 int stub2 (int,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int stub3 (int,int) ;
 int stub4 (int) ;
 int stub5 (int ,int ,int ,struct blizzard_request*) ;

__attribute__((used)) static int do_full_screen_update(struct blizzard_request *req)
{
 int i;
 int flags;

 for (i = 0; i < 3; i++) {
  struct plane_info *p = &blizzard.plane[i];
  if (!(blizzard.enabled_planes & (1 << i))) {
   blizzard.int_ctrl->enable_plane(i, 0);
   continue;
  }
  dev_dbg(blizzard.fbdev->dev, "pw %d ph %d\n",
   p->width, p->height);
  blizzard.int_ctrl->setup_plane(i,
    OMAPFB_CHANNEL_OUT_LCD, p->offset,
    p->scr_width, p->pos_x, p->pos_y,
    p->width, p->height,
    p->color_mode);
  blizzard.int_ctrl->enable_plane(i, 1);
 }

 dev_dbg(blizzard.fbdev->dev, "sw %d sh %d\n",
  blizzard.screen_width, blizzard.screen_height);
 blizzard_wait_line_buffer();
 flags = req->par.update.flags;
 if (flags & OMAPFB_FORMAT_FLAG_TEARSYNC)
  enable_tearsync(0, blizzard.screen_width,
    blizzard.screen_height,
    blizzard.screen_height,
    blizzard.screen_height,
    flags & OMAPFB_FORMAT_FLAG_FORCE_VSYNC);
 else
  disable_tearsync();

 set_window_regs(0, 0, blizzard.screen_width, blizzard.screen_height,
   0, 0, blizzard.screen_width, blizzard.screen_height,
   BLIZZARD_COLOR_RGB565, blizzard.zoom_on, flags);
 blizzard.zoom_on = 0;

 blizzard.extif->set_bits_per_cycle(16);



 blizzard.extif->transfer_area(blizzard.screen_width,
          blizzard.screen_height,
          request_complete, req);
 return REQ_PENDING;
}
