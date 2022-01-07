
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inet6_ifaddr {int flags; int probes; struct inet6_dev* idev; } ;
struct TYPE_2__ {int dad_transmits; scalar_t__ rtr_solicit_delay; } ;
struct inet6_dev {TYPE_1__ cnf; } ;


 int AC_DAD ;
 int IFA_F_OPTIMISTIC ;
 int addrconf_mod_timer (struct inet6_ifaddr*,int ,unsigned long) ;
 int net_random () ;

__attribute__((used)) static void addrconf_dad_kick(struct inet6_ifaddr *ifp)
{
 unsigned long rand_num;
 struct inet6_dev *idev = ifp->idev;

 if (ifp->flags & IFA_F_OPTIMISTIC)
  rand_num = 0;
 else
  rand_num = net_random() % (idev->cnf.rtr_solicit_delay ? : 1);

 ifp->probes = idev->cnf.dad_transmits;
 addrconf_mod_timer(ifp, AC_DAD, rand_num);
}
