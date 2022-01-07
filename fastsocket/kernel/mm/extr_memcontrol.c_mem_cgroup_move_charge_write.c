
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cgroup {int dummy; } ;
struct cftype {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static int mem_cgroup_move_charge_write(struct cgroup *cgrp,
     struct cftype *cft, u64 val)
{
 return -ENOSYS;
}
