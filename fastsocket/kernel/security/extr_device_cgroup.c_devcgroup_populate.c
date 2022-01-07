
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys {int dummy; } ;
struct cgroup {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int cgroup_add_files (struct cgroup*,struct cgroup_subsys*,int ,int ) ;
 int dev_cgroup_files ;

__attribute__((used)) static int devcgroup_populate(struct cgroup_subsys *ss,
    struct cgroup *cgroup)
{
 return cgroup_add_files(cgroup, ss, dev_cgroup_files,
     ARRAY_SIZE(dev_cgroup_files));
}
