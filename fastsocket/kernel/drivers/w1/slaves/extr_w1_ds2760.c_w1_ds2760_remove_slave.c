
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct w1_slave {TYPE_1__ dev; } ;
struct platform_device {int id; } ;


 struct platform_device* dev_get_drvdata (TYPE_1__*) ;
 int platform_device_unregister (struct platform_device*) ;
 int release_bat_id (int) ;
 int sysfs_remove_bin_file (int *,int *) ;
 int w1_ds2760_bin_attr ;

__attribute__((used)) static void w1_ds2760_remove_slave(struct w1_slave *sl)
{
 struct platform_device *pdev = dev_get_drvdata(&sl->dev);
 int id = pdev->id;

 platform_device_unregister(pdev);
 release_bat_id(id);
 sysfs_remove_bin_file(&sl->dev.kobj, &w1_ds2760_bin_attr);
}
