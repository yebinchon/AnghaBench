
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;


 int IFF_UP ;
 int NETDEV_CHANGE ;
 int RTM_NEWLINK ;
 int call_netdevice_notifiers (int ,struct net_device*) ;
 int rtmsg_ifinfo (int ,struct net_device*,int ) ;

void netdev_state_change(struct net_device *dev)
{
 if (dev->flags & IFF_UP) {
  call_netdevice_notifiers(NETDEV_CHANGE, dev);
  rtmsg_ifinfo(RTM_NEWLINK, dev, 0);
 }
}
