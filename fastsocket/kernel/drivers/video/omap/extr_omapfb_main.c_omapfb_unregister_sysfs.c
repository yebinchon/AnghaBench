
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omapfb_device {TYPE_1__* dev; } ;
struct TYPE_2__ {int kobj; } ;


 int ctrl_attr_grp ;
 int dev_attr_caps_num ;
 int dev_attr_caps_text ;
 int device_remove_file (TYPE_1__*,int *) ;
 int panel_attr_grp ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void omapfb_unregister_sysfs(struct omapfb_device *fbdev)
{
 sysfs_remove_group(&fbdev->dev->kobj, &ctrl_attr_grp);
 sysfs_remove_group(&fbdev->dev->kobj, &panel_attr_grp);
 device_remove_file(fbdev->dev, &dev_attr_caps_num);
 device_remove_file(fbdev->dev, &dev_attr_caps_text);
}
