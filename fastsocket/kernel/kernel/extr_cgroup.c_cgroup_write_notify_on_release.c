
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct cgroup {int flags; } ;
struct cftype {int dummy; } ;


 int CGRP_NOTIFY_ON_RELEASE ;
 int CGRP_RELEASABLE ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int cgroup_write_notify_on_release(struct cgroup *cgrp,
       struct cftype *cft,
       u64 val)
{
 clear_bit(CGRP_RELEASABLE, &cgrp->flags);
 if (val)
  set_bit(CGRP_NOTIFY_ON_RELEASE, &cgrp->flags);
 else
  clear_bit(CGRP_NOTIFY_ON_RELEASE, &cgrp->flags);
 return 0;
}
