
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {TYPE_1__* ethtool_ops; } ;
struct TYPE_2__ {int (* set_tso ) (struct net_device*,int ) ;int (* set_ufo ) (struct net_device*,int ) ;int (* set_sg ) (struct net_device*,int ) ;} ;


 int stub1 (struct net_device*,int ) ;
 int stub2 (struct net_device*,int ) ;
 int stub3 (struct net_device*,int ) ;

__attribute__((used)) static int __ethtool_set_sg(struct net_device *dev, u32 data)
{
 int err;

 if (!data && dev->ethtool_ops->set_tso) {
  err = dev->ethtool_ops->set_tso(dev, 0);
  if (err)
   return err;
 }

 if (!data && dev->ethtool_ops->set_ufo) {
  err = dev->ethtool_ops->set_ufo(dev, 0);
  if (err)
   return err;
 }
 return dev->ethtool_ops->set_sg(dev, data);
}
