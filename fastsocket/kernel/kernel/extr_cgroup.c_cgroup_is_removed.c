
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int flags; } ;


 int CGRP_REMOVED ;
 int test_bit (int ,int *) ;

inline int cgroup_is_removed(const struct cgroup *cgrp)
{
 return test_bit(CGRP_REMOVED, &cgrp->flags);
}
