
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int dst; } ;
struct rt6_info {int rt6i_flags; unsigned long rt6i_expires; TYPE_4__ u; } ;
struct TYPE_8__ {struct rt6_info* ip6_null_entry; } ;
struct net {TYPE_3__ ipv6; } ;
struct inet6_ifaddr {int dead; int flags; unsigned long tstamp; struct inet6_dev* idev; int prefix_len; int addr; struct inet6_ifaddr* if_next; int lock; int valid_lft; struct inet6_ifaddr* tmp_next; struct inet6_ifaddr* ifpub; struct inet6_ifaddr* lst_next; } ;
struct inet6_dev {TYPE_5__* dev; int lock; struct inet6_ifaddr* addr_list; struct inet6_ifaddr* tempaddr_list; } ;
struct in6_addr {int dummy; } ;
struct TYPE_6__ {struct in6_addr daddr; } ;
struct TYPE_7__ {TYPE_1__ ip6_u; } ;
struct flowi {TYPE_2__ nl_u; int oif; } ;
struct TYPE_10__ {int ifindex; } ;


 unsigned long HZ ;
 int IFA_F_PERMANENT ;
 int IFA_F_TEMPORARY ;
 int INET6_IFADDR_STATE_DEAD ;
 int NETDEV_DOWN ;
 int RT6_LOOKUP_F_IFACE ;
 int RTF_EXPIRES ;
 int RTM_DELADDR ;
 int __in6_ifa_put (struct inet6_ifaddr*) ;
 int addrconf_del_timer (struct inet6_ifaddr*) ;
 int addrconf_hash_lock ;
 scalar_t__ addrconf_is_prefix_route (struct rt6_info*) ;
 unsigned long addrconf_timeout_fixup (int ,unsigned long) ;
 int atomic_notifier_call_chain (int *,int ,struct inet6_ifaddr*) ;
 struct net* dev_net (TYPE_5__*) ;
 int dst_release (int *) ;
 int ifa_state_lock ;
 int in6_ifa_put (struct inet6_ifaddr*) ;
 struct inet6_ifaddr** inet6_addr_lst ;
 int inet6addr_chain ;
 int ip6_del_rt (struct rt6_info*) ;
 scalar_t__ ip6_route_lookup (struct net*,struct flowi*,int ) ;
 int ipv6_addr_hash (int *) ;
 int ipv6_addr_prefix (struct in6_addr*,int *,int ) ;
 int ipv6_ifa_notify (int ,struct inet6_ifaddr*) ;
 scalar_t__ ipv6_prefix_equal (int *,int *,int ) ;
 unsigned long jiffies ;
 int rt6_remove_prefsrc (struct inet6_ifaddr*) ;
 int spin_lock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void ipv6_del_addr(struct inet6_ifaddr *ifp)
{
 struct inet6_ifaddr *ifa, **ifap;
 struct inet6_dev *idev = ifp->idev;
 int state;
 int hash;
 int deleted = 0, onlink = 0;
 unsigned long expires = jiffies;

 hash = ipv6_addr_hash(&ifp->addr);

 spin_lock_bh(&ifa_state_lock);
 state = ifp->dead;
 ifp->dead = INET6_IFADDR_STATE_DEAD;
 spin_unlock_bh(&ifa_state_lock);

 if (state == INET6_IFADDR_STATE_DEAD)
  goto out;


 write_lock_bh(&addrconf_hash_lock);
 for (ifap = &inet6_addr_lst[hash]; (ifa=*ifap) != ((void*)0);
      ifap = &ifa->lst_next) {
  if (ifa == ifp) {
   *ifap = ifa->lst_next;
   __in6_ifa_put(ifp);
   ifa->lst_next = ((void*)0);
   break;
  }
 }
 write_unlock_bh(&addrconf_hash_lock);

 write_lock_bh(&idev->lock);
 for (ifap = &idev->addr_list; (ifa=*ifap) != ((void*)0);) {
  if (ifa == ifp) {
   *ifap = ifa->if_next;
   __in6_ifa_put(ifp);
   ifa->if_next = ((void*)0);
   if (!(ifp->flags & IFA_F_PERMANENT) || onlink > 0)
    break;
   deleted = 1;
   continue;
  } else if (ifp->flags & IFA_F_PERMANENT) {
   if (ipv6_prefix_equal(&ifa->addr, &ifp->addr,
           ifp->prefix_len)) {
    if (ifa->flags & IFA_F_PERMANENT) {
     onlink = 1;
     if (deleted)
      break;
    } else {
     unsigned long lifetime;

     if (!onlink)
      onlink = -1;

     spin_lock(&ifa->lock);

     lifetime = addrconf_timeout_fixup(ifa->valid_lft, HZ);





     if (time_before(expires,
       ifa->tstamp + lifetime * HZ))
      expires = ifa->tstamp + lifetime * HZ;
     spin_unlock(&ifa->lock);
    }
   }
  }
  ifap = &ifa->if_next;
 }
 write_unlock_bh(&idev->lock);

 addrconf_del_timer(ifp);

 ipv6_ifa_notify(RTM_DELADDR, ifp);

 atomic_notifier_call_chain(&inet6addr_chain, NETDEV_DOWN, ifp);
 if ((ifp->flags & IFA_F_PERMANENT) && onlink < 1) {
  struct in6_addr prefix;
  struct rt6_info *rt;
  struct net *net = dev_net(ifp->idev->dev);
  struct flowi fl = {};

  ipv6_addr_prefix(&prefix, &ifp->addr, ifp->prefix_len);
  fl.oif = ifp->idev->dev->ifindex;
  fl.nl_u.ip6_u.daddr = prefix;
  rt = (struct rt6_info *)ip6_route_lookup(net, &fl,
        RT6_LOOKUP_F_IFACE);

  if (rt != net->ipv6.ip6_null_entry &&
      addrconf_is_prefix_route(rt)) {
   if (onlink == 0) {
    ip6_del_rt(rt);
    rt = ((void*)0);
   } else if (!(rt->rt6i_flags & RTF_EXPIRES)) {
    rt->rt6i_expires = expires;
    rt->rt6i_flags |= RTF_EXPIRES;
   }
  }
  dst_release(&rt->u.dst);
 }


 rt6_remove_prefsrc(ifp);
out:
 in6_ifa_put(ifp);
}
