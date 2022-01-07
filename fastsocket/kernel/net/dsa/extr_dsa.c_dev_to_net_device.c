
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct device {int dummy; } ;


 struct device* dev_find_class (struct device*,char*) ;
 int dev_hold (struct net_device*) ;
 int put_device (struct device*) ;
 struct net_device* to_net_dev (struct device*) ;

__attribute__((used)) static struct net_device *dev_to_net_device(struct device *dev)
{
 struct device *d;

 d = dev_find_class(dev, "net");
 if (d != ((void*)0)) {
  struct net_device *nd;

  nd = to_net_dev(d);
  dev_hold(nd);
  put_device(d);

  return nd;
 }

 return ((void*)0);
}
