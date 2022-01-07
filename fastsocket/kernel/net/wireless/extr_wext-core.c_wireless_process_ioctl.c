
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int (* wext_ioctl_func ) (struct net_device*,struct iwreq*,unsigned int,struct iw_request_info*,int *) ;
struct net_device {TYPE_1__* netdev_ops; scalar_t__ wireless_handlers; } ;
struct net {int dummy; } ;
struct iwreq {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ifreq {int ifr_name; } ;
typedef int * iw_handler ;
struct TYPE_2__ {int (* ndo_do_ioctl ) (struct net_device*,struct ifreq*,unsigned int) ;} ;


 int ENODEV ;
 int EOPNOTSUPP ;
 unsigned int SIOCGIWPRIV ;
 unsigned int SIOCGIWSTATS ;
 unsigned int SIOCIWFIRSTPRIV ;
 struct net_device* __dev_get_by_name (struct net*,int ) ;
 int * get_handler (struct net_device*,unsigned int) ;
 int iw_handler_get_iwstats ;
 int * iw_handler_get_private ;
 int netif_device_present (struct net_device*) ;
 int stub1 (struct net_device*,struct ifreq*,unsigned int) ;

__attribute__((used)) static int wireless_process_ioctl(struct net *net, struct ifreq *ifr,
      unsigned int cmd,
      struct iw_request_info *info,
      wext_ioctl_func standard,
      wext_ioctl_func private)
{
 struct iwreq *iwr = (struct iwreq *) ifr;
 struct net_device *dev;
 iw_handler handler;





 if ((dev = __dev_get_by_name(net, ifr->ifr_name)) == ((void*)0))
  return -ENODEV;




 if (cmd == SIOCGIWSTATS)
  return standard(dev, iwr, cmd, info,
    &iw_handler_get_iwstats);
 if (!netif_device_present(dev))
  return -ENODEV;


 handler = get_handler(dev, cmd);
 if (handler) {

  if (cmd < SIOCIWFIRSTPRIV)
   return standard(dev, iwr, cmd, info, handler);
  else if (private)
   return private(dev, iwr, cmd, info, handler);
 }

 if (dev->netdev_ops->ndo_do_ioctl)
  return dev->netdev_ops->ndo_do_ioctl(dev, ifr, cmd);
 return -EOPNOTSUPP;
}
