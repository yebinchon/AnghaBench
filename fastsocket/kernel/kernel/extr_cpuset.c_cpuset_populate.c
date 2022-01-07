
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys {int dummy; } ;
struct cgroup {int parent; } ;


 int ARRAY_SIZE (int ) ;
 int cft_memory_pressure_enabled ;
 int cgroup_add_file (struct cgroup*,struct cgroup_subsys*,int *) ;
 int cgroup_add_files (struct cgroup*,struct cgroup_subsys*,int ,int ) ;
 int files ;

__attribute__((used)) static int cpuset_populate(struct cgroup_subsys *ss, struct cgroup *cont)
{
 int err;

 err = cgroup_add_files(cont, ss, files, ARRAY_SIZE(files));
 if (err)
  return err;

 if (!cont->parent)
  err = cgroup_add_file(cont, ss,
          &cft_memory_pressure_enabled);
 return err;
}
