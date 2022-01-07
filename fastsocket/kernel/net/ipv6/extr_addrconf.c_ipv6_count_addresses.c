
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_ifaddr {struct inet6_ifaddr* if_next; } ;
struct inet6_dev {int lock; struct inet6_ifaddr* addr_list; } ;


 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static int ipv6_count_addresses(struct inet6_dev *idev)
{
 int cnt = 0;
 struct inet6_ifaddr *ifp;

 read_lock_bh(&idev->lock);
 for (ifp=idev->addr_list; ifp; ifp=ifp->if_next)
  cnt++;
 read_unlock_bh(&idev->lock);
 return cnt;
}
