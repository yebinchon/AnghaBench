
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cgroup {int dummy; } ;
struct cftype {int dummy; } ;


 int attach_task_by_pid (struct cgroup*,int ,int) ;

__attribute__((used)) static int cgroup_tasks_write(struct cgroup *cgrp, struct cftype *cft, u64 pid)
{
 return attach_task_by_pid(cgrp, pid, 0);
}
