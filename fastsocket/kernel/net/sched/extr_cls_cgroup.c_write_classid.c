
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct cgroup {int dummy; } ;
struct cftype {int dummy; } ;
struct TYPE_2__ {scalar_t__ classid; } ;


 TYPE_1__* cgrp_cls_state (struct cgroup*) ;

__attribute__((used)) static int write_classid(struct cgroup *cgrp, struct cftype *cft, u64 value)
{
 cgrp_cls_state(cgrp)->classid = (u32) value;
 return 0;
}
