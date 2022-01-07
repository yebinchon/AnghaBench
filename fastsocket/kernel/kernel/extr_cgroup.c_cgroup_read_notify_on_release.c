
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cgroup {int dummy; } ;
struct cftype {int dummy; } ;


 int notify_on_release (struct cgroup*) ;

__attribute__((used)) static u64 cgroup_read_notify_on_release(struct cgroup *cgrp,
         struct cftype *cft)
{
 return notify_on_release(cgrp);
}
