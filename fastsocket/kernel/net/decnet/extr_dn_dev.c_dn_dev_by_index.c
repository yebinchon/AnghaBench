
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct dn_dev* dn_ptr; } ;
struct dn_dev {int dummy; } ;


 struct net_device* dev_get_by_index (int *,int) ;
 int dev_put (struct net_device*) ;
 int init_net ;

__attribute__((used)) static struct dn_dev *dn_dev_by_index(int ifindex)
{
 struct net_device *dev;
 struct dn_dev *dn_dev = ((void*)0);
 dev = dev_get_by_index(&init_net, ifindex);
 if (dev) {
  dn_dev = dev->dn_ptr;
  dev_put(dev);
 }

 return dn_dev;
}
