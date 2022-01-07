
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cpuset {int dummy; } ;
struct cgroup {int dummy; } ;
struct cftype {int private; } ;
typedef int cpuset_filetype_t ;


 int CS_CPU_EXCLUSIVE ;
 int CS_MEMORY_MIGRATE ;
 int CS_MEM_EXCLUSIVE ;
 int CS_MEM_HARDWALL ;
 int CS_SCHED_LOAD_BALANCE ;
 int CS_SPREAD_PAGE ;
 int CS_SPREAD_SLAB ;
 int EACCES ;
 int EINVAL ;
 int ENODEV ;
 struct cpuset* cgroup_cs (struct cgroup*) ;
 int cgroup_lock_live_group (struct cgroup*) ;
 int cgroup_unlock () ;
 int cpuset_memory_pressure_enabled ;
 int update_flag (int ,struct cpuset*,int ) ;

__attribute__((used)) static int cpuset_write_u64(struct cgroup *cgrp, struct cftype *cft, u64 val)
{
 int retval = 0;
 struct cpuset *cs = cgroup_cs(cgrp);
 cpuset_filetype_t type = cft->private;

 if (!cgroup_lock_live_group(cgrp))
  return -ENODEV;

 switch (type) {
 case 136:
  retval = update_flag(CS_CPU_EXCLUSIVE, cs, val);
  break;
 case 132:
  retval = update_flag(CS_MEM_EXCLUSIVE, cs, val);
  break;
 case 131:
  retval = update_flag(CS_MEM_HARDWALL, cs, val);
  break;
 case 130:
  retval = update_flag(CS_SCHED_LOAD_BALANCE, cs, val);
  break;
 case 135:
  retval = update_flag(CS_MEMORY_MIGRATE, cs, val);
  break;
 case 133:
  cpuset_memory_pressure_enabled = !!val;
  break;
 case 134:
  retval = -EACCES;
  break;
 case 129:
  retval = update_flag(CS_SPREAD_PAGE, cs, val);
  break;
 case 128:
  retval = update_flag(CS_SPREAD_SLAB, cs, val);
  break;
 default:
  retval = -EINVAL;
  break;
 }
 cgroup_unlock();
 return retval;
}
