
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys {int dummy; } ;
struct cgroup {int parent; } ;


 int ARRAY_SIZE (int ) ;
 int cgroup_add_files (struct cgroup*,struct cgroup_subsys*,int ,int ) ;
 int files ;

__attribute__((used)) static int freezer_populate(struct cgroup_subsys *ss, struct cgroup *cgroup)
{
 if (!cgroup->parent)
  return 0;
 return cgroup_add_files(cgroup, ss, files, ARRAY_SIZE(files));
}
