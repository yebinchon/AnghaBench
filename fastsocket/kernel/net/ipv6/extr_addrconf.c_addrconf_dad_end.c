
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_ifaddr {scalar_t__ dead; } ;


 int ENOENT ;
 scalar_t__ INET6_IFADDR_STATE_DAD ;
 scalar_t__ INET6_IFADDR_STATE_POSTDAD ;
 int ifa_state_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int addrconf_dad_end(struct inet6_ifaddr *ifp)
{
 int err = -ENOENT;

 spin_lock(&ifa_state_lock);
 if (ifp->dead == INET6_IFADDR_STATE_DAD) {
  ifp->dead = INET6_IFADDR_STATE_POSTDAD;
  err = 0;
 }
 spin_unlock(&ifa_state_lock);

 return err;
}
