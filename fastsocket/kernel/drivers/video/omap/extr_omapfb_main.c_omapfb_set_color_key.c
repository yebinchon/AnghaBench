
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omapfb_device {TYPE_1__* ctrl; } ;
struct omapfb_color_key {int dummy; } ;
struct TYPE_2__ {int (* set_color_key ) (struct omapfb_color_key*) ;} ;


 int ENODEV ;
 int omapfb_rqueue_lock (struct omapfb_device*) ;
 int omapfb_rqueue_unlock (struct omapfb_device*) ;
 int stub1 (struct omapfb_color_key*) ;

__attribute__((used)) static int omapfb_set_color_key(struct omapfb_device *fbdev,
    struct omapfb_color_key *ck)
{
 int r;

 if (!fbdev->ctrl->set_color_key)
  return -ENODEV;

 omapfb_rqueue_lock(fbdev);
 r = fbdev->ctrl->set_color_key(ck);
 omapfb_rqueue_unlock(fbdev);

 return r;
}
