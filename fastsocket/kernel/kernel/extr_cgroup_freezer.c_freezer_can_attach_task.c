
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cgroup {int dummy; } ;


 int EBUSY ;
 scalar_t__ __cgroup_freezing_or_frozen (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int freezer_can_attach_task(struct cgroup *cgrp, struct task_struct *tsk)
{
 rcu_read_lock();
 if (__cgroup_freezing_or_frozen(tsk)) {
  rcu_read_unlock();
  return -EBUSY;
 }
 rcu_read_unlock();
 return 0;
}
