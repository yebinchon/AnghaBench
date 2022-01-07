
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int oom_kill_disable; int under_oom; } ;
struct cgroup_map_cb {int (* fill ) (struct cgroup_map_cb*,char*,int) ;} ;
struct cgroup {int dummy; } ;
struct cftype {int dummy; } ;


 scalar_t__ atomic_read (int *) ;
 struct mem_cgroup* mem_cgroup_from_cont (struct cgroup*) ;
 int stub1 (struct cgroup_map_cb*,char*,int) ;
 int stub2 (struct cgroup_map_cb*,char*,int) ;
 int stub3 (struct cgroup_map_cb*,char*,int) ;

__attribute__((used)) static int mem_cgroup_oom_control_read(struct cgroup *cgrp,
 struct cftype *cft, struct cgroup_map_cb *cb)
{
 struct mem_cgroup *mem = mem_cgroup_from_cont(cgrp);

 cb->fill(cb, "oom_kill_disable", mem->oom_kill_disable);

 if (atomic_read(&mem->under_oom))
  cb->fill(cb, "under_oom", 1);
 else
  cb->fill(cb, "under_oom", 0);
 return 0;
}
