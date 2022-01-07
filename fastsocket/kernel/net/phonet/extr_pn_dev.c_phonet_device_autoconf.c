
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {TYPE_1__* netdev_ops; } ;
struct ifreq {int dummy; } ;
struct TYPE_4__ {int device; } ;
struct if_phonet_req {TYPE_2__ ifr_phonet_autoconf; } ;
struct TYPE_3__ {int (* ndo_do_ioctl ) (struct net_device*,struct ifreq*,int ) ;} ;


 int ASSERT_RTNL () ;
 int EOPNOTSUPP ;
 int RTM_NEWADDR ;
 int SIOCPNGAUTOCONF ;
 int phonet_address_add (struct net_device*,int ) ;
 int phonet_address_notify (int ,struct net_device*,int ) ;
 int stub1 (struct net_device*,struct ifreq*,int ) ;

__attribute__((used)) static int phonet_device_autoconf(struct net_device *dev)
{
 struct if_phonet_req req;
 int ret;

 if (!dev->netdev_ops->ndo_do_ioctl)
  return -EOPNOTSUPP;

 ret = dev->netdev_ops->ndo_do_ioctl(dev, (struct ifreq *)&req,
      SIOCPNGAUTOCONF);
 if (ret < 0)
  return ret;

 ASSERT_RTNL();
 ret = phonet_address_add(dev, req.ifr_phonet_autoconf.device);
 if (ret)
  return ret;
 phonet_address_notify(RTM_NEWADDR, dev,
    req.ifr_phonet_autoconf.device);
 return 0;
}
