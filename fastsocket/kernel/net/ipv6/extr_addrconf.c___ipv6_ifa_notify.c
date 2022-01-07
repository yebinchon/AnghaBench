
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct inet6_ifaddr {TYPE_3__* rt; int addr; TYPE_5__* idev; } ;
struct TYPE_6__ {int forwarding; } ;
struct TYPE_9__ {TYPE_1__ cnf; } ;
struct TYPE_7__ {int dst; } ;
struct TYPE_8__ {TYPE_2__ u; int rt6i_node; } ;




 int addrconf_join_anycast (struct inet6_ifaddr*) ;
 int addrconf_leave_anycast (struct inet6_ifaddr*) ;
 int addrconf_leave_solict (TYPE_5__*,int *) ;
 int dst_free (int *) ;
 int dst_hold (int *) ;
 int inet6_ifa_notify (int,struct inet6_ifaddr*) ;
 int ip6_del_rt (TYPE_3__*) ;
 int ip6_ins_rt (TYPE_3__*) ;

__attribute__((used)) static void __ipv6_ifa_notify(int event, struct inet6_ifaddr *ifp)
{
 inet6_ifa_notify(event ? : 128, ifp);

 switch (event) {
 case 128:






  if (!(ifp->rt->rt6i_node))
   ip6_ins_rt(ifp->rt);
  if (ifp->idev->cnf.forwarding)
   addrconf_join_anycast(ifp);
  break;
 case 129:
  if (ifp->idev->cnf.forwarding)
   addrconf_leave_anycast(ifp);
  addrconf_leave_solict(ifp->idev, &ifp->addr);
  dst_hold(&ifp->rt->u.dst);
  if (ip6_del_rt(ifp->rt))
   dst_free(&ifp->rt->u.dst);
  break;
 }
}
