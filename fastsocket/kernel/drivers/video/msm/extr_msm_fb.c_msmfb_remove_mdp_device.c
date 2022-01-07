
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct class_interface {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 TYPE_1__* mdp ;
 int msm_panel_driver ;
 int platform_driver_unregister (int *) ;

__attribute__((used)) static void msmfb_remove_mdp_device(struct device *dev,
    struct class_interface *class_intf)
{

 if (dev != &mdp->dev)
  return;
 platform_driver_unregister(&msm_panel_driver);
 mdp = ((void*)0);
}
