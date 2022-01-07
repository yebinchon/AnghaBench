
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct net {int dummy; } ;


 int BUG_ON (int) ;
 int IFNAMSIZ ;
 int __dev_alloc_name (struct net*,char const*,char*) ;
 struct net* dev_net (struct net_device*) ;
 int strlcpy (int ,char*,int) ;

int dev_alloc_name(struct net_device *dev, const char *name)
{
 char buf[IFNAMSIZ];
 struct net *net;
 int ret;

 BUG_ON(!dev_net(dev));
 net = dev_net(dev);
 ret = __dev_alloc_name(net, name, buf);
 if (ret >= 0)
  strlcpy(dev->name, buf, IFNAMSIZ);
 return ret;
}
