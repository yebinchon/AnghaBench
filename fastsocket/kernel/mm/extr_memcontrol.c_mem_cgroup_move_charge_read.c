
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct cgroup {int dummy; } ;
struct cftype {int dummy; } ;
struct TYPE_2__ {int move_charge_at_immigrate; } ;


 TYPE_1__* mem_cgroup_from_cont (struct cgroup*) ;

__attribute__((used)) static u64 mem_cgroup_move_charge_read(struct cgroup *cgrp,
     struct cftype *cft)
{
 return mem_cgroup_from_cont(cgrp)->move_charge_at_immigrate;
}
