
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys_state {int refcnt; struct cgroup* cgroup; } ;
struct cgroup {int flags; } ;


 int CGRP_RELEASABLE ;
 int WARN_ON_ONCE (int) ;
 int atomic_sub_return (int,int *) ;
 int cgroup_wakeup_rmdir_waiter (struct cgroup*) ;
 int check_for_release (struct cgroup*) ;
 scalar_t__ notify_on_release (struct cgroup*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int set_bit (int ,int *) ;

void __css_put(struct cgroup_subsys_state *css, int count)
{
 struct cgroup *cgrp = css->cgroup;
 int val;
 rcu_read_lock();
 val = atomic_sub_return(count, &css->refcnt);
 if (val == 1) {
  if (notify_on_release(cgrp)) {
   set_bit(CGRP_RELEASABLE, &cgrp->flags);
   check_for_release(cgrp);
  }
  cgroup_wakeup_rmdir_waiter(cgrp);
 }
 rcu_read_unlock();
 WARN_ON_ONCE(val < 1);
}
