
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_ifaddr {struct inet6_ifaddr* if_next; int addr; } ;
struct inet6_dev {struct inet6_ifaddr* addr_list; } ;


 int ipv6_addr_src_scope (int *) ;

__attribute__((used)) static void
ipv6_link_dev_addr(struct inet6_dev *idev, struct inet6_ifaddr *ifp)
{
 struct inet6_ifaddr *ifa, **ifap;
 int ifp_scope = ipv6_addr_src_scope(&ifp->addr);





 for (ifap = &idev->addr_list; (ifa = *ifap) != ((void*)0);
      ifap = &ifa->if_next) {
  if (ifp_scope >= ipv6_addr_src_scope(&ifa->addr))
   break;
 }

 ifp->if_next = *ifap;
 *ifap = ifp;
}
