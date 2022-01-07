
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int ext_priv_flags; } ;


 int EADDRNOTAVAIL ;
 int EBUSY ;
 int IFF_LIVE_ADDR_CHANGE ;
 int is_valid_ether_addr (int ) ;
 TYPE_1__* netdev_extended (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

int eth_prepare_mac_addr_change(struct net_device *dev, void *p)
{
 struct sockaddr *addr = p;

 if (!(netdev_extended(dev)->ext_priv_flags & IFF_LIVE_ADDR_CHANGE)
     && netif_running(dev))
  return -EBUSY;
 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;
 return 0;
}
