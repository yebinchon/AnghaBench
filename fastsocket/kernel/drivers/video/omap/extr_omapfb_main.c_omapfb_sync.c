
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omapfb_plane_struct {struct omapfb_device* fbdev; } ;
struct omapfb_device {TYPE_1__* ctrl; } ;
struct fb_info {struct omapfb_plane_struct* par; } ;
struct TYPE_2__ {int (* sync ) () ;} ;


 int omapfb_rqueue_lock (struct omapfb_device*) ;
 int omapfb_rqueue_unlock (struct omapfb_device*) ;
 int stub1 () ;

__attribute__((used)) static void omapfb_sync(struct fb_info *fbi)
{
 struct omapfb_plane_struct *plane = fbi->par;
 struct omapfb_device *fbdev = plane->fbdev;

 omapfb_rqueue_lock(fbdev);
 if (fbdev->ctrl->sync)
  fbdev->ctrl->sync();
 omapfb_rqueue_unlock(fbdev);
}
