
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; unsigned int gflags; } ;


 int ASSERT_RTNL () ;
 unsigned int IFF_ALLMULTI ;
 unsigned int IFF_AUTOMEDIA ;
 unsigned int IFF_DEBUG ;
 unsigned int IFF_DYNAMIC ;
 unsigned int IFF_MULTICAST ;
 unsigned int IFF_NOARP ;
 unsigned int IFF_NOTRAILERS ;
 unsigned int IFF_PORTSEL ;
 unsigned int IFF_PROMISC ;
 unsigned int IFF_RUNNING ;
 unsigned int IFF_UP ;
 unsigned int IFF_VOLATILE ;
 int NETDEV_CHANGE ;
 int RTM_NEWLINK ;
 int call_netdevice_notifiers (int ,struct net_device*) ;
 int dev_change_rx_flags (struct net_device*,unsigned int) ;
 int dev_close (struct net_device*) ;
 int dev_open (struct net_device*) ;
 int dev_set_allmulti (struct net_device*,int) ;
 int dev_set_promiscuity (struct net_device*,int) ;
 int dev_set_rx_mode (struct net_device*) ;
 int rtmsg_ifinfo (int ,struct net_device*,int) ;
 int stub1 (struct net_device*) ;

int dev_change_flags(struct net_device *dev, unsigned flags)
{
 int ret, changes;
 int old_flags = dev->flags;

 ASSERT_RTNL();





 dev->flags = (flags & (IFF_DEBUG | IFF_NOTRAILERS | IFF_NOARP |
          IFF_DYNAMIC | IFF_MULTICAST | IFF_PORTSEL |
          IFF_AUTOMEDIA)) |
       (dev->flags & (IFF_UP | IFF_VOLATILE | IFF_PROMISC |
        IFF_ALLMULTI));





 if ((old_flags ^ flags) & IFF_MULTICAST)
  dev_change_rx_flags(dev, IFF_MULTICAST);

 dev_set_rx_mode(dev);







 ret = 0;
 if ((old_flags ^ flags) & IFF_UP) {
  ret = ((old_flags & IFF_UP) ? dev_close : dev_open)(dev);

  if (!ret)
   dev_set_rx_mode(dev);
 }

 if (dev->flags & IFF_UP &&
     ((old_flags ^ dev->flags) & ~(IFF_UP | IFF_PROMISC | IFF_ALLMULTI |
       IFF_VOLATILE)))
  call_netdevice_notifiers(NETDEV_CHANGE, dev);

 if ((flags ^ dev->gflags) & IFF_PROMISC) {
  int inc = (flags & IFF_PROMISC) ? 1 : -1;

  dev->gflags ^= IFF_PROMISC;
  dev_set_promiscuity(dev, inc);
 }





 if ((flags ^ dev->gflags) & IFF_ALLMULTI) {
  int inc = (flags & IFF_ALLMULTI) ? 1 : -1;

  dev->gflags ^= IFF_ALLMULTI;
  dev_set_allmulti(dev, inc);
 }


 changes = (old_flags ^ dev->flags) & ~(IFF_UP | IFF_RUNNING);
 if (changes)
  rtmsg_ifinfo(RTM_NEWLINK, dev, changes);

 return ret;
}
