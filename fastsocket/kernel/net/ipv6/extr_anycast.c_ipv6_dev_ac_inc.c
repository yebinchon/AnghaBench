
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt6_info {int dummy; } ;
struct net_device {int dummy; } ;
struct inet6_dev {int lock; struct ifacaddr6* ac_list; scalar_t__ dead; } ;
struct in6_addr {int dummy; } ;
struct ifacaddr6 {int aca_users; int aca_addr; struct ifacaddr6* aca_next; int aca_lock; int aca_refcnt; int aca_tstamp; int aca_cstamp; struct rt6_info* aca_rt; struct inet6_dev* aca_idev; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (struct rt6_info*) ;
 int PTR_ERR (struct rt6_info*) ;
 int aca_put (struct ifacaddr6*) ;
 struct rt6_info* addrconf_dst_alloc (struct inet6_dev*,struct in6_addr*,int) ;
 int addrconf_join_solict (struct net_device*,int *) ;
 int atomic_set (int *,int) ;
 struct inet6_dev* in6_dev_get (struct net_device*) ;
 int in6_dev_put (struct inet6_dev*) ;
 int ip6_ins_rt (struct rt6_info*) ;
 int ipv6_addr_copy (int *,struct in6_addr*) ;
 scalar_t__ ipv6_addr_equal (int *,struct in6_addr*) ;
 int jiffies ;
 int kfree (struct ifacaddr6*) ;
 struct ifacaddr6* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int ipv6_dev_ac_inc(struct net_device *dev, struct in6_addr *addr)
{
 struct ifacaddr6 *aca;
 struct inet6_dev *idev;
 struct rt6_info *rt;
 int err;

 idev = in6_dev_get(dev);

 if (idev == ((void*)0))
  return -EINVAL;

 write_lock_bh(&idev->lock);
 if (idev->dead) {
  err = -ENODEV;
  goto out;
 }

 for (aca = idev->ac_list; aca; aca = aca->aca_next) {
  if (ipv6_addr_equal(&aca->aca_addr, addr)) {
   aca->aca_users++;
   err = 0;
   goto out;
  }
 }





 aca = kzalloc(sizeof(struct ifacaddr6), GFP_ATOMIC);

 if (aca == ((void*)0)) {
  err = -ENOMEM;
  goto out;
 }

 rt = addrconf_dst_alloc(idev, addr, 1);
 if (IS_ERR(rt)) {
  kfree(aca);
  err = PTR_ERR(rt);
  goto out;
 }

 ipv6_addr_copy(&aca->aca_addr, addr);
 aca->aca_idev = idev;
 aca->aca_rt = rt;
 aca->aca_users = 1;

 aca->aca_cstamp = aca->aca_tstamp = jiffies;
 atomic_set(&aca->aca_refcnt, 2);
 spin_lock_init(&aca->aca_lock);

 aca->aca_next = idev->ac_list;
 idev->ac_list = aca;
 write_unlock_bh(&idev->lock);

 ip6_ins_rt(rt);

 addrconf_join_solict(dev, &aca->aca_addr);

 aca_put(aca);
 return 0;
out:
 write_unlock_bh(&idev->lock);
 in6_dev_put(idev);
 return err;
}
