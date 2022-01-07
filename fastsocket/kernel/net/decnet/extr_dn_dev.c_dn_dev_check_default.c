
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 struct net_device* decnet_default_device ;
 int dev_put (struct net_device*) ;
 int dndev_lock ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void dn_dev_check_default(struct net_device *dev)
{
 write_lock(&dndev_lock);
 if (dev == decnet_default_device) {
  decnet_default_device = ((void*)0);
 } else {
  dev = ((void*)0);
 }
 write_unlock(&dndev_lock);
 if (dev)
  dev_put(dev);
}
