
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; int function; } ;
struct inet6_ifaddr {TYPE_1__ timer; } ;
typedef enum addrconf_timer_t { ____Placeholder_addrconf_timer_t } addrconf_timer_t ;




 int add_timer (TYPE_1__*) ;
 int addrconf_dad_timer ;
 int addrconf_rs_timer ;
 int del_timer (TYPE_1__*) ;
 int in6_ifa_hold (struct inet6_ifaddr*) ;
 scalar_t__ jiffies ;

__attribute__((used)) static void addrconf_mod_timer(struct inet6_ifaddr *ifp,
          enum addrconf_timer_t what,
          unsigned long when)
{
 if (!del_timer(&ifp->timer))
  in6_ifa_hold(ifp);

 switch (what) {
 case 129:
  ifp->timer.function = addrconf_dad_timer;
  break;
 case 128:
  ifp->timer.function = addrconf_rs_timer;
  break;
 default:;
 }
 ifp->timer.expires = jiffies + when;
 add_timer(&ifp->timer);
}
