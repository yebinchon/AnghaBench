
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int const flags; } ;


 int CGRP_NOTIFY_ON_RELEASE ;
 int CGRP_RELEASABLE ;

__attribute__((used)) static int cgroup_is_releasable(const struct cgroup *cgrp)
{
 const int bits =
  (1 << CGRP_RELEASABLE) |
  (1 << CGRP_NOTIFY_ON_RELEASE);
 return (cgrp->flags & bits) == bits;
}
