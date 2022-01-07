
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_device {int kobj; int * cls; scalar_t__ id; } ;


 int ARRAY_SIZE (int *) ;
 int * balloon_attrs ;
 int balloon_info_group ;
 int balloon_sysdev_class ;
 int sysdev_class_register (int *) ;
 int sysdev_class_unregister (int *) ;
 int sysdev_create_file (struct sys_device*,int ) ;
 int sysdev_register (struct sys_device*) ;
 int sysdev_remove_file (struct sys_device*,int ) ;
 int sysdev_unregister (struct sys_device*) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int register_balloon(struct sys_device *sysdev)
{
 int i, error;

 error = sysdev_class_register(&balloon_sysdev_class);
 if (error)
  return error;

 sysdev->id = 0;
 sysdev->cls = &balloon_sysdev_class;

 error = sysdev_register(sysdev);
 if (error) {
  sysdev_class_unregister(&balloon_sysdev_class);
  return error;
 }

 for (i = 0; i < ARRAY_SIZE(balloon_attrs); i++) {
  error = sysdev_create_file(sysdev, balloon_attrs[i]);
  if (error)
   goto fail;
 }

 error = sysfs_create_group(&sysdev->kobj, &balloon_info_group);
 if (error)
  goto fail;

 return 0;

 fail:
 while (--i >= 0)
  sysdev_remove_file(sysdev, balloon_attrs[i]);
 sysdev_unregister(sysdev);
 sysdev_class_unregister(&balloon_sysdev_class);
 return error;
}
