
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct inet6_ifaddr {int flags; unsigned long tstamp; unsigned long valid_lft; unsigned long prefered_lft; int lock; scalar_t__ regen_count; struct inet6_ifaddr* ifpub; TYPE_3__* idev; struct inet6_ifaddr* lst_next; } ;
struct TYPE_10__ {unsigned long expires; } ;
struct TYPE_7__ {unsigned long regen_max_retry; unsigned long dad_transmits; } ;
struct TYPE_9__ {TYPE_2__* nd_parms; TYPE_1__ cnf; } ;
struct TYPE_8__ {unsigned long retrans_time; } ;


 unsigned long ADDR_CHECK_FREQUENCY ;
 unsigned long HZ ;
 int IFA_F_DEPRECATED ;
 int IFA_F_PERMANENT ;
 int IFA_F_TEMPORARY ;
 int IFA_F_TENTATIVE ;
 int IN6_ADDR_HSIZE ;
 unsigned long INFINITY_LIFE_TIME ;
 int add_timer (TYPE_4__*) ;
 TYPE_4__ addr_chk_timer ;
 int addrconf_hash_lock ;
 int addrconf_verify_lock ;
 int del_timer (TYPE_4__*) ;
 int in6_ifa_hold (struct inet6_ifaddr*) ;
 int in6_ifa_put (struct inet6_ifaddr*) ;
 struct inet6_ifaddr** inet6_addr_lst ;
 int ipv6_create_tempaddr (struct inet6_ifaddr*,struct inet6_ifaddr*) ;
 int ipv6_del_addr (struct inet6_ifaddr*) ;
 int ipv6_ifa_notify (int ,struct inet6_ifaddr*) ;
 unsigned long jiffies ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static void addrconf_verify(unsigned long foo)
{
 struct inet6_ifaddr *ifp;
 unsigned long now, next;
 int i;

 spin_lock_bh(&addrconf_verify_lock);
 now = jiffies;
 next = now + ADDR_CHECK_FREQUENCY;

 del_timer(&addr_chk_timer);

 for (i=0; i < IN6_ADDR_HSIZE; i++) {

restart:
  read_lock(&addrconf_hash_lock);
  for (ifp=inet6_addr_lst[i]; ifp; ifp=ifp->lst_next) {
   unsigned long age;




   if (ifp->flags & IFA_F_PERMANENT)
    continue;

   spin_lock(&ifp->lock);
   age = (now - ifp->tstamp) / HZ;







   if (ifp->valid_lft != INFINITY_LIFE_TIME &&
       age >= ifp->valid_lft) {
    spin_unlock(&ifp->lock);
    in6_ifa_hold(ifp);
    read_unlock(&addrconf_hash_lock);
    ipv6_del_addr(ifp);
    goto restart;
   } else if (ifp->prefered_lft == INFINITY_LIFE_TIME) {
    spin_unlock(&ifp->lock);
    continue;
   } else if (age >= ifp->prefered_lft) {

    int deprecate = 0;

    if (!(ifp->flags&IFA_F_DEPRECATED)) {
     deprecate = 1;
     ifp->flags |= IFA_F_DEPRECATED;
    }

    if (time_before(ifp->tstamp + ifp->valid_lft * HZ, next))
     next = ifp->tstamp + ifp->valid_lft * HZ;

    spin_unlock(&ifp->lock);

    if (deprecate) {
     in6_ifa_hold(ifp);
     read_unlock(&addrconf_hash_lock);

     ipv6_ifa_notify(0, ifp);
     in6_ifa_put(ifp);
     goto restart;
    }
   } else {

    if (time_before(ifp->tstamp + ifp->prefered_lft * HZ, next))
     next = ifp->tstamp + ifp->prefered_lft * HZ;
    spin_unlock(&ifp->lock);
   }
  }
  read_unlock(&addrconf_hash_lock);
 }

 addr_chk_timer.expires = time_before(next, jiffies + HZ) ? jiffies + HZ : next;
 add_timer(&addr_chk_timer);
 spin_unlock_bh(&addrconf_verify_lock);
}
