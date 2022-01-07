
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omapfb_device {TYPE_2__* panel; TYPE_1__* ctrl; } ;
struct omapfb_caps {int ctrl; } ;
struct TYPE_4__ {int (* get_caps ) (TYPE_2__*) ;} ;
struct TYPE_3__ {int (* get_caps ) (int,struct omapfb_caps*) ;} ;


 int memset (struct omapfb_caps*,int ,int) ;
 int stub1 (int,struct omapfb_caps*) ;
 int stub2 (TYPE_2__*) ;

__attribute__((used)) static void omapfb_get_caps(struct omapfb_device *fbdev, int plane,
         struct omapfb_caps *caps)
{
 memset(caps, 0, sizeof(*caps));
 fbdev->ctrl->get_caps(plane, caps);
 caps->ctrl |= fbdev->panel->get_caps(fbdev->panel);
}
