
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct inet6_dev {int lock; struct ifmcaddr6* mc_list; scalar_t__ dead; } ;
struct in6_addr {int dummy; } ;
struct ifmcaddr6 {int mca_users; size_t mca_sfmode; int* mca_sfcount; int mca_addr; struct ifmcaddr6* next; int mca_flags; int mca_lock; int mca_refcnt; int mca_tstamp; int mca_cstamp; struct inet6_dev* idev; int mca_timer; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ IPV6_ADDR_MC_SCOPE (int *) ;
 scalar_t__ IPV6_ADDR_SCOPE_LINKLOCAL ;
 int MAF_NOREPORT ;
 size_t MCAST_EXCLUDE ;
 int atomic_set (int *,int) ;
 int igmp6_group_added (struct ifmcaddr6*) ;
 int igmp6_timer_handler ;
 struct inet6_dev* in6_dev_get (struct net_device*) ;
 int in6_dev_put (struct inet6_dev*) ;
 int ip6_mc_add_src (struct inet6_dev*,int *,size_t,int ,int *,int ) ;
 int ipv6_addr_copy (int *,struct in6_addr const*) ;
 scalar_t__ ipv6_addr_equal (int *,struct in6_addr const*) ;
 scalar_t__ ipv6_addr_is_ll_all_nodes (int *) ;
 int jiffies ;
 struct ifmcaddr6* kzalloc (int,int ) ;
 int ma_put (struct ifmcaddr6*) ;
 int mld_del_delrec (struct inet6_dev*,int *) ;
 int setup_timer (int *,int ,unsigned long) ;
 int spin_lock_init (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int ipv6_dev_mc_inc(struct net_device *dev, const struct in6_addr *addr)
{
 struct ifmcaddr6 *mc;
 struct inet6_dev *idev;

 idev = in6_dev_get(dev);

 if (idev == ((void*)0))
  return -EINVAL;

 write_lock_bh(&idev->lock);
 if (idev->dead) {
  write_unlock_bh(&idev->lock);
  in6_dev_put(idev);
  return -ENODEV;
 }

 for (mc = idev->mc_list; mc; mc = mc->next) {
  if (ipv6_addr_equal(&mc->mca_addr, addr)) {
   mc->mca_users++;
   write_unlock_bh(&idev->lock);
   ip6_mc_add_src(idev, &mc->mca_addr, MCAST_EXCLUDE, 0,
    ((void*)0), 0);
   in6_dev_put(idev);
   return 0;
  }
 }





 mc = kzalloc(sizeof(struct ifmcaddr6), GFP_ATOMIC);

 if (mc == ((void*)0)) {
  write_unlock_bh(&idev->lock);
  in6_dev_put(idev);
  return -ENOMEM;
 }

 setup_timer(&mc->mca_timer, igmp6_timer_handler, (unsigned long)mc);

 ipv6_addr_copy(&mc->mca_addr, addr);
 mc->idev = idev;
 mc->mca_users = 1;

 mc->mca_cstamp = mc->mca_tstamp = jiffies;
 atomic_set(&mc->mca_refcnt, 2);
 spin_lock_init(&mc->mca_lock);


 mc->mca_sfmode = MCAST_EXCLUDE;
 mc->mca_sfcount[MCAST_EXCLUDE] = 1;

 if (ipv6_addr_is_ll_all_nodes(&mc->mca_addr) ||
     IPV6_ADDR_MC_SCOPE(&mc->mca_addr) < IPV6_ADDR_SCOPE_LINKLOCAL)
  mc->mca_flags |= MAF_NOREPORT;

 mc->next = idev->mc_list;
 idev->mc_list = mc;
 write_unlock_bh(&idev->lock);

 mld_del_delrec(idev, &mc->mca_addr);
 igmp6_group_added(mc);
 ma_put(mc);
 return 0;
}
