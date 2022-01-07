
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int flags; } ;


 int CGRP_NOTIFY_ON_RELEASE ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int notify_on_release(const struct cgroup *cgrp)
{
 return test_bit(CGRP_NOTIFY_ON_RELEASE, &cgrp->flags);
}
