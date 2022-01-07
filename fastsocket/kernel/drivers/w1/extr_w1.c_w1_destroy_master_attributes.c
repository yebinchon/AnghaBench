
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct w1_master {TYPE_1__ dev; } ;


 int sysfs_remove_group (int *,int *) ;
 int w1_master_defattr_group ;

void w1_destroy_master_attributes(struct w1_master *master)
{
 sysfs_remove_group(&master->dev.kobj, &w1_master_defattr_group);
}
