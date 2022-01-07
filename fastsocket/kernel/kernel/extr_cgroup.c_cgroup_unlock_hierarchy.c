
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroupfs_root {int dummy; } ;
struct cgroup_subsys {int hierarchy_mutex; struct cgroupfs_root* root; } ;


 int CGROUP_SUBSYS_COUNT ;
 int mutex_unlock (int *) ;
 struct cgroup_subsys** subsys ;

__attribute__((used)) static void cgroup_unlock_hierarchy(struct cgroupfs_root *root)
{
 int i;

 for (i = 0; i < CGROUP_SUBSYS_COUNT; i++) {
  struct cgroup_subsys *ss = subsys[i];
  if (ss->root == root)
   mutex_unlock(&ss->hierarchy_mutex);
 }
}
