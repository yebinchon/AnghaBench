
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cgroup {int dummy; } ;
struct cftype {int dummy; } ;


 int EAGAIN ;
 int attach_task_by_pid (struct cgroup*,int ,int) ;

__attribute__((used)) static int cgroup_procs_write(struct cgroup *cgrp, struct cftype *cft, u64 tgid)
{
 int ret;
 do {





  ret = attach_task_by_pid(cgrp, tgid, 1);
 } while (ret == -EAGAIN);
 return ret;
}
