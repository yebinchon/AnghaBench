
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ update_mode; TYPE_1__* fbdev; int frame_done; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ OMAPFB_AUTO_UPDATE ;
 int dev_err (int ,char*) ;
 TYPE_2__ dispc ;
 int enable_lcd_clocks (int ) ;
 int init_completion (int *) ;
 int msecs_to_jiffies (int) ;
 int omap_dispc_enable_lcd_out (int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void omap_dispc_suspend(void)
{
 if (dispc.update_mode == OMAPFB_AUTO_UPDATE) {
  init_completion(&dispc.frame_done);
  omap_dispc_enable_lcd_out(0);
  if (!wait_for_completion_timeout(&dispc.frame_done,
    msecs_to_jiffies(500))) {
   dev_err(dispc.fbdev->dev,
    "timeout waiting for FRAME DONE\n");
  }
  enable_lcd_clocks(0);
 }
}
