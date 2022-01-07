
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* fbdev; int (* power_down ) (int ) ;TYPE_2__* int_ctrl; TYPE_1__* extif; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {int (* cleanup ) () ;} ;
struct TYPE_5__ {int (* cleanup ) () ;} ;


 int OMAPFB_UPDATE_DISABLED ;
 TYPE_4__ blizzard ;
 int blizzard_set_update_mode (int ) ;
 int stub1 () ;
 int stub2 () ;
 int stub3 (int ) ;

__attribute__((used)) static void blizzard_cleanup(void)
{
 blizzard_set_update_mode(OMAPFB_UPDATE_DISABLED);
 blizzard.extif->cleanup();
 blizzard.int_ctrl->cleanup();
 if (blizzard.power_down != ((void*)0))
  blizzard.power_down(blizzard.fbdev->dev);
}
