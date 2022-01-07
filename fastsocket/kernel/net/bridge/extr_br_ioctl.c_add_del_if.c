
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net_bridge {int dev; } ;


 int CAP_NET_ADMIN ;
 int EINVAL ;
 int EPERM ;
 int br_add_if (struct net_bridge*,struct net_device*) ;
 int br_del_if (struct net_bridge*,struct net_device*) ;
 int capable (int ) ;
 struct net_device* dev_get_by_index (int ,int) ;
 int dev_net (int ) ;
 int dev_put (struct net_device*) ;

__attribute__((used)) static int add_del_if(struct net_bridge *br, int ifindex, int isadd)
{
 struct net_device *dev;
 int ret;

 if (!capable(CAP_NET_ADMIN))
  return -EPERM;

 dev = dev_get_by_index(dev_net(br->dev), ifindex);
 if (dev == ((void*)0))
  return -EINVAL;

 if (isadd)
  ret = br_add_if(br, dev);
 else
  ret = br_del_if(br, dev);

 dev_put(dev);
 return ret;
}
