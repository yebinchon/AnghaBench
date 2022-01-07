
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_dev {int lock; struct ifmcaddr6* mc_list; } ;
struct in6_addr {int dummy; } ;
struct ifmcaddr6 {scalar_t__ mca_users; struct ifmcaddr6* next; int mca_addr; } ;


 int ENOENT ;
 int igmp6_group_dropped (struct ifmcaddr6*) ;
 scalar_t__ ipv6_addr_equal (int *,struct in6_addr const*) ;
 int ma_put (struct ifmcaddr6*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int __ipv6_dev_mc_dec(struct inet6_dev *idev, const struct in6_addr *addr)
{
 struct ifmcaddr6 *ma, **map;

 write_lock_bh(&idev->lock);
 for (map = &idev->mc_list; (ma=*map) != ((void*)0); map = &ma->next) {
  if (ipv6_addr_equal(&ma->mca_addr, addr)) {
   if (--ma->mca_users == 0) {
    *map = ma->next;
    write_unlock_bh(&idev->lock);

    igmp6_group_dropped(ma);

    ma_put(ma);
    return 0;
   }
   write_unlock_bh(&idev->lock);
   return 0;
  }
 }
 write_unlock_bh(&idev->lock);

 return -ENOENT;
}
