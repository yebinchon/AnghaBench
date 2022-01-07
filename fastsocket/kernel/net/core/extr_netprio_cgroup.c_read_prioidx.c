
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct cgroup {int dummy; } ;
struct cftype {int dummy; } ;
struct TYPE_2__ {int prioidx; } ;


 TYPE_1__* cgrp_netprio_state (struct cgroup*) ;

__attribute__((used)) static u64 read_prioidx(struct cgroup *cgrp, struct cftype *cft)
{
 return (u64)cgrp_netprio_state(cgrp)->prioidx;
}
