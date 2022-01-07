
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omapfb_update_window {int dummy; } ;
struct fb_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ update_mode; } ;


 int ENODEV ;
 scalar_t__ OMAPFB_UPDATE_DISABLED ;
 TYPE_1__ dispc ;

__attribute__((used)) static int omap_dispc_update_window(struct fb_info *fbi,
     struct omapfb_update_window *win,
     void (*complete_callback)(void *arg),
     void *complete_callback_data)
{
 return dispc.update_mode == OMAPFB_UPDATE_DISABLED ? -ENODEV : 0;
}
