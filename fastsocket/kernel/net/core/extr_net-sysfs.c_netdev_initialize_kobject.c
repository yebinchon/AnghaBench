
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct net_device {struct device dev; } ;


 int device_initialize (struct device*) ;

void netdev_initialize_kobject(struct net_device *net)
{
 struct device *device = &(net->dev);
 device_initialize(device);
}
