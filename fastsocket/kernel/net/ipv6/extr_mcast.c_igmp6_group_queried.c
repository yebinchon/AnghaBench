
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* expires; } ;
struct ifmcaddr6 {int mca_flags; int mca_refcnt; TYPE_1__ mca_timer; int mca_addr; } ;


 scalar_t__ IPV6_ADDR_MC_SCOPE (int *) ;
 scalar_t__ IPV6_ADDR_SCOPE_LINKLOCAL ;
 int MAF_TIMER_RUNNING ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ del_timer (TYPE_1__*) ;
 scalar_t__ ipv6_addr_is_ll_all_nodes (int *) ;
 void* jiffies ;
 int mod_timer (TYPE_1__*,void*) ;
 unsigned long net_random () ;

__attribute__((used)) static void igmp6_group_queried(struct ifmcaddr6 *ma, unsigned long resptime)
{
 unsigned long delay = resptime;


 if (ipv6_addr_is_ll_all_nodes(&ma->mca_addr) ||
     IPV6_ADDR_MC_SCOPE(&ma->mca_addr) < IPV6_ADDR_SCOPE_LINKLOCAL)
  return;

 if (del_timer(&ma->mca_timer)) {
  atomic_dec(&ma->mca_refcnt);
  delay = ma->mca_timer.expires - jiffies;
 }

 if (delay >= resptime) {
  if (resptime)
   delay = net_random() % resptime;
  else
   delay = 1;
 }
 ma->mca_timer.expires = jiffies + delay;
 if (!mod_timer(&ma->mca_timer, jiffies + delay))
  atomic_inc(&ma->mca_refcnt);
 ma->mca_flags |= MAF_TIMER_RUNNING;
}
