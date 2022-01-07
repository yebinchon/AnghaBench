
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int win ;
typedef int u16 ;
struct omapfb_update_window {int width; int height; int out_width; int out_height; } ;
struct TYPE_4__ {TYPE_3__* region; } ;
struct omapfb_device {int * fb_info; TYPE_2__* ctrl; TYPE_1__ mem_desc; } ;
struct TYPE_6__ {scalar_t__ vaddr; } ;
struct TYPE_5__ {scalar_t__ (* get_update_mode ) () ;int (* update_window ) (int ,struct omapfb_update_window*,int *,int *) ;} ;


 scalar_t__ OMAPFB_MANUAL_UPDATE ;
 int memset (struct omapfb_update_window*,int ,int) ;
 int omapfb_rqueue_lock (struct omapfb_device*) ;
 int omapfb_rqueue_unlock (struct omapfb_device*) ;
 scalar_t__ stub1 () ;
 int stub2 (int ,struct omapfb_update_window*,int *,int *) ;

void omapfb_write_first_pixel(struct omapfb_device *fbdev, u16 pixval)
{
 omapfb_rqueue_lock(fbdev);
 *(u16 *)fbdev->mem_desc.region[0].vaddr = pixval;
 if (fbdev->ctrl->get_update_mode() == OMAPFB_MANUAL_UPDATE) {
  struct omapfb_update_window win;

  memset(&win, 0, sizeof(win));
  win.width = 2;
  win.height = 2;
  win.out_width = 2;
  win.out_height = 2;
  fbdev->ctrl->update_window(fbdev->fb_info[0], &win, ((void*)0), ((void*)0));
 }
 omapfb_rqueue_unlock(fbdev);
}
