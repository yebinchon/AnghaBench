
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys {int dummy; } ;
struct cgroup {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int cgroup_add_files (struct cgroup*,struct cgroup_subsys*,int ,int ) ;
 int ss_files ;

__attribute__((used)) static int cgrp_populate(struct cgroup_subsys *ss, struct cgroup *cgrp)
{
 return cgroup_add_files(cgrp, ss, ss_files, ARRAY_SIZE(ss_files));
}
