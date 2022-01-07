
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int auto_update_window; TYPE_1__* fbdev; } ;
struct TYPE_3__ {int * fb_info; } ;


 TYPE_2__ blizzard ;
 int blizzard_update_window_async (int ,int *,int *,int *) ;

__attribute__((used)) static int update_full_screen(void)
{
 return blizzard_update_window_async(blizzard.fbdev->fb_info[0],
         &blizzard.auto_update_window, ((void*)0), ((void*)0));

}
