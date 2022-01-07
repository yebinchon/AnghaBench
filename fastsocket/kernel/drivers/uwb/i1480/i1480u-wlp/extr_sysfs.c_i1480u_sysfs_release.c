
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i1480u {TYPE_2__* net_dev; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int i1480u_attr_group ;
 int sysfs_remove_group (int *,int *) ;

void i1480u_sysfs_release(struct i1480u *i1480u)
{
 sysfs_remove_group(&i1480u->net_dev->dev.kobj,
      &i1480u_attr_group);
}
