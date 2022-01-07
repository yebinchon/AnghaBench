
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int flags; } ;


 int CGRP_WAIT_ON_RMDIR ;
 int cgroup_rmdir_waitq ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void cgroup_wakeup_rmdir_waiter(struct cgroup *cgrp)
{
 if (unlikely(test_and_clear_bit(CGRP_WAIT_ON_RMDIR, &cgrp->flags)))
  wake_up_all(&cgroup_rmdir_waitq);
}
