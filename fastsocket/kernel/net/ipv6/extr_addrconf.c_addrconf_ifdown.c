
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int ip6_ptr; } ;
struct net {int dummy; } ;
struct inet6_ifaddr {int dead; struct inet6_ifaddr* if_next; int lock; struct inet6_ifaddr* ifpub; struct inet6_ifaddr* tmp_next; struct inet6_ifaddr* lst_next; struct inet6_dev* idev; } ;
struct inet6_dev {int dead; int if_flags; int nd_parms; int tstamp; int lock; struct inet6_ifaddr* addr_list; struct inet6_ifaddr* tempaddr_list; int regen_timer; } ;


 int ASSERT_RTNL () ;
 int ENODEV ;
 int IF_RA_RCVD ;
 int IF_READY ;
 int IF_RS_SENT ;
 int IN6_ADDR_HSIZE ;
 int INET6_IFADDR_STATE_DEAD ;
 int NETDEV_DOWN ;
 int RTM_DELADDR ;
 struct inet6_dev* __in6_dev_get (struct net_device*) ;
 int __ipv6_ifa_notify (int ,struct inet6_ifaddr*) ;
 int addrconf_del_timer (struct inet6_ifaddr*) ;
 int addrconf_hash_lock ;
 int addrconf_sysctl_unregister (struct inet6_dev*) ;
 int atomic_notifier_call_chain (int *,int ,struct inet6_ifaddr*) ;
 scalar_t__ del_timer (int *) ;
 struct net* dev_net (struct net_device*) ;
 int ifa_state_lock ;
 int in6_dev_put (struct inet6_dev*) ;
 int in6_ifa_put (struct inet6_ifaddr*) ;
 struct inet6_ifaddr** inet6_addr_lst ;
 int inet6addr_chain ;
 int ipv6_mc_destroy_dev (struct inet6_dev*) ;
 int ipv6_mc_down (struct inet6_dev*) ;
 int jiffies ;
 int nd_tbl ;
 int neigh_ifdown (int *,struct net_device*) ;
 int neigh_parms_release (int *,int ) ;
 int rcu_assign_pointer (int ,int *) ;
 int rt6_ifdown (struct net*,struct net_device*) ;
 int snmp6_unregister_dev (struct inet6_dev*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int addrconf_ifdown(struct net_device *dev, int how)
{
 struct inet6_dev *idev;
 struct inet6_ifaddr *ifa, **bifa;
 struct net *net = dev_net(dev);
 int state;
 int i;

 ASSERT_RTNL();

 rt6_ifdown(net, dev);
 neigh_ifdown(&nd_tbl, dev);

 idev = __in6_dev_get(dev);
 if (idev == ((void*)0))
  return -ENODEV;




 if (how) {
  idev->dead = 1;


  rcu_assign_pointer(dev->ip6_ptr, ((void*)0));


  snmp6_unregister_dev(idev);

 }


 for (i=0; i<IN6_ADDR_HSIZE; i++) {
  bifa = &inet6_addr_lst[i];

  write_lock_bh(&addrconf_hash_lock);
  while ((ifa = *bifa) != ((void*)0)) {
   if (ifa->idev == idev) {
    *bifa = ifa->lst_next;
    ifa->lst_next = ((void*)0);
    addrconf_del_timer(ifa);
    in6_ifa_put(ifa);
    continue;
   }
   bifa = &ifa->lst_next;
  }
  write_unlock_bh(&addrconf_hash_lock);
 }

 write_lock_bh(&idev->lock);


 if (!how)
  idev->if_flags &= ~(IF_RS_SENT|IF_RA_RCVD|IF_READY);
 while ((ifa = idev->addr_list) != ((void*)0)) {
  idev->addr_list = ifa->if_next;
  ifa->if_next = ((void*)0);
  addrconf_del_timer(ifa);
  write_unlock_bh(&idev->lock);
  spin_lock_bh(&ifa_state_lock);
  state = ifa->dead;
  ifa->dead = INET6_IFADDR_STATE_DEAD;
  spin_unlock_bh(&ifa_state_lock);

  if (state == INET6_IFADDR_STATE_DEAD)
   goto put_ifa;


  __ipv6_ifa_notify(RTM_DELADDR, ifa);
  atomic_notifier_call_chain(&inet6addr_chain, NETDEV_DOWN, ifa);

put_ifa:
  in6_ifa_put(ifa);

  write_lock_bh(&idev->lock);
 }
 write_unlock_bh(&idev->lock);



 if (how)
  ipv6_mc_destroy_dev(idev);
 else
  ipv6_mc_down(idev);

 idev->tstamp = jiffies;



 if (how) {
  addrconf_sysctl_unregister(idev);
  neigh_parms_release(&nd_tbl, idev->nd_parms);
  neigh_ifdown(&nd_tbl, dev);
  in6_dev_put(idev);
 }
 return 0;
}
