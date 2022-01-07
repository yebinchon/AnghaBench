
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; scalar_t__ type; } ;


 scalar_t__ ARPHRD_ETHER ;
 scalar_t__ ARPHRD_X25 ;
 int IFF_UP ;
 struct net_device* dev_get_by_name (int *,char*) ;
 int dev_put (struct net_device*) ;
 int init_net ;

struct net_device *x25_dev_get(char *devname)
{
 struct net_device *dev = dev_get_by_name(&init_net, devname);

 if (dev &&
     (!(dev->flags & IFF_UP) || (dev->type != ARPHRD_X25



     )))
  dev_put(dev);

 return dev;
}
