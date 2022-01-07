
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_ifaddr {int timer; } ;


 int __in6_ifa_put (struct inet6_ifaddr*) ;
 scalar_t__ del_timer (int *) ;

__attribute__((used)) static void addrconf_del_timer(struct inet6_ifaddr *ifp)
{
 if (del_timer(&ifp->timer))
  __in6_ifa_put(ifp);
}
