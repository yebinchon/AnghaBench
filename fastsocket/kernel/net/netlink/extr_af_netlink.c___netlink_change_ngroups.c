
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {size_t sk_protocol; } ;
struct netlink_table {unsigned int groups; unsigned long* listeners; } ;
struct listeners_rcu_head {unsigned long* ptr; int rcu_head; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int NLGRPLONGS (unsigned int) ;
 scalar_t__ NLGRPSZ (unsigned int) ;
 int call_rcu (int *,int ) ;
 unsigned long* kzalloc (scalar_t__,int ) ;
 int memcpy (unsigned long*,unsigned long*,scalar_t__) ;
 int netlink_free_old_listeners ;
 struct netlink_table* nl_table ;
 int rcu_assign_pointer (unsigned long*,unsigned long*) ;

int __netlink_change_ngroups(struct sock *sk, unsigned int groups)
{
 unsigned long *listeners, *old = ((void*)0);
 struct listeners_rcu_head *old_rcu_head;
 struct netlink_table *tbl = &nl_table[sk->sk_protocol];

 if (groups < 32)
  groups = 32;

 if (NLGRPSZ(tbl->groups) < NLGRPSZ(groups)) {
  listeners = kzalloc(NLGRPSZ(groups) +
        sizeof(struct listeners_rcu_head),
        GFP_ATOMIC);
  if (!listeners)
   return -ENOMEM;
  old = tbl->listeners;
  memcpy(listeners, old, NLGRPSZ(tbl->groups));
  rcu_assign_pointer(tbl->listeners, listeners);







  old_rcu_head = (void *)(tbl->listeners +
     NLGRPLONGS(tbl->groups));
  old_rcu_head->ptr = old;
  call_rcu(&old_rcu_head->rcu_head, netlink_free_old_listeners);
 }
 tbl->groups = groups;

 return 0;
}
