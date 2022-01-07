
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum omapfb_update_mode { ____Placeholder_omapfb_update_mode } omapfb_update_mode ;
struct TYPE_4__ {int update_mode; TYPE_1__* fbdev; int frame_done; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;



 int dev_err (int ,char*) ;
 TYPE_2__ dispc ;
 int enable_lcd_clocks (int) ;
 int init_completion (int *) ;
 int msecs_to_jiffies (int) ;
 int omap_dispc_enable_lcd_out (int) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int omap_dispc_set_update_mode(enum omapfb_update_mode mode)
{
 int r = 0;

 if (mode != dispc.update_mode) {
  switch (mode) {
  case 130:
  case 129:
   enable_lcd_clocks(1);
   omap_dispc_enable_lcd_out(1);
   dispc.update_mode = mode;
   break;
  case 128:
   init_completion(&dispc.frame_done);
   omap_dispc_enable_lcd_out(0);
   if (!wait_for_completion_timeout(&dispc.frame_done,
     msecs_to_jiffies(500))) {
    dev_err(dispc.fbdev->dev,
      "timeout waiting for FRAME DONE\n");
   }
   dispc.update_mode = mode;
   enable_lcd_clocks(0);
   break;
  default:
   r = -EINVAL;
  }
 }

 return r;
}
