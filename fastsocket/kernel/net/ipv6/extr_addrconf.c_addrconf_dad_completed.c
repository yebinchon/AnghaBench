
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int flags; } ;
struct inet6_ifaddr {int probes; int lock; TYPE_2__* idev; int addr; } ;
struct TYPE_3__ {scalar_t__ rtr_solicits; int rtr_solicit_interval; } ;
struct TYPE_4__ {TYPE_1__ cnf; int if_flags; struct net_device* dev; } ;


 int AC_RS ;
 int IFF_LOOPBACK ;
 int IF_RS_SENT ;
 int IPV6_ADDR_LINKLOCAL ;
 int RTM_NEWADDR ;
 int addrconf_mod_timer (struct inet6_ifaddr*,int ,int ) ;
 int in6addr_linklocal_allrouters ;
 scalar_t__ ipv6_accept_ra (TYPE_2__*) ;
 int ipv6_addr_type (int *) ;
 int ipv6_ifa_notify (int ,struct inet6_ifaddr*) ;
 int ndisc_send_rs (struct net_device*,int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void addrconf_dad_completed(struct inet6_ifaddr *ifp)
{
 struct net_device * dev = ifp->idev->dev;





 ipv6_ifa_notify(RTM_NEWADDR, ifp);





 if (ipv6_accept_ra(ifp->idev) &&
     ifp->idev->cnf.rtr_solicits > 0 &&
     (dev->flags&IFF_LOOPBACK) == 0 &&
     (ipv6_addr_type(&ifp->addr) & IPV6_ADDR_LINKLOCAL)) {





  ndisc_send_rs(ifp->idev->dev, &ifp->addr, &in6addr_linklocal_allrouters);

  spin_lock_bh(&ifp->lock);
  ifp->probes = 1;
  ifp->idev->if_flags |= IF_RS_SENT;
  addrconf_mod_timer(ifp, AC_RS, ifp->idev->cnf.rtr_solicit_interval);
  spin_unlock_bh(&ifp->lock);
 }
}
