
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* fbdev; int last_frame_complete; } ;
struct TYPE_3__ {int dev; } ;


 int dev_err (int ,char*) ;
 int disable_controller_async () ;
 int init_completion (int *) ;
 TYPE_2__ lcdc ;
 int msecs_to_jiffies (int) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void disable_controller(void)
{
 init_completion(&lcdc.last_frame_complete);
 disable_controller_async();
 if (!wait_for_completion_timeout(&lcdc.last_frame_complete,
    msecs_to_jiffies(500)))
  dev_err(lcdc.fbdev->dev, "timeout waiting for FRAME DONE\n");
}
