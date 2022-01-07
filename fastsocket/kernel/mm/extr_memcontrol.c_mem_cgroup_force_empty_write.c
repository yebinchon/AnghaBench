
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int dummy; } ;


 int mem_cgroup_force_empty (int ,int) ;
 int mem_cgroup_from_cont (struct cgroup*) ;

int mem_cgroup_force_empty_write(struct cgroup *cont, unsigned int event)
{
 return mem_cgroup_force_empty(mem_cgroup_from_cont(cont), 1);
}
