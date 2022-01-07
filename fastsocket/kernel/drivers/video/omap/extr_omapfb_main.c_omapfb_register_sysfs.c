
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct omapfb_device {TYPE_1__* dev; } ;
struct TYPE_4__ {int kobj; } ;


 int ctrl_attr_grp ;
 int dev_attr_caps_num ;
 int dev_attr_caps_text ;
 int dev_err (TYPE_1__*,char*) ;
 int device_create_file (TYPE_1__*,int *) ;
 int device_remove_file (TYPE_1__*,int *) ;
 int panel_attr_grp ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int omapfb_register_sysfs(struct omapfb_device *fbdev)
{
 int r;

 if ((r = device_create_file(fbdev->dev, &dev_attr_caps_num)))
  goto fail0;

 if ((r = device_create_file(fbdev->dev, &dev_attr_caps_text)))
  goto fail1;

 if ((r = sysfs_create_group(&fbdev->dev->kobj, &panel_attr_grp)))
  goto fail2;

 if ((r = sysfs_create_group(&fbdev->dev->kobj, &ctrl_attr_grp)))
  goto fail3;

 return 0;
fail3:
 sysfs_remove_group(&fbdev->dev->kobj, &panel_attr_grp);
fail2:
 device_remove_file(fbdev->dev, &dev_attr_caps_text);
fail1:
 device_remove_file(fbdev->dev, &dev_attr_caps_num);
fail0:
 dev_err(fbdev->dev, "unable to register sysfs interface\n");
 return r;
}
