
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {struct cgroup* top_cgroup; struct cgroupfs_root* root; } ;
struct cgroupfs_root {int number_of_cgroups; int root_list; int subsys_list; struct cgroup top_cgroup; } ;


 int INIT_LIST_HEAD (int *) ;
 int init_cgroup_housekeeping (struct cgroup*) ;

__attribute__((used)) static void init_cgroup_root(struct cgroupfs_root *root)
{
 struct cgroup *cgrp = &root->top_cgroup;
 INIT_LIST_HEAD(&root->subsys_list);
 INIT_LIST_HEAD(&root->root_list);
 root->number_of_cgroups = 1;
 cgrp->root = root;
 cgrp->top_cgroup = cgrp;
 init_cgroup_housekeeping(cgrp);
}
