
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i1480u {TYPE_3__* net_dev; TYPE_1__* usb_iface; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int kobj; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;
struct TYPE_4__ {struct device dev; } ;


 int dev_err (struct device*,char*,int) ;
 int i1480u_attr_group ;
 int sysfs_create_group (int *,int *) ;

int i1480u_sysfs_setup(struct i1480u *i1480u)
{
 int result;
 struct device *dev = &i1480u->usb_iface->dev;
 result = sysfs_create_group(&i1480u->net_dev->dev.kobj,
        &i1480u_attr_group);
 if (result < 0)
  dev_err(dev, "cannot initialize sysfs attributes: %d\n",
   result);
 return result;
}
