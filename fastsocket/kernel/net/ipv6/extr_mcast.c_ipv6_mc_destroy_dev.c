
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ forwarding; } ;
struct inet6_dev {int lock; struct ifmcaddr6* mc_list; TYPE_1__ cnf; } ;
struct ifmcaddr6 {struct ifmcaddr6* next; } ;


 int __ipv6_dev_mc_dec (struct inet6_dev*,int *) ;
 int igmp6_group_dropped (struct ifmcaddr6*) ;
 int in6addr_linklocal_allnodes ;
 int in6addr_linklocal_allrouters ;
 int ipv6_mc_down (struct inet6_dev*) ;
 int ma_put (struct ifmcaddr6*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void ipv6_mc_destroy_dev(struct inet6_dev *idev)
{
 struct ifmcaddr6 *i;


 ipv6_mc_down(idev);






 __ipv6_dev_mc_dec(idev, &in6addr_linklocal_allnodes);

 if (idev->cnf.forwarding)
  __ipv6_dev_mc_dec(idev, &in6addr_linklocal_allrouters);

 write_lock_bh(&idev->lock);
 while ((i = idev->mc_list) != ((void*)0)) {
  idev->mc_list = i->next;
  write_unlock_bh(&idev->lock);

  igmp6_group_dropped(i);
  ma_put(i);

  write_lock_bh(&idev->lock);
 }
 write_unlock_bh(&idev->lock);
}
